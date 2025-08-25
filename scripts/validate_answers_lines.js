#!/usr/bin/env node
/*
  validate_answers_lines.js
  - Scans all .q files in questions/ for lines starting with "Válaszok:"
  - Enforces that such lines contain "Megoldás:" and have exactly two commas
  - Prints violations with file, line number, and reason
  - Exits with non-zero status if any violations are found
*/

const fs = require('fs');
const path = require('path');

const root = process.cwd();
const qDir = path.join(root, 'sql', 'quiz', 'q');

function listQFiles(dir) {
  const entries = fs.readdirSync(dir, { withFileTypes: true });
  const out = [];
  for (const e of entries) {
    if (e.isDirectory()) {
      // Skip the SQL subdir
      if (e.name === 'sql') continue;
      out.push(...listQFiles(path.join(dir, e.name)));
    } else if (e.isFile() && e.name.endsWith('.q')) {
      out.push(path.join(dir, e.name));
    }
  }
  return out;
}

function validateFile(filePath) {
  const content = fs.readFileSync(filePath, 'utf8');
  const lines = content.split(/\r?\n/);
  const issues = [];

  for (let i = 0; i < lines.length; i++) {
    const raw = lines[i];
    const line = raw.trim();
    if (!line.startsWith('Válaszok:')) continue;

    const hasSolution = line.includes('Megoldás:');
    const commaCount = (raw.match(/,/g) || []).length; // count commas in the raw line

    if (!hasSolution || commaCount !== 2) {
      const reasons = [];
      if (!hasSolution) reasons.push('missing "Megoldás:"');
      if (commaCount !== 2) reasons.push(`comma count ${commaCount} != 2`);
      issues.push({ lineNumber: i + 1, line: raw, reasons });
    }
  }

  return issues;
}

function main() {
  if (!fs.existsSync(qDir)) {
    console.error('source directory not found:', qDir);
    process.exit(2);
  }

  const files = listQFiles(qDir);
  let totalIssues = 0;

  for (const f of files) {
    const issues = validateFile(f);
    if (issues.length) {
      console.log(`\nFile: ${path.relative(root, f)} -> ${issues.length} issue(s)`);
      for (const iss of issues) {
        console.log(`  [${iss.lineNumber}] ${iss.reasons.join('; ')}\n    ${iss.line}`);
      }
      totalIssues += issues.length;
    }
  }

  if (totalIssues === 0) {
    console.log('OK: No issues found in Válaszok: lines.');
    process.exit(0);
  } else {
    console.log(`\nSUMMARY: ${totalIssues} issue(s) found across ${files.length} file(s).`);
    process.exit(1);
  }
}

main();
