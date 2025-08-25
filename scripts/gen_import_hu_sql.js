#!/usr/bin/env node
/*
  Generates import_hu.sql from questions/*.q files.
  - Ensures languages ('hu') exists
  - Inserts topics for each file (slug = filename without .q)
  - Inserts questions and answers

  topics schema: (id, language_id, name_hu, name_translated, slug)

  Parsing assumptions for .q format:
  Each question block:
    <question text>\n
    Válaszok: A, B, C. Megoldás: <one of A/B/C>
  Blocks separated by one or more blank lines.
*/

const fs = require('fs');
const path = require('path');

const ROOT = path.resolve(__dirname, '..');
const QUIZ_Q_DIR = path.join(ROOT, 'sql', 'quiz', 'q');
const OUT_DIR = path.join(ROOT, 'sql', 'quiz');

// Map slug -> Hungarian display name (name_hu and name_translated for HU)
const topicNameMap = {
  bulvar: 'bulvár',
  egyeb: 'egyéb',
  elovilag: 'élővilág',
  etel_ital: 'étel-ital',
  film_szinhaz: 'film-színház',
  foldrajz: 'földrajz',
  sport: 'sport',
  tortenelem: 'történelem'
};

function escapeSql(str) {
  return str.replace(/'/g, "''");
}

// Normalize a question for near-duplicate detection
// - lowercase
// - remove surrounding punctuation
// - collapse internal whitespace
// - replace common separators (comma, dash, semicolon, colon) with single space
// - remove quotes
// Note: we intentionally DO NOT remove diacritics to keep Hungarian distinctions,
// but we make punctuation/spacing differences collapse to the same key.
function normalizeQuestion(s) {
  return s
    .toLowerCase()
    .replace(/[\“\”\"\'\`]/g, '') // quotes
    .replace(/[\.,!?]+$/g, '') // trailing punctuation
    .replace(/[,:;\-–—]/g, ' ') // separators to space
    .replace(/\s+/g, ' ') // collapse spaces
    .trim();
}

function readQuestionsFile(filePath) {
  const raw = fs.readFileSync(filePath, 'utf8');
  const lines = raw.split(/\r?\n/);
  const entries = [];
  let pendingQuestion = null;
  const seenQuestions = new Set(); // exact duplicates within the same file
  const seenNormalized = new Map(); // norm -> original (for near duplicates)

  for (let i = 0; i < lines.length; i++) {
    const line = lines[i].trim();
    if (!line) continue; // skip empty

    // If this line contains the answers + solution
    if (/^Válaszok:\s*/.test(line)) {
      if (!pendingQuestion) {
        // No question captured before answers; try to look back to previous non-empty line
        // If not found, skip with warning
        console.warn('WARN: Answers line without preceding question in', path.basename(filePath), 'at line', i + 1);
        continue;
      }
      const m = line.match(/^Válaszok:\s*([^]*?)\.?\s*Megoldás:\s*(.*?)\s*$/);
      if (!m) {
        console.warn('WARN: Could not parse answers line in', path.basename(filePath), 'at line', i + 1, '\n', line);
        pendingQuestion = null;
        continue;
      }
      let answersLine = m[1].trim();
      let solution = m[2].trim();

      // Validation warnings for decimal commas like 7,88 -> recommend 7.88
      const decimalCommaRe = /\b\d{1,3},\d{1,3}\b/;
      if (decimalCommaRe.test(answersLine) || decimalCommaRe.test(solution)) {
        console.warn('WARN: Decimal comma detected; prefer dot. File:', path.basename(filePath));
      }

      // Normalize decimal commas to dots before splitting to avoid splitting numbers like 7,88 into two tokens
      answersLine = answersLine.replace(/(\b\d{1,3}),(\d{1,3}\b)/g, '$1.$2');
      solution = solution.replace(/(\b\d{1,3}),(\d{1,3}\b)/g, '$1.$2');

      const answers = answersLine.split(',').map(s => s.trim()).filter(Boolean);
      if (seenQuestions.has(pendingQuestion)) {
        console.warn('WARN: Duplicate question skipped in', path.basename(filePath), '->', pendingQuestion);
      } else {
        const norm = normalizeQuestion(pendingQuestion);
        const prior = seenNormalized.get(norm);
        if (prior && prior !== pendingQuestion) {
          console.warn('WARN: Nearly the same question skipped in', path.basename(filePath), '->', pendingQuestion, '\n      similar to:', prior);
        } else {
          entries.push({ question: pendingQuestion, answers, solution });
          seenQuestions.add(pendingQuestion);
          if (!seenNormalized.has(norm)) seenNormalized.set(norm, pendingQuestion);
        }
      }
      pendingQuestion = null;
      continue;
    }

    // Otherwise, treat as question line
    pendingQuestion = line;
  }

  return entries;
}

function generateTopicSql(slug, display, entries) {
  let sql = '';
  sql += `-- import_hu_${slug}.sql (generated)\n`;
  // Ensure language exists (separate, idempotent)
  sql += "INSERT INTO languages (code, name) VALUES ('hu','Magyar') ON CONFLICT (code) DO NOTHING;\n";

  // Topic insert (HU)
  sql += `-- Topic: ${slug}\n`;
  sql += `INSERT INTO topics (language_id, name_hu, name_translated, slug)\n` +
         `SELECT l.id, '${escapeSql(display)}', '${escapeSql(display)}', '${escapeSql(slug)}'\n` +
         `FROM languages l WHERE l.code='hu'\n` +
         `ON CONFLICT (slug) DO NOTHING;\n`;

  let idx = 0;
  for (const e of entries) {
    idx++;
    const isBatchStart = ((idx - 1) % 10) === 0; // 1,11,21...
    const isBatchEnd = (idx % 10) === 0 || idx === entries.length; // 10,20,... or last

    if (isBatchStart) {
      sql += 'BEGIN;\n';
    }

    const qText = escapeSql(e.question);
    sql += `-- Q ${idx} in ${slug}\n`;
    sql += `INSERT INTO questions (topic_id, text)\n` +
           `SELECT t.id, '${qText}'\n` +
           `FROM topics t JOIN languages l ON l.id = t.language_id\n` +
           `WHERE l.code='hu' AND t.slug='${escapeSql(slug)}';\n`;

    for (const ans of e.answers) {
      const ansText = escapeSql(ans);
      const isCorrect = (ans.trim() === e.solution.trim()) ? 'TRUE' : 'FALSE';
      sql += `INSERT INTO answers (question_id, text, is_correct)\n` +
             `SELECT q.id, '${ansText}', ${isCorrect}\n` +
             `FROM questions q\n` +
             `JOIN topics t ON t.id = q.topic_id\n` +
             `JOIN languages l ON l.id = t.language_id\n` +
             `WHERE l.code='hu' AND t.slug='${escapeSql(slug)}' AND q.text='${qText}';\n`;
    }

    if (isBatchEnd) {
      sql += 'COMMIT;\n';
    } else {
      // do not add extra blank line between question blocks
    }
  }

  return sql;
}

function main() {
  if (!fs.existsSync(OUT_DIR)) {
    fs.mkdirSync(OUT_DIR, { recursive: true });
  }

  if (!fs.existsSync(QUIZ_Q_DIR)) {
    console.error('Missing source directory:', QUIZ_Q_DIR);
    process.exit(2);
  }

  const files = fs.readdirSync(QUIZ_Q_DIR)
    .filter(f => f.endsWith('.q'))
    .sort();

  const written = [];
  for (const file of files) {
    const slug = path.basename(file, '.q');
    const display = topicNameMap[slug] || slug.replace(/_/g, ' ');
    const entries = readQuestionsFile(path.join(QUIZ_Q_DIR, file));
    const sql = generateTopicSql(slug, display, entries);
    const outPath = path.join(OUT_DIR, `import_hu_${slug}.sql`);
    fs.writeFileSync(outPath, sql, 'utf8');
    written.push(path.relative(ROOT, outPath));
  }

  // Optional: write a simple index file listing generated topics
  const indexPath = path.join(OUT_DIR, 'IMPORT_HU_TOPICS.txt');
  const indexBody = [
    '# Generated per-topic SQL files (HU)',
    ...written.map(p => `- ${p}`),
    '',
    'Futtatás javaslat: témánként külön-külön töltsd be a Supabase SQL Editorban.'
  ].join('\n');
  fs.writeFileSync(indexPath, indexBody, 'utf8');

  console.log('Generated per-topic SQL files:', written.length);
  for (const p of written) console.log(' -', p);
  console.log('Index:', path.relative(ROOT, indexPath));
}

if (require.main === module) {
  main();
}
