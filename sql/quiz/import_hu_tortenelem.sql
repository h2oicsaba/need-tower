-- import_hu_tortenelem.sql (generated)
INSERT INTO languages (code, name) VALUES ('hu','Magyar') ON CONFLICT (code) DO NOTHING;
-- Topic: tortenelem
INSERT INTO topics (language_id, name_hu, name_translated, slug)
SELECT l.id, 'történelem', 'történelem', 'tortenelem'
FROM languages l WHERE l.code='hu'
ON CONFLICT (slug) DO NOTHING;
BEGIN;
-- Q 1 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt István, királlyá koronázása?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1001. jan.1 .', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt István, királlyá koronázása?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1001. jan. 11.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt István, királlyá koronázása?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1001. jan. 21.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt István, királlyá koronázása?';
-- Q 2 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a kenyérmezei csata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1479. október 13-án', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a kenyérmezei csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1467. novenber 5-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a kenyérmezei csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1456. március 18-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a kenyérmezei csata?';
-- Q 3 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kik voltak a Küklopszok a görög mitológiában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egyszemű óriások', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a Küklopszok a görög mitológiában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'félig ember - félig ló alakú lények', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a Küklopszok a görög mitológiában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emberevő óriások', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a Küklopszok a görög mitológiában?';
-- Q 4 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a második honalapító?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Béla', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a második honalapító?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'III. Béla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a második honalapító?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. (Kun) László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a második honalapító?';
-- Q 5 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki fedezte fel a déli sarkkört?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'James Cook', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki fedezte fel a déli sarkkört?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Magellán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki fedezte fel a déli sarkkört?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Marco Polo', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki fedezte fel a déli sarkkört?';
-- Q 6 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikortól lehet Magyarországon öttöslottóval játszani?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1957. márc. 7-től', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikortól lehet Magyarországon öttöslottóval játszani?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1976. jan. 7-től', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikortól lehet Magyarországon öttöslottóval játszani?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1966. okt. 21-től', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikortól lehet Magyarországon öttöslottóval játszani?';
-- Q 7 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor alapították a Pannonhalmi apátságot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '996-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor alapították a Pannonhalmi apátságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '998-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor alapították a Pannonhalmi apátságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '976-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor alapították a Pannonhalmi apátságot?';
-- Q 8 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, '1995-ben ki volt az USA elnöke?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George W. Bush', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='1995-ben ki volt az USA elnöke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ronald Reagan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='1995-ben ki volt az USA elnöke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bill Clinton', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='1995-ben ki volt az USA elnöke?';
-- Q 9 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Hunyadi Mátyás anyja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Morzsinai Erzsébet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Hunyadi Mátyás anyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szilágyi Erzsébet', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Hunyadi Mátyás anyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Anjou Mária', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Hunyadi Mátyás anyja?';
-- Q 10 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kik voltak a tatárok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mongolok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a tatárok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'törökök', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a tatárok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pogányok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a tatárok?';
COMMIT;
BEGIN;
-- Q 11 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Dzsingisz kán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kínai császár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Dzsingisz kán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mongol császár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Dzsingisz kán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mongol hadvezér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Dzsingisz kán?';
-- Q 12 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol dolgozott a molnár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kórházban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol dolgozott a molnár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'malomban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol dolgozott a molnár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyárban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol dolgozott a molnár?';
-- Q 13 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mióta Barack Obama az USA elnöke?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mióta Barack Obama az USA elnöke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2008', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mióta Barack Obama az USA elnöke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2009', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mióta Barack Obama az USA elnöke?';
-- Q 14 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Orpheusz felesége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eurüdiké', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Orpheusz felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Élektra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Orpheusz felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pénelopé', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Orpheusz felesége?';
-- Q 15 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik háborúban volt a Barbadossa hadművelet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'második világháború', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik háborúban volt a Barbadossa hadművelet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'első világháború', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik háborúban volt a Barbadossa hadművelet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'százéves háború', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik háborúban volt a Barbadossa hadművelet?';
-- Q 16 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Szókratész?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'görög filozófus', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Szókratész?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'görög történetíró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Szókratész?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'görög hadvezér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Szókratész?';
-- Q 17 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor gyártották az első Trabantot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1960-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor gyártották az első Trabantot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1957-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor gyártották az első Trabantot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1972-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor gyártották az első Trabantot?';
-- Q 18 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Rózsa Sándor?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'betyár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Rózsa Sándor?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'költő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Rózsa Sándor?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'színész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Rózsa Sándor?';
-- Q 19 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki az uralkodó Spanyolországban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'VII. Béla király', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki az uralkodó Spanyolországban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'VI. Fülöp király', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki az uralkodó Spanyolországban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'VI. András király', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki az uralkodó Spanyolországban?';
-- Q 20 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki látható az 1000 Ft-os bankjegyen?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Deák Ferenc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki látható az 1000 Ft-os bankjegyen?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Széchenyi István', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki látható az 1000 Ft-os bankjegyen?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mátyás király', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki látható az 1000 Ft-os bankjegyen?';
COMMIT;
BEGIN;
-- Q 21 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor vezették be a forintot Magyarországon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1946. augusztus 1.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vezették be a forintot Magyarországon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1956. július 21.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vezették be a forintot Magyarországon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1971. szeptember 12.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vezették be a forintot Magyarországon?';
-- Q 22 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor indult meg az első pesti lóvasút?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1876. augusztus 11-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor indult meg az első pesti lóvasút?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1866. augusztus 1-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor indult meg az első pesti lóvasút?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1912. november 23-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor indult meg az első pesti lóvasút?';
-- Q 23 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt az USA első elnöke?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Thomas Jefferson', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az USA első elnöke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George Washington', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az USA első elnöke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Abraham Lincoln', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az USA első elnöke?';
-- Q 24 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a ragadványneve Mátyás királynak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a becsületes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt a ragadványneve Mátyás királynak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'az igazságos', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt a ragadványneve Mátyás királynak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a nagyravágyó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt a ragadványneve Mátyás királynak?';
-- Q 25 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik régi bankjegyen volt látható Kossuth Lajos?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '100 Ft-os', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik régi bankjegyen volt látható Kossuth Lajos?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20 Ft-os', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik régi bankjegyen volt látható Kossuth Lajos?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50 Ft-os', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik régi bankjegyen volt látható Kossuth Lajos?';
-- Q 26 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a kalapos király?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. József', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a kalapos király?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. József', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a kalapos király?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Károly', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a kalapos király?';
-- Q 27 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Szombahely ókori latin neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Solva', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Szombahely ókori latin neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Savaria', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Szombahely ókori latin neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arrabona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Szombahely ókori latin neve?';
-- Q 28 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a mohácsi csata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1526. aug. 29-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a mohácsi csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1526. máj. 15-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a mohácsi csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1527. ápr. 2-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a mohácsi csata?';
-- Q 29 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol mutatták be először Az Operaház fantomja c. musicalt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol mutatták be először Az Operaház fantomja c. musicalt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Milánóban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol mutatták be először Az Operaház fantomja c. musicalt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol mutatták be először Az Operaház fantomja c. musicalt?';
-- Q 30 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik vár kapitánya volt Dobó István?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'budai', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik vár kapitánya volt Dobó István?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egri', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik vár kapitánya volt Dobó István?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szigetvári', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik vár kapitánya volt Dobó István?';
COMMIT;
BEGIN;
-- Q 31 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor nyílt meg a Népstadion Budapesten?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1953. augusztus 20-án', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor nyílt meg a Népstadion Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1954. augusztus 20-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor nyílt meg a Népstadion Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1950. augusztus 20-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor nyílt meg a Népstadion Budapesten?';
-- Q 32 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol őrzik a Szent Jobbot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Országházban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol őrzik a Szent Jobbot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent István-bazilikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol őrzik a Szent Jobbot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mátyás-templonban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol őrzik a Szent Jobbot?';
-- Q 33 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen magas a Szent István-bazilika?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '112 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen magas a Szent István-bazilika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '87 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen magas a Szent István-bazilika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '96 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen magas a Szent István-bazilika?';
-- Q 34 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Szent István király felesége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sarolta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Szent István király felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gizella', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Szent István király felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Réka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Szent István király felesége?';
-- Q 35 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem a koronázási jelvények közé tartozik?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'országzászló', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik nem a koronázási jelvények közé tartozik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent Korona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik nem a koronázási jelvények közé tartozik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'országalma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik nem a koronázási jelvények közé tartozik?';
-- Q 36 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik fejedelmünk anyja Zrínyi Ilona?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Báthory István', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik fejedelmünk anyja Zrínyi Ilona?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Thököly Imre', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik fejedelmünk anyja Zrínyi Ilona?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. Rákóczi Ferenc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik fejedelmünk anyja Zrínyi Ilona?';
-- Q 37 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki az uralkodó az Egyesült Királyságban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. Erzsébet királynő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki az uralkodó az Egyesült Királyságban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. Erzsébet királynő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki az uralkodó az Egyesült Királyságban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Viktória királynő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki az uralkodó az Egyesült Királyságban?';
-- Q 38 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke született Károly Walesi hercegnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány gyermeke született Károly Walesi hercegnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány gyermeke született Károly Walesi hercegnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kettő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány gyermeke született Károly Walesi hercegnek?';
-- Q 39 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Oliver Cromwell?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol hadvezér', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Oliver Cromwell?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'francia tábornok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Oliver Cromwell?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'amerikai politikus', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Oliver Cromwell?';
-- Q 40 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor vezették be az eurót?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1999-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vezették be az eurót?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vezették be az eurót?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1996-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vezették be az eurót?';
COMMIT;
BEGIN;
-- Q 41 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai állam kormányzója Arnold Schwarzenegger?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kalifornia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik amerikai állam kormányzója Arnold Schwarzenegger?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kansas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik amerikai állam kormányzója Arnold Schwarzenegger?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Minnesota', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik amerikai állam kormányzója Arnold Schwarzenegger?';
-- Q 42 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Sisi császárnő teljes neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Wittelsbach Erzsébet', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Sisi császárnő teljes neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Miksa Erzsébet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Sisi császárnő teljes neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ferenc Erzsébet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Sisi császárnő teljes neve?';
-- Q 43 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Grassalkovich-kastély?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gödöllőn', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol látható a Grassalkovich-kastély?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Keszthelyen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol látható a Grassalkovich-kastély?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gyulán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol látható a Grassalkovich-kastély?';
-- Q 44 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a régi Inka Birodalom központja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Peru', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt a régi Inka Birodalom központja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bolívia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt a régi Inka Birodalom központja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Chile', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt a régi Inka Birodalom központja?';
-- Q 45 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Dánia(Dán királyság)uralkodója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. Margit', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki Dánia(Dán királyság)uralkodója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. Margit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki Dánia(Dán királyság)uralkodója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Mária', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki Dánia(Dán királyság)uralkodója?';
-- Q 46 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Az Assisi Szent Ferenc-bazilikát mikor nyílvánították a Világörökség részévé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Az Assisi Szent Ferenc-bazilikát mikor nyílvánították a Világörökség részévé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2005-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Az Assisi Szent Ferenc-bazilikát mikor nyílvánították a Világörökség részévé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Az Assisi Szent Ferenc-bazilikát mikor nyílvánították a Világörökség részévé?';
-- Q 47 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ádám melyik csontjából lett Éva?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bordájából', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ádám melyik csontjából lett Éva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szegycsontjából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ádám melyik csontjából lett Éva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'medencecsontjából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ádám melyik csontjából lett Éva?';
-- Q 48 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány felesége volt VIII. Henrik angol királynak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hat', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány felesége volt VIII. Henrik angol királynak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyolc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány felesége volt VIII. Henrik angol királynak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány felesége volt VIII. Henrik angol királynak?';
-- Q 49 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hanyadik felesége volt VIII. Henriknek, Boleyn Anna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'második', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hanyadik felesége volt VIII. Henriknek, Boleyn Anna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'negyedik', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hanyadik felesége volt VIII. Henriknek, Boleyn Anna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hatodik', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hanyadik felesége volt VIII. Henriknek, Boleyn Anna?';
-- Q 50 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi történt VIII. Henrik harmadik feleségével?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'meghalt gyermekágyi lázban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi történt VIII. Henrik harmadik feleségével?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kivégeztette', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi történt VIII. Henrik harmadik feleségével?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'elvált tőle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi történt VIII. Henrik harmadik feleségével?';
COMMIT;
BEGIN;
-- Q 51 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki lépte át először a déli sarkkört?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'James Cook', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki lépte át először a déli sarkkört?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Frederick Cook', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki lépte át először a déli sarkkört?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vasco da Gama', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki lépte át először a déli sarkkört?';
-- Q 52 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki követte I. István magyar királyt a trónon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Péter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki követte I. István magyar királyt a trónon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sámuel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki követte I. István magyar királyt a trónon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Salamon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki követte I. István magyar királyt a trónon?';
-- Q 53 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik királyunk nevéhez fűződik az Aranybulla kiadása?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. András', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik királyunk nevéhez fűződik az Aranybulla kiadása?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Béla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik királyunk nevéhez fűződik az Aranybulla kiadása?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'V. István', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik királyunk nevéhez fűződik az Aranybulla kiadása?';
-- Q 54 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a tatárjárás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1241-42', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a tatárjárás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1267-68', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a tatárjárás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1343-44', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a tatárjárás?';
-- Q 55 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt az utolsó magyar király?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Károly', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az utolsó magyar király?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'V. Ferdinánd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az utolsó magyar király?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. Lipót', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az utolsó magyar király?';
-- Q 56 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Mária Terézia fia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. József', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Mária Terézia fia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. József', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Mária Terézia fia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'V. Ferdinánd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Mária Terézia fia?';
-- Q 57 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évig uralkodott I. Ferenc József?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '68 évig', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig uralkodott I. Ferenc József?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '34 évig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig uralkodott I. Ferenc József?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '44 évig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig uralkodott I. Ferenc József?';
-- Q 58 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Thököly Imre házastársa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zrínyi Ilona', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Thököly Imre házastársa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Báthory Zsófia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Thököly Imre házastársa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rákóczi Julianna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Thököly Imre házastársa?';
-- Q 59 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Tomori Pál?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hadvezér', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Tomori Pál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'főispán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Tomori Pál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nádor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Tomori Pál?';
-- Q 60 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem a hét honfoglaló vezér egyike?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kuka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki nem a hét honfoglaló vezér egyike?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Huba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki nem a hét honfoglaló vezér egyike?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Előd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki nem a hét honfoglaló vezér egyike?';
COMMIT;
BEGIN;
-- Q 61 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország királynéja volt Stuart Mária?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország királynéja volt Stuart Mária?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Anglia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország királynéja volt Stuart Mária?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svédország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország királynéja volt Stuart Mária?';
-- Q 62 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor kezdte meg a Magyar Rádió az adását?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1925-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor kezdte meg a Magyar Rádió az adását?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1945-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor kezdte meg a Magyar Rádió az adását?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1965-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor kezdte meg a Magyar Rádió az adását?';
-- Q 63 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt az első felelős magyar kormány igazságügyminisztere?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Deák Ferenc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az első felelős magyar kormány igazságügyminisztere?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szemere Bertalan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az első felelős magyar kormány igazságügyminisztere?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kossuth Lajos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az első felelős magyar kormány igazságügyminisztere?';
-- Q 64 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány aradi vértanu volt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '13', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány aradi vértanu volt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány aradi vértanu volt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány aradi vértanu volt?';
-- Q 65 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Magyarország köztársasági elnöke jelenleg?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Áder János', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki Magyarország köztársasági elnöke jelenleg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kövér László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki Magyarország köztársasági elnöke jelenleg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Schmitt Pál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki Magyarország köztársasági elnöke jelenleg?';
-- Q 66 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban zajlott a rózsák háborúja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Angliában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik országban zajlott a rózsák háborúja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik országban zajlott a rózsák háborúja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik országban zajlott a rózsák háborúja?';
-- Q 67 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a lepantói csata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1571. október 7-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a lepantói csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1675. október 15-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a lepantói csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1564. október 11-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a lepantói csata?';
-- Q 68 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány táblából áll a Gyönyörök kertje c. műalkotás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány táblából áll a Gyönyörök kertje c. műalkotás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány táblából áll a Gyönyörök kertje c. műalkotás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyolc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány táblából áll a Gyönyörök kertje c. műalkotás?';
-- Q 69 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen színű a híres delfti fajansz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen színű a híres delfti fajansz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöld', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen színű a híres delfti fajansz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sárga', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen színű a híres delfti fajansz?';
-- Q 70 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a pszihoanalitikus iskola megalapítója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sigmund Freud', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki a pszihoanalitikus iskola megalapítója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jean-Martin Charcot', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki a pszihoanalitikus iskola megalapítója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Josef Breuer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki a pszihoanalitikus iskola megalapítója?';
COMMIT;
BEGIN;
-- Q 71 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt az evolúcióelmélet kidolgozója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Charles Darwin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az evolúcióelmélet kidolgozója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jean-Baptiste Lamarck', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az evolúcióelmélet kidolgozója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Charles Lyell', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az evolúcióelmélet kidolgozója?';
-- Q 72 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki van az amerikai 100 dolláros bankjegyen?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Benjamin Franklin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki van az amerikai 100 dolláros bankjegyen?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Abraham Lincoln', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki van az amerikai 100 dolláros bankjegyen?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Grover Cleveland', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki van az amerikai 100 dolláros bankjegyen?';
-- Q 73 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor kezdődött pontosan az 1956-os forradalom?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'október 23-án', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor kezdődött pontosan az 1956-os forradalom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'november 14-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor kezdődött pontosan az 1956-os forradalom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'december 1-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor kezdődött pontosan az 1956-os forradalom?';
-- Q 74 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a körmendi csata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1664. július 26–27-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a körmendi csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1526. július 22-23-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a körmendi csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1667. május 12-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a körmendi csata?';
-- Q 75 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt az első magyar enciklopédista?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Apáczai Csere János', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az első magyar enciklopédista?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jókai Mór', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az első magyar enciklopédista?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Berei Andor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az első magyar enciklopédista?';
-- Q 76 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve annak a fegyvernek amivel Jézust megsebezték a kereszten?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Végzet Lándzsája', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi a neve annak a fegyvernek amivel Jézust megsebezték a kereszten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Végzet Fegyvere', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi a neve annak a fegyvernek amivel Jézust megsebezték a kereszten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Szent Kopja', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi a neve annak a fegyvernek amivel Jézust megsebezték a kereszten?';
-- Q 77 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor hozták létre a Magyar Örökség díjat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1995-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor hozták létre a Magyar Örökség díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1998-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor hozták létre a Magyar Örökség díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1991-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor hozták létre a Magyar Örökség díjat?';
-- Q 78 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Vak Bottyán igazi neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bottyán János', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Vak Bottyán igazi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bottyán Béla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Vak Bottyán igazi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bottyán József', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Vak Bottyán igazi neve?';
-- Q 79 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a neve Odüsszeusz feleségének?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pénelopé', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt a neve Odüsszeusz feleségének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pandóra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt a neve Odüsszeusz feleségének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Perszephoné', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt a neve Odüsszeusz feleségének?';
-- Q 80 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a szépség és a szerelem istennője a görög mitológiában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aphrodité', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a szépség és a szerelem istennője a görög mitológiában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Andromeda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a szépség és a szerelem istennője a görög mitológiában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Artemisz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a szépség és a szerelem istennője a görög mitológiában?';
COMMIT;
BEGIN;
-- Q 81 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kik voltak a gigászok a görög mitológiában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szakállas - félig kigyó testű lények', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a gigászok a görög mitológiában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'félig ember - félig ló alakú lények', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a gigászok a görög mitológiában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'félig ember - félig bika alakú lények', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a gigászok a görög mitológiában?';
-- Q 82 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek az ikertestvére volt Artemisz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Apollón', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kinek az ikertestvére volt Artemisz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Adónisz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kinek az ikertestvére volt Artemisz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Antaiosz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kinek az ikertestvére volt Artemisz?';
-- Q 83 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Madách Imre fő műve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Az ember tragédiája', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Madách Imre fő műve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mózes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Madách Imre fő műve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A civilizátor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Madách Imre fő műve?';
-- Q 84 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben kiáltották ki a köztársaságot Magyarországon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1989-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben kiáltották ki a köztársaságot Magyarországon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1986-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben kiáltották ki a köztársaságot Magyarországon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1990-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben kiáltották ki a köztársaságot Magyarországon?';
-- Q 85 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt az 56-os forradalom alatt a Miniszertanács elnöke?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagy Imre', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az 56-os forradalom alatt a Miniszertanács elnöke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kádár János', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az 56-os forradalom alatt a Miniszertanács elnöke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tildy Zoltán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az 56-os forradalom alatt a Miniszertanács elnöke?';
-- Q 86 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Kádár János születéskori neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Czermanik János', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Kádár János születéskori neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagymarosi János', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Kádár János születéskori neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagy János', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Kádár János születéskori neve?';
-- Q 87 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit tart Atlasz a vállán a görög mitológiában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'égboltot', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit tart Atlasz a vállán a görög mitológiában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Földet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit tart Atlasz a vállán a görög mitológiában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hegyet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit tart Atlasz a vállán a görög mitológiában?';
-- Q 88 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a váradi békekötés?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1538. febr. 24-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a váradi békekötés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1657. febr. 13-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a váradi békekötés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1789. aug. 23-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a váradi békekötés?';
-- Q 89 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt II. Rákóczi György?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'erdélyi fejedelem', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt II. Rákóczi György?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'erdélyi vajda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt II. Rákóczi György?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'osztrák főherceg', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt II. Rákóczi György?';
-- Q 90 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a Challenger-katasztrófa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1986. január 28-án', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a Challenger-katasztrófa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1996. január 14-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a Challenger-katasztrófa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1988. február 23-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a Challenger-katasztrófa?';
COMMIT;
BEGIN;
-- Q 91 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki jelenleg Budapest főpolgármestere?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tarlós István', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki jelenleg Budapest főpolgármestere?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Demszky Gábor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki jelenleg Budapest főpolgármestere?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Schmitt Pál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki jelenleg Budapest főpolgármestere?';
-- Q 92 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Zolta a magyar történelemben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Árpád fia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Zolta a magyar történelemben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Árpád unokája', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Zolta a magyar történelemben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Álmos fia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Zolta a magyar történelemben?';
-- Q 93 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki követte II. Andrást a trónon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Béla', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki követte II. Andrást a trónon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'III. László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki követte II. Andrást a trónon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'III. András', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki követte II. Andrást a trónon?';
-- Q 94 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt II. Civakodó Frigyes?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'osztrák herceg', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt II. Civakodó Frigyes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'osztrák császár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt II. Civakodó Frigyes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'német király', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt II. Civakodó Frigyes?';
-- Q 95 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kik találták fel a mozit?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lumiére testvérek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik találták fel a mozit?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Montgolfier-testvérek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik találták fel a mozit?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Wright fivérek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik találták fel a mozit?';
-- Q 96 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor hozták létre a párizsi Disneyland-et?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1992-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor hozták létre a párizsi Disneyland-et?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1998-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor hozták létre a párizsi Disneyland-et?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1978-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor hozták létre a párizsi Disneyland-et?';
-- Q 97 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen származású Kolumbusz Kristóf?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'olasz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen származású Kolumbusz Kristóf?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'svéd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen származású Kolumbusz Kristóf?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'francia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen származású Kolumbusz Kristóf?';
-- Q 98 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a neve Kolumbusz vezérhajójának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Santa Maria', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt a neve Kolumbusz vezérhajójának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Santa Margit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt a neve Kolumbusz vezérhajójának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Santa Monika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt a neve Kolumbusz vezérhajójának?';
-- Q 99 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a squash?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fallabda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi a squash?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'röplabda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi a squash?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyeplabda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi a squash?';
-- Q 100 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány felesége volt Julius Caesarnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány felesége volt Julius Caesarnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány felesége volt Julius Caesarnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány felesége volt Julius Caesarnak?';
COMMIT;
BEGIN;
-- Q 101 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai bankjegy hátoldalán látható a Fehér-ház?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20 dolláros', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik amerikai bankjegy hátoldalán látható a Fehér-ház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10 dolláros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik amerikai bankjegy hátoldalán látható a Fehér-ház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '500 dolláros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik amerikai bankjegy hátoldalán látható a Fehér-ház?';
-- Q 102 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország nemzeti hőse volt Tell Vilmos?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svájc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország nemzeti hőse volt Tell Vilmos?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Norvégia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország nemzeti hőse volt Tell Vilmos?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hollandia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország nemzeti hőse volt Tell Vilmos?';
-- Q 103 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évesen halt meg Bornemissza Gergely?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '29', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évesen halt meg Bornemissza Gergely?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '42', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évesen halt meg Bornemissza Gergely?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '56', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évesen halt meg Bornemissza Gergely?';
-- Q 104 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a bostoni teadélután?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1773.dec.16-án', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a bostoni teadélután?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1873.dec.16-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a bostoni teadélután?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1678.okt.22-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a bostoni teadélután?';
-- Q 105 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország ellen vívták az amerikai függetlenségi háborút?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagy-Britannia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország ellen vívták az amerikai függetlenségi háborút?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Finnország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország ellen vívták az amerikai függetlenségi háborút?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország ellen vívták az amerikai függetlenségi háborút?';
-- Q 106 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt "Az árvízi hajós"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Wesselényi Miklós', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt "Az árvízi hajós"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Széchenyi István', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt "Az árvízi hajós"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Deák Ferenc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt "Az árvízi hajós"?';
-- Q 107 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor van a forint bevezetésének napja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1946. augusztus 1.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor van a forint bevezetésének napja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1956. július 21.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor van a forint bevezetésének napja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1981.szeptember 12.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor van a forint bevezetésének napja?';
-- Q 108 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány tudós nevét örökítettek meg az Eiffel-tornyon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '72', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány tudós nevét örökítettek meg az Eiffel-tornyon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '48', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány tudós nevét örökítettek meg az Eiffel-tornyon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '22', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány tudós nevét örökítettek meg az Eiffel-tornyon?';
-- Q 109 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor adták át a Kisföldalatti Vasutat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1896-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor adták át a Kisföldalatti Vasutat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1996-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor adták át a Kisföldalatti Vasutat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1922-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor adták át a Kisföldalatti Vasutat?';
-- Q 110 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve Erdélyben a répának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'murok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi a neve Erdélyben a répának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cirok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi a neve Erdélyben a répának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'murva', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi a neve Erdélyben a répának?';
COMMIT;
BEGIN;
-- Q 111 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Benyovszki Móric?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'főnemes és utazó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Benyovszki Móric?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'festő és szobrász', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Benyovszki Móric?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'író és költő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Benyovszki Móric?';
-- Q 112 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország elnöke volt Nelson Mandela?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-afrikai Köztársaság', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország elnöke volt Nelson Mandela?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mozambik', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország elnöke volt Nelson Mandela?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zimbabwe', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország elnöke volt Nelson Mandela?';
-- Q 113 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik királyunk lánya volt Árpád-házi Szent Margit?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Béla', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik királyunk lánya volt Árpád-házi Szent Margit?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. István', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik királyunk lánya volt Árpád-házi Szent Margit?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. Károly', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik királyunk lánya volt Árpád-házi Szent Margit?';
-- Q 114 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Aba Sámuel?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. István sógora', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Aba Sámuel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. István fia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Aba Sámuel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. István unokatestvére', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Aba Sámuel?';
-- Q 115 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Bill Gates?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a világ leggazdagabb embere', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki Bill Gates?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'író költő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki Bill Gates?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'énekes színész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki Bill Gates?';
-- Q 116 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi maradt benn Pandora szelencéjében a görög mitológia szerint?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'remény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi maradt benn Pandora szelencéjében a görög mitológia szerint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bánat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi maradt benn Pandora szelencéjében a görög mitológia szerint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'betegség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi maradt benn Pandora szelencéjében a görög mitológia szerint?';
-- Q 117 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke van II. Erzsébet brit királynőnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány gyermeke van II. Erzsébet brit királynőnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány gyermeke van II. Erzsébet brit királynőnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány gyermeke van II. Erzsébet brit királynőnek?';
-- Q 118 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik két csapat között zajlott a verduni csata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'német és francia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik két csapat között zajlott a verduni csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'török és magyar', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik két csapat között zajlott a verduni csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol és német', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik két csapat között zajlott a verduni csata?';
-- Q 119 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor alapították Herendi Porcelánmanufaktúrát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1826-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor alapították Herendi Porcelánmanufaktúrát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1926-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor alapították Herendi Porcelánmanufaktúrát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1867-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor alapították Herendi Porcelánmanufaktúrát?';
-- Q 120 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor írták alá a trianoni békeszerződést?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1920. június 4-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor írták alá a trianoni békeszerződést?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1932. december 18-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor írták alá a trianoni békeszerződést?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1925. november 5-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor írták alá a trianoni békeszerződést?';
COMMIT;
BEGIN;
-- Q 121 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Sisi, osztrák császárné édesapja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Miksa József', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Sisi, osztrák császárné édesapja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ferenc József', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Sisi, osztrák császárné édesapja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Piusz Ágost', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Sisi, osztrák császárné édesapja?';
-- Q 122 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Borromeo Szent Károly?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'olasz bíboros érsek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Borromeo Szent Károly?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jezsuita szerzetes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Borromeo Szent Károly?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'katolikus pap', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Borromeo Szent Károly?';
-- Q 123 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Hitvalló Eduárd?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol király', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Hitvalló Eduárd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol filozófus', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Hitvalló Eduárd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol csillagász', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Hitvalló Eduárd?';
-- Q 124 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a ferences rend megalapítója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Assisi Szent Ferenc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a ferences rend megalapítója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Assisi Szent Klára', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a ferences rend megalapítója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent Domonkos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a ferences rend megalapítója?';
-- Q 125 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek a lánya volt Árpád-házi Szent Erzsébet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. András', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kinek a lánya volt Árpád-házi Szent Erzsébet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Béla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kinek a lánya volt Árpád-házi Szent Erzsébet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'III. László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kinek a lánya volt Árpád-házi Szent Erzsébet?';
-- Q 126 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt az első magyar régésznő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Torma Zsófia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az első magyar régésznő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sass Flóra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az első magyar régésznő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ráskay Lea', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az első magyar régésznő?';
-- Q 127 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Canterburyi Szent Tamás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'canterburyi érsek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Canterburyi Szent Tamás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bíboros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Canterburyi Szent Tamás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'esztergomi érsek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Canterburyi Szent Tamás?';
-- Q 128 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem tartozik a négy evangelista apostolok közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jakab', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki nem tartozik a négy evangelista apostolok közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Márk', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki nem tartozik a négy evangelista apostolok közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'János', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki nem tartozik a négy evangelista apostolok közé?';
-- Q 129 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Széchenyi István édesanyja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Festetics Julianna', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Széchenyi István édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bossányi Julianna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Széchenyi István édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ottlik Julianna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Széchenyi István édesanyja?';
-- Q 130 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évig szolgáltatott áramot az Inotai hőerőmű?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig szolgáltatott áramot az Inotai hőerőmű?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '30', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig szolgáltatott áramot az Inotai hőerőmű?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '60', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig szolgáltatott áramot az Inotai hőerőmű?';
COMMIT;
BEGIN;
-- Q 131 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Vasvári Pál eredeti neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fejér Pál', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Vasvári Pál eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagy Péter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Vasvári Pál eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fogarasi Ottó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Vasvári Pál eredeti neve?';
-- Q 132 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kik voltak a vandálok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'germán nép', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a vandálok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szláv népcsoport', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a vandálok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mór nép', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a vandálok?';
-- Q 133 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a nikolsburgi békeszerződés?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1621.december 31-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a nikolsburgi békeszerződés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1786.december 31-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a nikolsburgi békeszerződés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1897.december 31-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a nikolsburgi békeszerződés?';
-- Q 134 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány európai ország kapott segélyt a Marshall-terv nemzetközi segélyprogram keretében?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '17', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány európai ország kapott segélyt a Marshall-terv nemzetközi segélyprogram keretében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány európai ország kapott segélyt a Marshall-terv nemzetközi segélyprogram keretében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány európai ország kapott segélyt a Marshall-terv nemzetközi segélyprogram keretében?';
-- Q 135 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor vezette be a Magyar Posta az irányítószámok használatát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1973-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vezette be a Magyar Posta az irányítószámok használatát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1975-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vezette be a Magyar Posta az irányítószámok használatát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1978-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vezette be a Magyar Posta az irányítószámok használatát?';
-- Q 136 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki kapta 1979-ben a Nobel-békedíjat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Teréz anya', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki kapta 1979-ben a Nobel-békedíjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dalai láma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki kapta 1979-ben a Nobel-békedíjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nelson Mandela', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki kapta 1979-ben a Nobel-békedíjat?';
-- Q 137 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen nemzetiségű volt Marco Polo?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'velencei', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen nemzetiségű volt Marco Polo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen nemzetiségű volt Marco Polo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ír', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen nemzetiségű volt Marco Polo?';
-- Q 138 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik háborút zárta le a hubertusburgi béke?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hétéves háborút', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik háborút zárta le a hubertusburgi béke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'első világháborút', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik háborút zárta le a hubertusburgi béke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'százéves háborút', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik háborút zárta le a hubertusburgi béke?';
-- Q 139 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évig tartott valójában a százéves háború?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '116', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig tartott valójában a százéves háború?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '105', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig tartott valójában a százéves háború?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '122', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig tartott valójában a százéves háború?';
-- Q 140 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben csatlakozott Magyarország az Európai Unióhoz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2004-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben csatlakozott Magyarország az Európai Unióhoz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2008-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben csatlakozott Magyarország az Európai Unióhoz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2002-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben csatlakozott Magyarország az Európai Unióhoz?';
COMMIT;
BEGIN;
-- Q 141 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a soproni népszavazás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1921-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a soproni népszavazás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1948-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a soproni népszavazás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1956-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a soproni népszavazás?';
-- Q 142 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen rokoni kapcsolatban állt Zeusszal, Artemisz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'édesapja volt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen rokoni kapcsolatban állt Zeusszal, Artemisz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagybátyja volt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen rokoni kapcsolatban állt Zeusszal, Artemisz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'testvére volt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen rokoni kapcsolatban állt Zeusszal, Artemisz?';
-- Q 143 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki követte IV. Bélát a magyar trónon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'V. István', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki követte IV. Bélát a magyar trónon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'V. Béla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki követte IV. Bélát a magyar trónon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki követte IV. Bélát a magyar trónon?';
-- Q 144 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke született Mária Teréziának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '16', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány gyermeke született Mária Teréziának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '11', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány gyermeke született Mária Teréziának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány gyermeke született Mária Teréziának?';
-- Q 145 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évig uralkodott Viktória királynő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '64', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig uralkodott Viktória királynő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '56', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig uralkodott Viktória királynő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '48', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig uralkodott Viktória királynő?';
-- Q 146 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol született Bonaparte Napóleon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Korzikán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol született Bonaparte Napóleon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Krétán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol született Bonaparte Napóleon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Elbán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol született Bonaparte Napóleon?';
-- Q 147 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben volt a nagy londoni tűzvész?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1666-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben volt a nagy londoni tűzvész?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1777-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben volt a nagy londoni tűzvész?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1888-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben volt a nagy londoni tűzvész?';
-- Q 148 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit készítettek a bodnárok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'faedényeket', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit készítettek a bodnárok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kerekeket', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit készítettek a bodnárok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bőrcipőt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit készítettek a bodnárok?';
-- Q 149 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol halt meg Bartók Béla?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New Yorkban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol halt meg Bartók Béla?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Los Angelesben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol halt meg Bartók Béla?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Budapesten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol halt meg Bartók Béla?';
-- Q 150 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor kötötték a Szent Szövetséget?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1815.szeptember 26-án', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor kötötték a Szent Szövetséget?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1789.szeptember 6-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor kötötték a Szent Szövetséget?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1687. január 23-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor kötötték a Szent Szövetséget?';
COMMIT;
BEGIN;
-- Q 151 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor vonták ki a forgalomból Magyarországon az 1 és 2 forintos érméket?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2008-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vonták ki a forgalomból Magyarországon az 1 és 2 forintos érméket?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2009-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vonták ki a forgalomból Magyarországon az 1 és 2 forintos érméket?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2004-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vonták ki a forgalomból Magyarországon az 1 és 2 forintos érméket?';
-- Q 152 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Árpád után ki volt a következő Árpád-házi fejedelem?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zolta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Árpád után ki volt a következő Árpád-házi fejedelem?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Taksony', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Árpád után ki volt a következő Árpád-házi fejedelem?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Géza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Árpád után ki volt a következő Árpád-házi fejedelem?';
-- Q 153 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hanyadik elnöke volt az USA-nak John Fitzgerald Kennedy?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '35.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hanyadik elnöke volt az USA-nak John Fitzgerald Kennedy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '43.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hanyadik elnöke volt az USA-nak John Fitzgerald Kennedy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '22.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hanyadik elnöke volt az USA-nak John Fitzgerald Kennedy?';
-- Q 154 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor nyitották meg a Nyugati pályaudvart?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1877-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor nyitották meg a Nyugati pályaudvart?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1865-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor nyitották meg a Nyugati pályaudvart?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1921-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor nyitották meg a Nyugati pályaudvart?';
-- Q 155 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány múzsa volt a görög mitológiában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '9', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány múzsa volt a görög mitológiában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány múzsa volt a görög mitológiában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '16', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány múzsa volt a görög mitológiában?';
-- Q 156 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor nyitotta meg kaput a párizsi Disneyland?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1992-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor nyitotta meg kaput a párizsi Disneyland?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1998-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor nyitotta meg kaput a párizsi Disneyland?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1986-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor nyitotta meg kaput a párizsi Disneyland?';
-- Q 157 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mettől-meddig tartott az 1848–49-es forradalom és szabadságharc?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1848. március 15.-1849. október 4-ig', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mettől-meddig tartott az 1848–49-es forradalom és szabadságharc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1848. március 1.-1949. november 25-ig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mettől-meddig tartott az 1848–49-es forradalom és szabadságharc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1848. június 15.-1949. október 16-ig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mettől-meddig tartott az 1848–49-es forradalom és szabadságharc?';
-- Q 158 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor vívták a pákozdi csatát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1848. szeptember 29-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vívták a pákozdi csatát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1849. október 1-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vívták a pákozdi csatát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1848. május 14-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor vívták a pákozdi csatát?';
-- Q 159 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Az 1848-as forradalom hanyadik évfordulóján adtak át először Kossuth-díjat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '100.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Az 1848-as forradalom hanyadik évfordulóján adtak át először Kossuth-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Az 1848-as forradalom hanyadik évfordulóján adtak át először Kossuth-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '500.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Az 1848-as forradalom hanyadik évfordulóján adtak át először Kossuth-díjat?';
-- Q 160 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány cm magas a Batthyány-örökmécses?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '180 cm', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány cm magas a Batthyány-örökmécses?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '320 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány cm magas a Batthyány-örökmécses?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '560 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány cm magas a Batthyány-örökmécses?';
COMMIT;
BEGIN;
-- Q 161 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt „a haza bölcse” és „a nemzet prókátora” ?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Deák Ferenc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt „a haza bölcse” és „a nemzet prókátora” ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kossuth Lajos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt „a haza bölcse” és „a nemzet prókátora” ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Széchenyi István', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt „a haza bölcse” és „a nemzet prókátora” ?';
-- Q 162 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kik a számik?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lappok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik a számik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szardíniaiak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik a számik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szlávok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik a számik?';
-- Q 163 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Fa Nándor első hajójának a neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent Jupát', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Fa Nándor első hajójának a neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Santa Maria', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Fa Nándor első hajójának a neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent Anna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Fa Nándor első hajójának a neve?';
-- Q 164 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor alapították a Magyar Vöröskeresztet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1881-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor alapították a Magyar Vöröskeresztet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1867-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor alapították a Magyar Vöröskeresztet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1886-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor alapították a Magyar Vöröskeresztet?';
-- Q 165 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kiknek a nemzeti viselete a kimonó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'japánoknak', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kiknek a nemzeti viselete a kimonó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kínaiaknak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kiknek a nemzeti viselete a kimonó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'indiaiaknak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kiknek a nemzeti viselete a kimonó?';
-- Q 166 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor szűnt meg a Budapesti Vidám Park?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2013-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor szűnt meg a Budapesti Vidám Park?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2015-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor szűnt meg a Budapesti Vidám Park?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2011-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor szűnt meg a Budapesti Vidám Park?';
-- Q 167 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mióta létezik Magyarországon televízió?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1950-es évektől', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mióta létezik Magyarországon televízió?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1930-as évektől', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mióta létezik Magyarországon televízió?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1960-as évektől', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mióta létezik Magyarországon televízió?';
-- Q 168 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai elnök lemondásához vezetett a Watergate-botrány?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Richard Nixon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik amerikai elnök lemondásához vezetett a Watergate-botrány?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jimmy Carter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik amerikai elnök lemondásához vezetett a Watergate-botrány?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ronald Reagan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik amerikai elnök lemondásához vezetett a Watergate-botrány?';
-- Q 169 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az ENSZ székhelye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New York', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi az ENSZ székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Washington', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi az ENSZ székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brüsszel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi az ENSZ székhelye?';
-- Q 170 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mettől-meddig tartott a sztálingrádi csata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1942-43', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mettől-meddig tartott a sztálingrádi csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1958-59', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mettől-meddig tartott a sztálingrádi csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1889-90', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mettől-meddig tartott a sztálingrádi csata?';
COMMIT;
BEGIN;
-- Q 171 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány tanítványa (apostola) volt Jézusnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány tanítványa (apostola) volt Jézusnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '9', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány tanítványa (apostola) volt Jézusnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány tanítványa (apostola) volt Jézusnak?';
-- Q 172 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány ország tagja az ENSZ-nek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '193', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány ország tagja az ENSZ-nek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '154', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány ország tagja az ENSZ-nek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '118', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány ország tagja az ENSZ-nek?';
-- Q 173 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kik voltak a komancsok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'indián törzs', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a komancsok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szláv népcsoport', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a komancsok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'germán népek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a komancsok?';
-- Q 174 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben volt a kenyérmezei csata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1479-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben volt a kenyérmezei csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1526-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben volt a kenyérmezei csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1467-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben volt a kenyérmezei csata?';
-- Q 175 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol született Jézus Krisztus?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Betlehemben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol született Jézus Krisztus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jeruzsálemben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol született Jézus Krisztus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Budapesten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol született Jézus Krisztus?';
-- Q 176 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik bankjegyen látható Mátyás király?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1000 Ft-os', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik bankjegyen látható Mátyás király?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10000 Ft-os', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik bankjegyen látható Mátyás király?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5000 Ft-os', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik bankjegyen látható Mátyás király?';
-- Q 177 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy hívták I. Szulejmán hitvesét?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hürrem', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hogy hívták I. Szulejmán hitvesét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fatma Nur', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hogy hívták I. Szulejmán hitvesét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Raziye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hogy hívták I. Szulejmán hitvesét?';
-- Q 178 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt I. Szent László apja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. Béla', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt I. Szent László apja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Béla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt I. Szent László apja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. István', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt I. Szent László apja?';
-- Q 179 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki az uralkodó Dániában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. Margit', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki az uralkodó Dániában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. Margit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki az uralkodó Dániában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Mária', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki az uralkodó Dániában?';
-- Q 180 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikből állnak a Seuso-kincsek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'díszes étkezési tárgyakból', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikből állnak a Seuso-kincsek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'híres kerámiákból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikből állnak a Seuso-kincsek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'régi pénzérmékből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikből állnak a Seuso-kincsek?';
COMMIT;
BEGIN;
-- Q 181 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mettől-meddig tartott az angol polgári forradalom?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1642-1651-ig', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mettől-meddig tartott az angol polgári forradalom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1786-1798-ig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mettől-meddig tartott az angol polgári forradalom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1586-1611-ig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mettől-meddig tartott az angol polgári forradalom?';
-- Q 182 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a szatmári békekötés?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1711. április 30-án', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a szatmári békekötés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1867. május 24-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a szatmári békekötés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1456. április 12-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a szatmári békekötés?';
-- Q 183 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol őrzik "Lehel kürtjét" ?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jászberényben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol őrzik "Lehel kürtjét" ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kecskeméten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol őrzik "Lehel kürtjét" ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szolnokon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol őrzik "Lehel kürtjét" ?';
-- Q 184 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik királyt tartják Budavár alapítójának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Bélát', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik királyt tartják Budavár alapítójának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'III. Bélát', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik királyt tartják Budavár alapítójának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. Andrást', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik királyt tartják Budavár alapítójának?';
-- Q 185 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Szent Flórián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a tűzoltók védőszentje', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Szent Flórián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a rendőrök védőszentje', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Szent Flórián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a katonák védőszentje', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Szent Flórián?';
-- Q 186 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országból származik a szauna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Finnországból', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik országból származik a szauna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Norvégiából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik országból származik a szauna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dániából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik országból származik a szauna?';
-- Q 187 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor nyílt meg a Ferihegyi Nemzetközi Repülőtér?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1950-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor nyílt meg a Ferihegyi Nemzetközi Repülőtér?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1960-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor nyílt meg a Ferihegyi Nemzetközi Repülőtér?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1970-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor nyílt meg a Ferihegyi Nemzetközi Repülőtér?';
-- Q 188 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a thermopülai csata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'i.e. 480-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a thermopülai csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'i.e. 370-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a thermopülai csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'i.e. 460-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a thermopülai csata?';
-- Q 189 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik háború az alapja a Miss Saigon c. musicalnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vietnami háború', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik háború az alapja a Miss Saigon c. musicalnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'második világháború', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik háború az alapja a Miss Saigon c. musicalnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'koreai háború', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik háború az alapja a Miss Saigon c. musicalnek?';
-- Q 190 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki alapította a tihanyi apátságot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. András király', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki alapította a tihanyi apátságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. István király', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki alapította a tihanyi apátságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. Mátyás király', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki alapította a tihanyi apátságot?';
COMMIT;
BEGIN;
-- Q 191 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol halt meg II. Rákóczi Ferenc?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rodostón', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol halt meg II. Rákóczi Ferenc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vágsellyén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol halt meg II. Rákóczi Ferenc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bécsben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol halt meg II. Rákóczi Ferenc?';
-- Q 192 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országból származik a Szamba tánc?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazíliából', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik országból származik a Szamba tánc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolországból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik országból származik a Szamba tánc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kubából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik országból származik a Szamba tánc?';
-- Q 193 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Jelenleg ki a norvég király?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'V. Harald', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Jelenleg ki a norvég király?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'V. Olaf', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Jelenleg ki a norvég király?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'VII. Haakon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Jelenleg ki a norvég király?';
-- Q 194 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben nyitotta meg kapuit a Groupama Aréna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2014-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben nyitotta meg kapuit a Groupama Aréna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2015-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben nyitotta meg kapuit a Groupama Aréna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben nyitotta meg kapuit a Groupama Aréna?';
-- Q 195 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik fejedelem anyja Zrínyi Ilona?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. Rákóczi Ferenc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik fejedelem anyja Zrínyi Ilona?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Thököly Imre', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik fejedelem anyja Zrínyi Ilona?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Báthory István', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik fejedelem anyja Zrínyi Ilona?';
-- Q 196 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik volt hazánk első nemzeti parkja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hortobágyi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik volt hazánk első nemzeti parkja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aggteleki', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik volt hazánk első nemzeti parkja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Őrségi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik volt hazánk első nemzeti parkja?';
-- Q 197 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor ütközött egy jéghegynek a Titanic?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1912-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor ütközött egy jéghegynek a Titanic?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1945-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor ütközött egy jéghegynek a Titanic?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1897-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor ütközött egy jéghegynek a Titanic?';
-- Q 198 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a Morvamezei-csata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1278-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a Morvamezei-csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1345-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a Morvamezei-csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1256-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a Morvamezei-csata?';
-- Q 199 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt I. Leonidasz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'spártai király', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt I. Leonidasz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'perzsa király', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt I. Leonidasz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'spártai harcos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt I. Leonidasz?';
-- Q 200 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány festményt loptak el 1983-ban a Szépművészeti Múzeumból?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány festményt loptak el 1983-ban a Szépművészeti Múzeumból?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '13', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány festményt loptak el 1983-ban a Szépművészeti Múzeumból?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '22', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány festményt loptak el 1983-ban a Szépművészeti Múzeumból?';
COMMIT;
BEGIN;
-- Q 201 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a "haza bölcse"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Deák Ferenc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a "haza bölcse"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Széchenyi István', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a "haza bölcse"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kossuth Lajos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a "haza bölcse"?';
-- Q 202 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy fáraó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dzsószer', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik egy fáraó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dzsóker', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik egy fáraó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dzsódhpur', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik egy fáraó?';
-- Q 203 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik város védőszentje Szent Miklós?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kecskemét', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik város védőszentje Szent Miklós?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Debrecen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik város védőszentje Szent Miklós?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Miskolc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik város védőszentje Szent Miklós?';
-- Q 204 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a Pearl Harbor-i csata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1941. december 7-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a Pearl Harbor-i csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1945. december 7-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a Pearl Harbor-i csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1964. december 7-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a Pearl Harbor-i csata?';
-- Q 205 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt I.(Szent)István király édesapja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Géza fejedelem', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt I.(Szent)István király édesapja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Taksony fejedelem', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt I.(Szent)István király édesapja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Árpád fejedelem', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt I.(Szent)István király édesapja?';
-- Q 206 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben égett le a Budapest Sportcsarnok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1999-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben égett le a Budapest Sportcsarnok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben égett le a Budapest Sportcsarnok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1987-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben égett le a Budapest Sportcsarnok?';
-- Q 207 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hanyadik évezred van most?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'harmadik', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hanyadik évezred van most?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'második', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hanyadik évezred van most?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'első', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hanyadik évezred van most?';
-- Q 208 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Zeusz apja a görög mitológiában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kronosz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Zeusz apja a görög mitológiában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Poszeidon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Zeusz apja a görög mitológiában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hádész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Zeusz apja a görög mitológiában?';
-- Q 209 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miről kapta nevét a Wartburg autó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy várról', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Miről kapta nevét a Wartburg autó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy városról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Miről kapta nevét a Wartburg autó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy folyóról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Miről kapta nevét a Wartburg autó?';
-- Q 210 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki avatta fel a Sydney-i Operaházat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. Erzsébet királynő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki avatta fel a Sydney-i Operaházat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Barack Obama', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki avatta fel a Sydney-i Operaházat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Viktória királynő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki avatta fel a Sydney-i Operaházat?';
COMMIT;
BEGIN;
-- Q 211 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit készítettek a kádárok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'faedényeket', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit készítettek a kádárok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szekereket', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit készítettek a kádárok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cipőket', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit készítettek a kádárok?';
-- Q 212 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor omlott le a berlini fal?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1989-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor omlott le a berlini fal?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1990-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor omlott le a berlini fal?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1993-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor omlott le a berlini fal?';
-- Q 213 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor jött létre az ENSZ?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1945-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor jött létre az ENSZ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1965-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor jött létre az ENSZ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1956-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor jött létre az ENSZ?';
-- Q 214 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki jelenleg Magyarország köztársasági elnöke?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Áder János', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki jelenleg Magyarország köztársasági elnöke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kövér László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki jelenleg Magyarország köztársasági elnöke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Schmitt Pál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki jelenleg Magyarország köztársasági elnöke?';
-- Q 215 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt az egri vár ostroma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1552-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt az egri vár ostroma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1654-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt az egri vár ostroma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1456-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt az egri vár ostroma?';
-- Q 216 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Bonaparte Napoleon házastársa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mária Lujza', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Bonaparte Napoleon házastársa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mária Klementina', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Bonaparte Napoleon házastársa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mária Karolina', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Bonaparte Napoleon házastársa?';
-- Q 217 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Izsák apja a Bibliában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ábrahám', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Izsák apja a Bibliában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jákob', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Izsák apja a Bibliában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mózes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Izsák apja a Bibliában?';
-- Q 218 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem tartozik a világ hét új csodája közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pantheon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik nem tartozik a világ hét új csodája közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kínai nagy fal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik nem tartozik a világ hét új csodája közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Megváltó Krisztus szobra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik nem tartozik a világ hét új csodája közé?';
-- Q 219 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik király alapította a tihanyi apátságot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. András', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik király alapította a tihanyi apátságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. András', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik király alapította a tihanyi apátságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. Lajos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik király alapította a tihanyi apátságot?';
-- Q 220 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor adták ki az Aranybullát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1222-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor adták ki az Aranybullát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1333-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor adták ki az Aranybullát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1526-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor adták ki az Aranybullát?';
COMMIT;
BEGIN;
-- Q 221 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt az orvostudomány megalapítója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hippokratész', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az orvostudomány megalapítója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szókratész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az orvostudomány megalapítója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Platón', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az orvostudomány megalapítója?';
-- Q 222 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Alföldi Róbert melyik színház igazgatója volt 2008-tól-2013-ig?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nemzeti Színház', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Alföldi Róbert melyik színház igazgatója volt 2008-tól-2013-ig?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madách Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Alföldi Róbert melyik színház igazgatója volt 2008-tól-2013-ig?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Thália Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Alföldi Róbert melyik színház igazgatója volt 2008-tól-2013-ig?';
-- Q 223 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor készítették az első Trabantot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1957-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor készítették az első Trabantot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1965-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor készítették az első Trabantot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1986-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor készítették az első Trabantot?';
-- Q 224 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hanyadik századig tartott a középkor?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '16. századig', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hanyadik századig tartott a középkor?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '14. századig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hanyadik századig tartott a középkor?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '18. századig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hanyadik századig tartott a középkor?';
-- Q 225 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország nem tartozik a visegrádi négyek közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Horvátország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország nem tartozik a visegrádi négyek közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csehország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország nem tartozik a visegrádi négyek közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovákia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország nem tartozik a visegrádi négyek közé?';
-- Q 226 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Minek a rövidítése a NATO?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észak-atlanti Szerződés Szervezete', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Minek a rövidítése a NATO?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Európai Gazdasági Közösség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Minek a rövidítése a NATO?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyesült Nemzetek Szervezete', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Minek a rövidítése a NATO?';
-- Q 227 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem világörökségi helyszín?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tihanyi-félsziget', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik nem világörökségi helyszín?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hollokő-Ófalu', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik nem világörökségi helyszín?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hortobágyi Nemzeti Park', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik nem világörökségi helyszín?';
-- Q 228 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a GDP magyarul?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bruttó hazai termék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit jelent a GDP magyarul?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'teljes hiteldíjmutató', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit jelent a GDP magyarul?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'általános forgalmi adó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit jelent a GDP magyarul?';
-- Q 229 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kik voltak a normannok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'skandináv eredetű nép', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a normannok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'észak-amerikai indián törzs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a normannok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'finnugor nép', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik voltak a normannok?';
-- Q 230 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Mária Terézia uralkodói neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. Mária', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Mária Terézia uralkodói neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Mária', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Mária Terézia uralkodói neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. Mária', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Mária Terézia uralkodói neve?';
COMMIT;
BEGIN;
-- Q 231 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor futott zátonyra a Costa Concordia hajó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2012. január 13-án', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor futott zátonyra a Costa Concordia hajó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2014. január 13-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor futott zátonyra a Costa Concordia hajó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010. január 13-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor futott zátonyra a Costa Concordia hajó?';
-- Q 232 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évig tartott az első világháború?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig tartott az első világháború?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyolc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig tartott az első világháború?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tizenkettő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány évig tartott az első világháború?';
-- Q 233 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik épitmény került be a világ hét új csodája közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Machu Picchu', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik épitmény került be a világ hét új csodája közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eiffel-torony', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik épitmény került be a világ hét új csodája közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Stonehenge', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik épitmény került be a világ hét új csodája közé?';
-- Q 234 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik budapesti szigeten hunyt el Árpád-házi Szent Margit?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Margit-szigeten', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik budapesti szigeten hunyt el Árpád-házi Szent Margit?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csepel-szigeten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik budapesti szigeten hunyt el Árpád-házi Szent Margit?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Óbudai-szigeten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik budapesti szigeten hunyt el Árpád-házi Szent Margit?';
-- Q 235 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor indult útjára a cserkészmozgalom Magyarországon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1910-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor indult útjára a cserkészmozgalom Magyarországon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1890-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor indult útjára a cserkészmozgalom Magyarországon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1940-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor indult útjára a cserkészmozgalom Magyarországon?';
-- Q 236 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány feleségét fejeztetett le VIII. Henrik, angol király?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kettőt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány feleségét fejeztetett le VIII. Henrik, angol király?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négyet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány feleségét fejeztetett le VIII. Henrik, angol király?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egyet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány feleségét fejeztetett le VIII. Henrik, angol király?';
-- Q 237 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki 2013-tól a római pápa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ferenc pápa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki 2013-tól a római pápa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XVI. Benedek pápa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki 2013-tól a római pápa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XII. Piusz pápa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki 2013-tól a római pápa?';
-- Q 238 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit készített a takács?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vászont', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit készített a takács?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cipőt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit készített a takács?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'faedényeket', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mit készített a takács?';
-- Q 239 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány szakaszból állt az angol polgári forradalom?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány szakaszból állt az angol polgári forradalom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hét', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány szakaszból állt az angol polgári forradalom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hány szakaszból állt az angol polgári forradalom?';
-- Q 240 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik uralkodónk latin neve volt Mathias Rex?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. Mátyás király', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik uralkodónk latin neve volt Mathias Rex?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. Szent István', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik uralkodónk latin neve volt Mathias Rex?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Béla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik uralkodónk latin neve volt Mathias Rex?';
COMMIT;
BEGIN;
-- Q 241 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a Casablancai konferencia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1943-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a Casablancai konferencia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1897-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a Casablancai konferencia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1985-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a Casablancai konferencia?';
-- Q 242 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Ausztria az euró bevezetése előtti pénzneme?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'schilling', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Ausztria az euró bevezetése előtti pénzneme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'márka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Ausztria az euró bevezetése előtti pénzneme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'korona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mi volt Ausztria az euró bevezetése előtti pénzneme?';
-- Q 243 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kor előzte meg az ókort?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'őskor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik kor előzte meg az ókort?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'középkor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik kor előzte meg az ókort?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'újkor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik kor előzte meg az ókort?';
-- Q 244 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a magyar jakobinus mozgalom vezére?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Martinovics Ignác', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a magyar jakobinus mozgalom vezére?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hajnóczy József', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a magyar jakobinus mozgalom vezére?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Batsányi János', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt a magyar jakobinus mozgalom vezére?';
-- Q 245 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt az első római császár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Augustus', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az első római császár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tiberius', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az első római császár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nero', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt az első római császár?';
-- Q 246 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a La Manche csatorna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '563 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen hosszú a La Manche csatorna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '123 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen hosszú a La Manche csatorna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '456 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Milyen hosszú a La Manche csatorna?';
-- Q 247 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben kezdődött a kaliforniai aranyláz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1848-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben kezdődött a kaliforniai aranyláz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1967-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben kezdődött a kaliforniai aranyláz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1789-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik évben kezdődött a kaliforniai aranyláz?';
-- Q 248 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Hollandia jelenlegi királya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vilmos Sándor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki Hollandia jelenlegi királya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Beatrix királynő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki Hollandia jelenlegi királya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XVI. Károly Gusztáv', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki Hollandia jelenlegi királya?';
-- Q 249 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Barack Obama elődje az amerikai elnöki székben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George W. Bush', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Barack Obama elődje az amerikai elnöki székben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bill Clinton', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Barack Obama elődje az amerikai elnöki székben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ronald Reagan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Ki volt Barack Obama elődje az amerikai elnöki székben?';
-- Q 250 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kik nem léphetnek be az Athosz-hegyi Köztársaság területére?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nők', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik nem léphetnek be az Athosz-hegyi Köztársaság területére?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'férfiak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik nem léphetnek be az Athosz-hegyi Köztársaság területére?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyerekek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Kik nem léphetnek be az Athosz-hegyi Köztársaság területére?';
COMMIT;
BEGIN;
-- Q 251 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország adta a Szabadság-szobrot az USA-nak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország adta a Szabadság-szobrot az USA-nak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország adta a Szabadság-szobrot az USA-nak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Melyik ország adta a Szabadság-szobrot az USA-nak?';
-- Q 252 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a nagy gazdasági világválság?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1929-33 között', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a nagy gazdasági világválság?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1938-40 között', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a nagy gazdasági világválság?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1945-60 között', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Mikor volt a nagy gazdasági világválság?';
-- Q 253 in tortenelem
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol született Széchenyi István?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bécsben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol született Széchenyi István?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagycenken', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol született Széchenyi István?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Budapesten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='tortenelem' AND q.text='Hol született Széchenyi István?';
COMMIT;
