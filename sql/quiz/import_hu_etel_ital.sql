-- import_hu_etel_ital.sql (generated)
INSERT INTO languages (code, name) VALUES ('hu','Magyar') ON CONFLICT (code) DO NOTHING;
-- Topic: etel_ital
INSERT INTO topics (language_id, name_hu, name_translated, slug)
SELECT l.id, 'étel-ital', 'étel-ital', 'etel_ital'
FROM languages l WHERE l.code='hu'
ON CONFLICT (slug) DO NOTHING;
BEGIN;
-- Q 1 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen alakú a farfalle tészta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szarvacska', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen alakú a farfalle tészta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kagyló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen alakú a farfalle tészta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'masni', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen alakú a farfalle tészta?';
-- Q 2 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen tésztából készül a lángos?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kelt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen tésztából készül a lángos?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'leveles', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen tésztából készül a lángos?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hajtogatott', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen tésztából készül a lángos?';
-- Q 3 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen szeszes ital az abszint?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'whisky', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen szeszes ital az abszint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pálinka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen szeszes ital az abszint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'likőr', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen szeszes ital az abszint?';
-- Q 4 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi nem kell a madártej készítéséhez?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vaj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a madártej készítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tojás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a madártej készítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tej', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a madártej készítéséhez?';
-- Q 5 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen édesség a Pastiera?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'töltött képviselőfánk', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen édesség a Pastiera?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kávés habcsók', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen édesség a Pastiera?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'linzertorta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen édesség a Pastiera?';
-- Q 6 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a tiramisu jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pörgess fel!', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a tiramisu jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Falj fel!', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a tiramisu jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyél meg!', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a tiramisu jelentése?';
-- Q 7 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Kovács Margit múzeum?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Esztergomban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Hol látható a Kovács Margit múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Visegrádon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Hol látható a Kovács Margit múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szentendrén', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Hol látható a Kovács Margit múzeum?';
-- Q 8 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a szekszárdi borvidék legismertebb borfajtája?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szekszárdi bikavér', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a szekszárdi borvidék legismertebb borfajtája?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kadarka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a szekszárdi borvidék legismertebb borfajtája?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'merlot', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a szekszárdi borvidék legismertebb borfajtája?';
-- Q 9 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Pennsylvania állam itala?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tej', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi Pennsylvania állam itala?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi Pennsylvania állam itala?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sör', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi Pennsylvania állam itala?';
-- Q 10 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Csehország étele?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'knédli', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi Csehország étele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pilmenyi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi Csehország étele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pirog', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi Csehország étele?';
COMMIT;
BEGIN;
-- Q 11 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen gyümölcsből készül a bor?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szőlőből', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen gyümölcsből készül a bor?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'narancsból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen gyümölcsből készül a bor?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'banánból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen gyümölcsből készül a bor?';
-- Q 12 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az abszint?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'égetett szesz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi az abszint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'édesség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi az abszint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyümölcsfajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi az abszint?';
-- Q 13 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem fehérborszőlő fajta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zweigelt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik nem fehérborszőlő fajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cserszegi fűszeres', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik nem fehérborszőlő fajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'királyleányka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik nem fehérborszőlő fajta?';
-- Q 14 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik anyag okozza a paprika csípősségét?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kapszaicin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik anyag okozza a paprika csípősségét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kinin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik anyag okozza a paprika csípősségét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kodein', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik anyag okozza a paprika csípősségét?';
-- Q 15 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Zala gyöngye szőlőfajta másik neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egri csillagok 24.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a Zala gyöngye szőlőfajta másik neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egri remete 25.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a Zala gyöngye szőlőfajta másik neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egri szőlő 48.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a Zala gyöngye szőlőfajta másik neve?';
-- Q 16 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Kövidinka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fehérborszőlő fajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a Kövidinka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madár fajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a Kövidinka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gomba fajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a Kövidinka?';
-- Q 17 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen lisztből készül a puliszka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kukoricalisztből', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen lisztből készül a puliszka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rizslisztből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen lisztből készül a puliszka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szójalisztből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen lisztből készül a puliszka?';
-- Q 18 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinensen van Csád?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik kontinensen van Csád?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik kontinensen van Csád?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztrália', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik kontinensen van Csád?';
-- Q 19 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kaviár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halikra', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a kaviár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'haltej', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a kaviár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kagyló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a kaviár?';
-- Q 20 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi nem kell a habkarika elkészítéséhez?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'liszt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a habkarika elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tojás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a habkarika elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cukor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a habkarika elkészítéséhez?';
COMMIT;
BEGIN;
-- Q 21 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi kell a mákos guba elkészítéséhez a mákon kívűl?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tej', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi kell a mákos guba elkészítéséhez a mákon kívűl?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tejföl', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi kell a mákos guba elkészítéséhez a mákon kívűl?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi kell a mákos guba elkészítéséhez a mákon kívűl?';
-- Q 22 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen húsból készül a Cordon bleu?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'borjú', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen húsból készül a Cordon bleu?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sertés', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen húsból készül a Cordon bleu?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csirke', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen húsból készül a Cordon bleu?';
-- Q 23 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen ételt nem lehet enni január 1-én?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'baromfihúst', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen ételt nem lehet enni január 1-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lencsét', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen ételt nem lehet enni január 1-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'paradicsomot', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen ételt nem lehet enni január 1-én?';
-- Q 24 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az uborka népies neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ugorka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi az uborka népies neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ugrika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi az uborka népies neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ubroka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi az uborka népies neve?';
-- Q 25 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek nincs Michelin csillaga?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jamie Oliver', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Kinek nincs Michelin csillaga?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gordon Ramsay', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Kinek nincs Michelin csillaga?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alain Ducasse', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Kinek nincs Michelin csillaga?';
-- Q 26 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miből készül a Sacher-torta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csokoládéból', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a Sacher-torta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dióból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a Sacher-torta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gesztenyéből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a Sacher-torta?';
-- Q 27 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a krampampuli?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alkoholos ital', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a krampampuli?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kutyafajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a krampampuli?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a krampampuli?';
-- Q 28 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit főzött egy magyar férfi az Északi-sarkon, a világon elsőként?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'paprikás csirkét', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mit főzött egy magyar férfi az Északi-sarkon, a világon elsőként?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'paprikás krumplit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mit főzött egy magyar férfi az Északi-sarkon, a világon elsőként?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lecsót', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mit főzött egy magyar férfi az Északi-sarkon, a világon elsőként?';
-- Q 29 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen gyümölcsből készül a calvados?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'almából', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen gyümölcsből készül a calvados?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szilvából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen gyümölcsből készül a calvados?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szőlőből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen gyümölcsből készül a calvados?';
-- Q 30 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország desszertje a panna cotta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik ország desszertje a panna cotta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik ország desszertje a panna cotta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik ország desszertje a panna cotta?';
COMMIT;
BEGIN;
-- Q 31 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miből készül a csokoládé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kakaóbabból', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a csokoládé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cukornádból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a csokoládé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mézből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a csokoládé?';
-- Q 32 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi nem kell a palacsinta készítéséhez?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tejföl', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a palacsinta készítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'liszt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a palacsinta készítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tojás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a palacsinta készítéséhez?';
-- Q 33 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kiről kapta a nevét a Rákóczi túrós nevű sütemény?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rákóczi János(cukrász)', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Kiről kapta a nevét a Rákóczi túrós nevű sütemény?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. Rákóczi Ferenc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Kiről kapta a nevét a Rákóczi túrós nevű sütemény?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rákóczi Zsigmond', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Kiről kapta a nevét a Rákóczi túrós nevű sütemény?';
-- Q 34 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Honnan származik a zakuszka nevű étel?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Örményországból', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Honnan származik a zakuszka nevű étel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csehországból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Honnan származik a zakuszka nevű étel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oroszországból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Honnan származik a zakuszka nevű étel?';
-- Q 35 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen ital a Becherovka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cseh keserűlikör', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen ital a Becherovka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dán köménylikőr', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen ital a Becherovka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'olasz vermut', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen ital a Becherovka?';
-- Q 36 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miből készül a tofu?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szójatejből', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a tofu?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rizstejből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a tofu?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mandulatejből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a tofu?';
-- Q 37 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány Michelin-csillag tulajdonosa Gordon Ramsay?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '16', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Hány Michelin-csillag tulajdonosa Gordon Ramsay?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Hány Michelin-csillag tulajdonosa Gordon Ramsay?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '11', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Hány Michelin-csillag tulajdonosa Gordon Ramsay?';
-- Q 38 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miből készül a guacamole nevű étel?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'avokádóból', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a guacamole nevű étel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'padlizsánból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a guacamole nevű étel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kelbimbóból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a guacamole nevű étel?';
-- Q 39 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miből készül a rum?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cukornádból', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a rum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'árpamalátából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a rum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szőlőből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a rum?';
-- Q 40 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miről kapta a nevét a somlói galuska?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy dombról', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miről kapta a nevét a somlói galuska?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy folyóról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miről kapta a nevét a somlói galuska?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy faluról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miről kapta a nevét a somlói galuska?';
COMMIT;
BEGIN;
-- Q 41 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Rigó János, akiről elnevezték a Rigó Jancsi nevű süteményt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'prímás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Ki volt Rigó János, akiről elnevezték a Rigó Jancsi nevű süteményt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cukrász', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Ki volt Rigó János, akiről elnevezték a Rigó Jancsi nevű süteményt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'étteremtulajdonos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Ki volt Rigó János, akiről elnevezték a Rigó Jancsi nevű süteményt?';
-- Q 42 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kiknek a szent fája a mangófa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'indiaiak', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Kiknek a szent fája a mangófa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mexikóiak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Kiknek a szent fája a mangófa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'argentínek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Kiknek a szent fája a mangófa?';
-- Q 43 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen zöldség kell a Dubbary szelet elkészítéséhez?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'karfiol', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen zöldség kell a Dubbary szelet elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'karalábé', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen zöldség kell a Dubbary szelet elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'padlizsán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen zöldség kell a Dubbary szelet elkészítéséhez?';
-- Q 44 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miből készül a mazsola?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szőlőből', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a mazsola?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'almából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a mazsola?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szilvából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a mazsola?';
-- Q 45 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi nem kell a flódni elkészítéséhez?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'túró', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a flódni elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a flódni elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mák', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a flódni elkészítéséhez?';
-- Q 46 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miből készül a kumisz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kancatejből', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a kumisz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kecsketejből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a kumisz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'juhtejből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a kumisz?';
-- Q 47 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik olasz város a pizza őshazája?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nápoly', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik olasz város a pizza őshazája?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Milánó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik olasz város a pizza őshazája?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Verona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik olasz város a pizza őshazája?';
-- Q 48 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Minek a népies neve a zabszilva?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kökény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Minek a népies neve a zabszilva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'galagonya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Minek a népies neve a zabszilva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'berkenye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Minek a népies neve a zabszilva?';
-- Q 49 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen étel a gumbo?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'amerikai egytálétel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen étel a gumbo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'olasz tésztaféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen étel a gumbo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kínai leves', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen étel a gumbo?';
-- Q 50 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a japánok italának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szaké', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a neve a japánok italának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zsoké', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a neve a japánok italának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szaki', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a neve a japánok italának?';
COMMIT;
BEGIN;
-- Q 51 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miknek a keveréke a fröccs?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bor és szódavíz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miknek a keveréke a fröccs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sör és bor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miknek a keveréke a fröccs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pálinka és szódavíz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miknek a keveréke a fröccs?';
-- Q 52 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány dl bor kell a nagyföccshöz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Hány dl bor kell a nagyföccshöz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Hány dl bor kell a nagyföccshöz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Hány dl bor kell a nagyföccshöz?';
-- Q 53 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen édességet eszünk a Majálisban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vattacukrot', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen édességet eszünk a Majálisban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'somlói galuskát', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen édességet eszünk a Majálisban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'muffint', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen édességet eszünk a Majálisban?';
-- Q 54 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mibe mártjuk az Orly módra készült ételt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sörtésztába', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mibe mártjuk az Orly módra készült ételt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csokikrémbe', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mibe mártjuk az Orly módra készült ételt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sajtszószba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mibe mártjuk az Orly módra készült ételt?';
-- Q 55 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen édességet lehet féláron enni május 8-án?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fagyit', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen édességet lehet féláron enni május 8-án?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rétest', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen édességet lehet féláron enni május 8-án?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kürtöskalácsot', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen édességet lehet féláron enni május 8-án?';
-- Q 56 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinensen őshonos a bab?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik kontinensen őshonos a bab?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik kontinensen őshonos a bab?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik kontinensen őshonos a bab?';
-- Q 57 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen torta a Sacher-torta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csokoládé', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen torta a Sacher-torta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dió', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen torta a Sacher-torta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gesztenye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen torta a Sacher-torta?';
-- Q 58 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miből készül a szaké?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rizsből', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a szaké?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'búzából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a szaké?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'árpából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a szaké?';
-- Q 59 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen ital az Amaretto?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'olasz mandulalikőr', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen ital az Amaretto?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'francia ánizslikőr', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen ital az Amaretto?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ír krémlikőr', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen ital az Amaretto?';
-- Q 60 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a slambuc?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'krumplis tészta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a slambuc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mákos tészta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a slambuc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sajtos tészta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a slambuc?';
COMMIT;
BEGIN;
-- Q 61 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem egy hagymaféle?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'krokodilhagyma', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik nem egy hagymaféle?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'medvehagyma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik nem egy hagymaféle?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kígyóhagyma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik nem egy hagymaféle?';
-- Q 62 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi nem kell a macaron elkészítéséhez?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tejföl', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a macaron elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tojásfehérje', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a macaron elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'porcukor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a macaron elkészítéséhez?';
-- Q 63 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy almafajta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rubinola', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik egy almafajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'stanley', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik egy almafajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'president', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik egy almafajta?';
-- Q 64 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a tortilla?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'étel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a tortilla?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tánc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a tortilla?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ruhadarab', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a tortilla?';
-- Q 65 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen étel a macskanadrág?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rántott tejbegríz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen étel a macskanadrág?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kelt tésztás sütemény', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen étel a macskanadrág?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tojásos lecsó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen étel a macskanadrág?';
-- Q 66 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a guacamole?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mexikói étel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a guacamole?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'argentin tánc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a guacamole?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'perui ital', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi a guacamole?';
-- Q 67 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik gyümölcs másik elnevezése a szamóca?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'eper', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik gyümölcs másik elnevezése a szamóca?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'málna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik gyümölcs másik elnevezése a szamóca?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mangó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Melyik gyümölcs másik elnevezése a szamóca?';
-- Q 68 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen étel a brownie?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'édes sütemény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen étel a brownie?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'leves', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen étel a brownie?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'húsétel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen étel a brownie?';
-- Q 69 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi nem kell a paprikáskrumpli elkészítéséhez?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöldborsó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a paprikáskrumpli elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fűszerpaprika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a paprikáskrumpli elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vöröshagyma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a paprikáskrumpli elkészítéséhez?';
-- Q 70 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen eredetű étel a sztrapacska?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szlovák', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen eredetű étel a sztrapacska?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szerb', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen eredetű étel a sztrapacska?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'orosz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Milyen eredetű étel a sztrapacska?';
COMMIT;
BEGIN;
-- Q 71 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi bor van a sport fröccsben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1 dl', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mennyi bor van a sport fröccsben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2 dl', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mennyi bor van a sport fröccsben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3 dl', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mennyi bor van a sport fröccsben?';
-- Q 72 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miből készül a puliszka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kukoricadarából', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a puliszka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'krumpliból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a puliszka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rizsből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a puliszka?';
-- Q 73 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi szeretett volna lenni Delhusa Gjon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'autófényező', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi szeretett volna lenni Delhusa Gjon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'asztalos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi szeretett volna lenni Delhusa Gjon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ács', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi szeretett volna lenni Delhusa Gjon?';
-- Q 74 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi kell rántás készítéséhez?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'olaj és liszt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi kell rántás készítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tej és liszt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi kell rántás készítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tojás és tej', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi kell rántás készítéséhez?';
-- Q 75 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi nem kell a kókuszgolyó készítéséhez?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oregánó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a kókuszgolyó készítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'keksz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a kókuszgolyó készítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kakaópor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi nem kell a kókuszgolyó készítéséhez?';
-- Q 76 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miből készült a hecsedli lekvár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csipkebogyóból', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készült a hecsedli lekvár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szilvából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készült a hecsedli lekvár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sárgabarackból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készült a hecsedli lekvár?';
-- Q 77 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miből készül a sajt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tejből', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a sajt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tojásból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a sajt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rumból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Miből készül a sajt?';
-- Q 78 in etel_ital
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi kell a frittata elkészítéséhez?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tojás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi kell a frittata elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kakaópor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi kell a frittata elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fahéj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='etel_ital' AND q.text='Mi kell a frittata elkészítéséhez?';
COMMIT;
