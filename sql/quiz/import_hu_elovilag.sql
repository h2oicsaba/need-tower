-- import_hu_elovilag.sql (generated)
INSERT INTO languages (code, name) VALUES ('hu','Magyar') ON CONFLICT (code) DO NOTHING;
-- Topic: elovilag
INSERT INTO topics (language_id, name_hu, name_translated, slug)
SELECT l.id, 'élővilág', 'élővilág', 'elovilag'
FROM languages l WHERE l.code='hu'
ON CONFLICT (slug) DO NOTHING;
BEGIN;
-- Q 1 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol élnek a pingvinek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a déli sarkon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol élnek a pingvinek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'az északi sarkon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol élnek a pingvinek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol élnek a pingvinek?';
-- Q 2 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik családba tartozik a paradicsom?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'burgonyafélék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik családba tartozik a paradicsom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tökfélék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik családba tartozik a paradicsom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pillangósvirágúak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik családba tartozik a paradicsom?';
-- Q 3 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mivel lélegeznek a madarak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tüdővel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mivel lélegeznek a madarak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kopoltyúval', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mivel lélegeznek a madarak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bőrön keresztül', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mivel lélegeznek a madarak?';
-- Q 4 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Az erdei pajzsika melyik rendszertani osztályba tartozik?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'valódi páfrányok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Az erdei pajzsika melyik rendszertani osztályba tartozik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'őspáfrányok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Az erdei pajzsika melyik rendszertani osztályba tartozik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zsurlók', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Az erdei pajzsika melyik rendszertani osztályba tartozik?';
-- Q 5 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az állkapocscsont latin neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mandibula', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az állkapocscsont latin neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'maxilla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az állkapocscsont latin neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'clavicula', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az állkapocscsont latin neve?';
-- Q 6 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik vitamin hiánya okozza az angolkórt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'D-vitamin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik vitamin hiánya okozza az angolkórt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A-vitamin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik vitamin hiánya okozza az angolkórt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'E-vitamin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik vitamin hiánya okozza az angolkórt?';
-- Q 7 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem a kukorica népies neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pityóka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a kukorica népies neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tengeri', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a kukorica népies neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'törökbúza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a kukorica népies neve?';
-- Q 8 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi alapján tájékozódik a delfin?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'visszhang', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi alapján tájékozódik a delfin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ultrahang', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi alapján tájékozódik a delfin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mágneses tér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi alapján tájékozódik a delfin?';
-- Q 9 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem a gólya népi elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cepe', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a gólya népi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gilice', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a gólya népi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gagó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a gólya népi elnevezése?';
-- Q 10 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi az elefántok vemhességi ideje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '22 hónap', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi az elefántok vemhességi ideje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12 hónap', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi az elefántok vemhességi ideje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '9 hónap', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi az elefántok vemhességi ideje?';
COMMIT;
BEGIN;
-- Q 11 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány csigolyából áll a zsiráf nyaka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány csigolyából áll a zsiráf nyaka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '17', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány csigolyából áll a zsiráf nyaka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '27', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány csigolyából áll a zsiráf nyaka?';
-- Q 12 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen magasra nőhet az erdeifenyő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5-10 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen magasra nőhet az erdeifenyő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20-35 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen magasra nőhet az erdeifenyő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50-65 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen magasra nőhet az erdeifenyő?';
-- Q 13 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen belük nincs a medvéknek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'patkóbelük', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen belük nincs a medvéknek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'végbelük', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen belük nincs a medvéknek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vakbelük', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen belük nincs a medvéknek?';
-- Q 14 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány kg súlyú volt a legnagyobb, vadon élt oroszlán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '313 kg', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány kg súlyú volt a legnagyobb, vadon élt oroszlán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '287 kg', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány kg súlyú volt a legnagyobb, vadon élt oroszlán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '186 kg', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány kg súlyú volt a legnagyobb, vadon élt oroszlán?';
-- Q 15 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a szegycsont latin neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'scapula', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a szegycsont latin neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'clavicula', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a szegycsont latin neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sternum', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a szegycsont latin neve?';
-- Q 16 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik növény a sörfőzés alapanyaga?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'árpa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növény a sörfőzés alapanyaga?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lucerna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növény a sörfőzés alapanyaga?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'búza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növény a sörfőzés alapanyaga?';
-- Q 17 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik törzsbe tartozik a búza?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyitvatermők', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik törzsbe tartozik a búza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mohák', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik törzsbe tartozik a búza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zárvatermők', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik törzsbe tartozik a búza?';
-- Q 18 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mivel táplálkozik a lajhár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyümölcsökkel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mivel táplálkozik a lajhár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'levelekkel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mivel táplálkozik a lajhár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fűvel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mivel táplálkozik a lajhár?';
-- Q 19 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a burgonya népies neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pityóka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a burgonya népies neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'málé', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a burgonya népies neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tengeri', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a burgonya népies neve?';
-- Q 20 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a Föld legnagyobb méretű rovara?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'óriás szöcske', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a Föld legnagyobb méretű rovara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'óriás botsáska', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a Föld legnagyobb méretű rovara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alföldi szitakötő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a Föld legnagyobb méretű rovara?';
COMMIT;
BEGIN;
-- Q 21 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a vakond fő tápláléka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'giliszta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a vakond fő tápláléka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rovarok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a vakond fő tápláléka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyümölcsök', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a vakond fő tápláléka?';
-- Q 22 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A görögdinnye melyik családba tartozik?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dinnyefafélék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A görögdinnye melyik családba tartozik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szőlőfélék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A görögdinnye melyik családba tartozik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tökfélék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A görögdinnye melyik családba tartozik?';
-- Q 23 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogyan szaporodik az amőba?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mirtózissal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hogyan szaporodik az amőba?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mitózissal', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hogyan szaporodik az amőba?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mintózissal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hogyan szaporodik az amőba?';
-- Q 24 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol él a koala?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol él a koala?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztráliában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol él a koala?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol él a koala?';
-- Q 25 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a deres tapló?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'műveletlen ember', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a deres tapló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rovarféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a deres tapló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a deres tapló?';
-- Q 26 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a természetben előforduló legkeményebb ásvány?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ametiszt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a természetben előforduló legkeményebb ásvány?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyémánt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a természetben előforduló legkeményebb ásvány?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gránát', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a természetben előforduló legkeményebb ásvány?';
-- Q 27 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Minek az energiáját használják fel az élőlények fotoszintéziskor?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'napfény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Minek az energiáját használják fel az élőlények fotoszintéziskor?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szél', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Minek az energiáját használják fel az élőlények fotoszintéziskor?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Minek az energiáját használják fel az élőlények fotoszintéziskor?';
-- Q 28 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány lába van a póknak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány lába van a póknak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány lába van a póknak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány lába van a póknak?';
-- Q 29 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik törzsbe tartoznak a tengericsillagok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'előgerinchúrosok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik törzsbe tartoznak a tengericsillagok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tüskésbőrűek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik törzsbe tartoznak a tengericsillagok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csalánozók', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik törzsbe tartoznak a tengericsillagok?';
-- Q 30 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit vizsgálnak az EEG-vel?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'agyat', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mit vizsgálnak az EEG-vel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szívet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mit vizsgálnak az EEG-vel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vesét', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mit vizsgálnak az EEG-vel?';
COMMIT;
BEGIN;
-- Q 31 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a bonobó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'majomfaj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a bonobó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a bonobó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllőfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a bonobó?';
-- Q 32 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban népszerű a rambután nevű gyümölcs?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik országban népszerű a rambután nevű gyümölcs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indonéziában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik országban népszerű a rambután nevű gyümölcs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazíliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik országban népszerű a rambután nevű gyümölcs?';
-- Q 33 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található az orsócsont?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kéztőben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található az orsócsont?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alkarban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található az orsócsont?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'felkarban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található az orsócsont?';
-- Q 34 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évig élhet egy óriásteknős?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '150-200 évig', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig élhet egy óriásteknős?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '200-250 évig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig élhet egy óriásteknős?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '100-150 évig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig élhet egy óriásteknős?';
-- Q 35 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mitől narancssárga a répa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alfa karotintól', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mitől narancssárga a répa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'béta karontintól', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mitől narancssárga a répa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gamma karotintól', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mitől narancssárga a répa?';
-- Q 36 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszor erősebb a cápák szemlencséje az embernél?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3x', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hányszor erősebb a cápák szemlencséje az embernél?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10x', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hányszor erősebb a cápák szemlencséje az embernél?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7x', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hányszor erősebb a cápák szemlencséje az embernél?';
-- Q 37 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a tv szó, a tv paprikában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'televízió', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mit jelent a tv szó, a tv paprikában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tölteni való', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mit jelent a tv szó, a tv paprikában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'télire való', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mit jelent a tv szó, a tv paprikában?';
-- Q 38 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi a görögdinnye víztartalma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '90-95 %', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi a görögdinnye víztartalma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '80-85 %', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi a görögdinnye víztartalma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50-60 %', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi a görögdinnye víztartalma?';
-- Q 39 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy hívják az őz nőstényét?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'suta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hogy hívják az őz nőstényét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tehén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hogy hívják az őz nőstényét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szuka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hogy hívják az őz nőstényét?';
-- Q 40 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Honnan származik a napraforgó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Honnan származik a napraforgó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerikából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Honnan származik a napraforgó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észak-Amerikából', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Honnan származik a napraforgó?';
COMMIT;
BEGIN;
-- Q 41 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a gangeszi gaviál?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a gangeszi gaviál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a gangeszi gaviál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a gangeszi gaviál?';
-- Q 42 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország a világ legnagyobb banánexportőre?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Peru', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik ország a világ legnagyobb banánexportőre?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ecuador', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik ország a világ legnagyobb banánexportőre?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Venezuela', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik ország a világ legnagyobb banánexportőre?';
-- Q 43 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi ideig tart az európai mókus vemhessége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '56 nap', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi ideig tart az európai mókus vemhessége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '90 nap', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi ideig tart az európai mókus vemhessége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '38 nap', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi ideig tart az európai mókus vemhessége?';
-- Q 44 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a hím kecskének?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bak', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a neve a hím kecskének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a neve a hím kecskének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a neve a hím kecskének?';
-- Q 45 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem körtefajta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Piros Vilmos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem körtefajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Téli esperes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem körtefajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vista Bella', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem körtefajta?';
-- Q 46 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kik a lajhárok legközelebbi rokonai?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ormányosok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Kik a lajhárok legközelebbi rokonai?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'övesállatok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Kik a lajhárok legközelebbi rokonai?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hangyászok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Kik a lajhárok legközelebbi rokonai?';
-- Q 47 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyénkben termesztik a legtöbb sütőtököt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szabolcs-Szatmár-Bereg', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik megyénkben termesztik a legtöbb sütőtököt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Győr-Moson-Sopron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik megyénkben termesztik a legtöbb sütőtököt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Borsod-Abaúj-Zemplén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik megyénkben termesztik a legtöbb sütőtököt?';
-- Q 48 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány méter hosszú a nagy ámbráscet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány méter hosszú a nagy ámbráscet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány méter hosszú a nagy ámbráscet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány méter hosszú a nagy ámbráscet?';
-- Q 49 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban tisztelték szent növényként a fokhagymát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik országban tisztelték szent növényként a fokhagymát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyiptomban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik országban tisztelték szent növényként a fokhagymát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kenyában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik országban tisztelték szent növényként a fokhagymát?';
-- Q 50 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a fenyőpereszke?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fenyőfajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a fenyőpereszke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a fenyőpereszke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'paprikafajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a fenyőpereszke?';
COMMIT;
BEGIN;
-- Q 51 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mekkora egy mosómedve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '40-55 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mekkora egy mosómedve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '60-95 cm', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mekkora egy mosómedve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '120-140 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mekkora egy mosómedve?';
-- Q 52 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik zöldség nem a brokkoli rokonai közé tartozik?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'karalábé', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik zöldség nem a brokkoli rokonai közé tartozik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'karfiol', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik zöldség nem a brokkoli rokonai közé tartozik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'spárga', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik zöldség nem a brokkoli rokonai közé tartozik?';
-- Q 53 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a rozsomák népies neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'torkosnyúl', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a rozsomák népies neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'torkosborz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a rozsomák népies neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'torkospocok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a rozsomák népies neve?';
-- Q 54 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évig él egy szivárványos pisztráng?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig él egy szivárványos pisztráng?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig él egy szivárványos pisztráng?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig él egy szivárványos pisztráng?';
-- Q 55 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a süvöltő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétéltű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a süvöltő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárféle', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a süvöltő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'farkasféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a süvöltő?';
-- Q 56 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik családba tartozik a galagonya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rózsafélék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik családba tartozik a galagonya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szömörcefélék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik családba tartozik a galagonya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mályvafélék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik családba tartozik a galagonya?';
-- Q 57 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a gyurgyalag másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'királymadár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a gyurgyalag másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'méhészmadár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a gyurgyalag másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tüzesmadár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a gyurgyalag másik elnevezése?';
-- Q 58 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Belgium hivatalos madara?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'búbos banka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi Belgium hivatalos madara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bajszos sármány', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi Belgium hivatalos madara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vörös vércse', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi Belgium hivatalos madara?';
-- Q 59 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik madár volt 2000-ben Az év madara?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kerecsensólyom', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik madár volt 2000-ben Az év madara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'parlagi sas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik madár volt 2000-ben Az év madara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kanalasgém', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik madár volt 2000-ben Az év madara?';
-- Q 60 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a haris?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárféle', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a haris?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a haris?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rovarféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a haris?';
COMMIT;
BEGIN;
-- Q 61 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A haris melyik évben volt Az év madara?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A haris melyik évben volt Az év madara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2013-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A haris melyik évben volt Az év madara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A haris melyik évben volt Az év madara?';
-- Q 62 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a búbos banka népies neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fostos bugybóka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a búbos banka népies neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fostos banka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a búbos banka népies neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fostos búbonyka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a búbos banka népies neve?';
-- Q 63 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem a bölömbika régi neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tavi bika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a bölömbika régi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vízi bika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a bölömbika régi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ökörbika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a bölömbika régi neve?';
-- Q 64 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a tiszavirág?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rovar', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tiszavirág?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növény', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tiszavirág?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tiszavirág?';
-- Q 65 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található az ékcsont?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'agykoponyában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található az ékcsont?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alsó végtagon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található az ékcsont?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fülben(hallócsont)', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található az ékcsont?';
-- Q 66 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem belső elválasztású mirigy?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyálmirigy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem belső elválasztású mirigy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hasnyálmirigy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem belső elválasztású mirigy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pajzsmirigy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem belső elválasztású mirigy?';
-- Q 67 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gramm átlagosan a szív súlya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '250-350 g', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány gramm átlagosan a szív súlya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '100-200 g', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány gramm átlagosan a szív súlya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '450-600 g', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány gramm átlagosan a szív súlya?';
-- Q 68 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány db nyaki csigolyánk van?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány db nyaki csigolyánk van?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány db nyaki csigolyánk van?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány db nyaki csigolyánk van?';
-- Q 69 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az óriáspöfeteg?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az óriáspöfeteg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kigyófajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az óriáspöfeteg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárfajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az óriáspöfeteg?';
-- Q 70 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a szegfűszeg őshazája?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Maluku-szigetek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a szegfűszeg őshazája?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fülöp-szigetek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a szegfűszeg őshazája?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Malayzia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a szegfűszeg őshazája?';
COMMIT;
BEGIN;
-- Q 71 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik növény a Bermuda-fű?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csillagpázsit', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növény a Bermuda-fű?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'orvosi székfű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növény a Bermuda-fű?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'magyar sóvirág', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növény a Bermuda-fű?';
-- Q 72 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem a kamilla másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egérfarkfű', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a kamilla másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szikfű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a kamilla másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bubulyka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a kamilla másik elnevezése?';
-- Q 73 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinensen él a jaguár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinensen él a jaguár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinensen él a jaguár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztrália', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinensen él a jaguár?';
-- Q 74 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány karjuk van a polipoknak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány karjuk van a polipoknak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány karjuk van a polipoknak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány karjuk van a polipoknak?';
-- Q 75 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem egy növényfaj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyurgyalag', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem egy növényfaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'borzas vértő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem egy növényfaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'henye boroszlán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem egy növényfaj?';
-- Q 76 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a gejzír?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'melegvizes forrás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a gejzír?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hidegvizes forrás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a gejzír?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'felszíni vízfolyás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a gejzír?';
-- Q 77 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen csont a holdascsont?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kéztő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen csont a holdascsont?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kézközép', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen csont a holdascsont?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lábtő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen csont a holdascsont?';
-- Q 78 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hova juttatják hormonjaikat a belső elválasztású mirigyek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vérbe', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hova juttatják hormonjaikat a belső elválasztású mirigyek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bőrbe', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hova juttatják hormonjaikat a belső elválasztású mirigyek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyálkahártyára', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hova juttatják hormonjaikat a belső elválasztású mirigyek?';
-- Q 79 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik mirigy termeli az oxitocint?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'agyalapi mirigy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik mirigy termeli az oxitocint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pajzsmirigy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik mirigy termeli az oxitocint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hasnyálmirigy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik mirigy termeli az oxitocint?';
-- Q 80 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az izom latin elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'musculus', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az izom latin elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'abdomen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az izom latin elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hepar', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az izom latin elnevezése?';
COMMIT;
BEGIN;
-- Q 81 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik szerv betegsége a PTX?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tüdő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik szerv betegsége a PTX?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szív', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik szerv betegsége a PTX?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'agy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik szerv betegsége a PTX?';
-- Q 82 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A gége melyik porcát nevezzük ádámcsutkának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pajzsporcot', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A gége melyik porcát nevezzük ádámcsutkának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kannaporcot', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A gége melyik porcát nevezzük ádámcsutkának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyűrűporcot', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A gége melyik porcát nevezzük ádámcsutkának?';
-- Q 83 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány darab háti csigolyánk van?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány darab háti csigolyánk van?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány darab háti csigolyánk van?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '15', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány darab háti csigolyánk van?';
-- Q 84 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol helyezkedik el a gerincvelő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gerinccsatornában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol helyezkedik el a gerincvelő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'agyban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol helyezkedik el a gerincvelő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyúltvelőben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol helyezkedik el a gerincvelő?';
-- Q 85 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen színű a hóbagoly szeme?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sárga', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen színű a hóbagoly szeme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöld', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen színű a hóbagoly szeme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'barna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen színű a hóbagoly szeme?';
-- Q 86 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évig élhet egy királyalbatrosz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '58', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig élhet egy királyalbatrosz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '16', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig élhet egy királyalbatrosz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '44', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig élhet egy királyalbatrosz?';
-- Q 87 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Apollón istennek mi volt a szent madara?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hattyú', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Apollón istennek mi volt a szent madara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gólya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Apollón istennek mi volt a szent madara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'galamb', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Apollón istennek mi volt a szent madara?';
-- Q 88 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinensen él a legtöbb kakadu?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztrália', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinensen él a legtöbb kakadu?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinensen él a legtöbb kakadu?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinensen él a legtöbb kakadu?';
-- Q 89 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik állatra hasonlít a nandu?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'strucc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állatra hasonlít a nandu?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zebra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állatra hasonlít a nandu?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oroszlán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állatra hasonlít a nandu?';
-- Q 90 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kárókatona másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kormorán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kárókatona másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'héja', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kárókatona másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'flamingó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kárókatona másik elnevezése?';
COMMIT;
BEGIN;
-- Q 91 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mitől rózsaszín a flamingó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'garnélarákoktól', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mitől rózsaszín a flamingó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'moszatoktól', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mitől rózsaszín a flamingó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'piros algától', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mitől rózsaszín a flamingó?';
-- Q 92 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat az őszapó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárféle', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat az őszapó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat az őszapó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rágcsáló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat az őszapó?';
-- Q 93 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány tejfoga van egy embernek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány tejfoga van egy embernek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '32', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány tejfoga van egy embernek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '40', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány tejfoga van egy embernek?';
-- Q 94 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik állatot nevezik a tenger kaméleonjának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tintahalat', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állatot nevezik a tenger kaméleonjának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'polipot', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állatot nevezik a tenger kaméleonjának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rákot', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állatot nevezik a tenger kaméleonjának?';
-- Q 95 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány tonna egy kék bálna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '173', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány tonna egy kék bálna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '125', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány tonna egy kék bálna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '98', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány tonna egy kék bálna?';
-- Q 96 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a magyar természetvédelem címermadara?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagy kócsag', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a magyar természetvédelem címermadara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gólya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a magyar természetvédelem címermadara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fecske', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a magyar természetvédelem címermadara?';
-- Q 97 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a fülemüle másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csalogány', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a fülemüle másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cinege', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a fülemüle másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pacsirta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a fülemüle másik elnevezése?';
-- Q 98 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik madár rakja más fészkébe a tojását?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kakukk', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik madár rakja más fészkébe a tojását?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csíz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik madár rakja más fészkébe a tojását?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fecske', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik madár rakja más fészkébe a tojását?';
-- Q 99 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat terjeszti a sárgalázat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szúnyog', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat terjeszti a sárgalázat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cecelégy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat terjeszti a sárgalázat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'darázs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat terjeszti a sárgalázat?';
-- Q 100 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kromoszóma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'DNS molekula', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kromoszóma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'betegség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kromoszóma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emberi szerv', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kromoszóma?';
COMMIT;
BEGIN;
-- Q 101 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány vércsoport létezik?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány vércsoport létezik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány vércsoport létezik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány vércsoport létezik?';
-- Q 102 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen madárnak nevezik a csókát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kéményseprő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen madárnak nevezik a csókát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hangutánzó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen madárnak nevezik a csókát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'erdőkerülő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen madárnak nevezik a csókát?';
-- Q 103 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a barázdabillegető?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a barázdabillegető?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a barázdabillegető?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rovar', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a barázdabillegető?';
-- Q 104 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor tört ki vulkán utoljára a Galápagos-szigeteken?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2005-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mikor tört ki vulkán utoljára a Galápagos-szigeteken?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mikor tört ki vulkán utoljára a Galápagos-szigeteken?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2001-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mikor tört ki vulkán utoljára a Galápagos-szigeteken?';
-- Q 105 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány faja van a lótusznak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kettő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány faja van a lótusznak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tíz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány faja van a lótusznak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'harminc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány faja van a lótusznak?';
-- Q 106 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a bengáli tigris másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'királytigris', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a bengáli tigris másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tengeritigris', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a bengáli tigris másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'medvetigris', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a bengáli tigris másik elnevezése?';
-- Q 107 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a gaur?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlős', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a gaur?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a gaur?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a gaur?';
-- Q 108 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú egy százlábú?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '30 cm', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen hosszú egy százlábú?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '80 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen hosszú egy százlábú?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen hosszú egy százlábú?';
-- Q 109 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mióta természetvédelmi terület a Fővárosi Állat- és Növénykert?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1986', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mióta természetvédelmi terület a Fővárosi Állat- és Növénykert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1990', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mióta természetvédelmi terület a Fővárosi Állat- és Növénykert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1993', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mióta természetvédelmi terület a Fővárosi Állat- és Növénykert?';
-- Q 110 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a ratufa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'királymókus', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a ratufa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'házi egér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a ratufa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fokföldi nyúl', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a ratufa?';
COMMIT;
BEGIN;
-- Q 111 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kedvenc tápláléka az erdei fülesbagolynak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mezei pocok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kedvenc tápláléka az erdei fülesbagolynak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'házi patkány', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kedvenc tápláléka az erdei fülesbagolynak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nutria', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kedvenc tápláléka az erdei fülesbagolynak?';
-- Q 112 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol él a rozmár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Északi-sarkon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol él a rozmár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Déli-sarkon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol él a rozmár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol él a rozmár?';
-- Q 113 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány méter hosszú a kék bálna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '30 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány méter hosszú a kék bálna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '100 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány méter hosszú a kék bálna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '45 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány méter hosszú a kék bálna?';
-- Q 114 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kardszárnyú delfin másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'orka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kardszárnyú delfin másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'borka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kardszárnyú delfin másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rorka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kardszárnyú delfin másik elnevezése?';
-- Q 115 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi lehet a legnagyobb testsúlya egy barna medvének?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '680 kg', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi lehet a legnagyobb testsúlya egy barna medvének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '230 kg', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi lehet a legnagyobb testsúlya egy barna medvének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '450 kg', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi lehet a legnagyobb testsúlya egy barna medvének?';
-- Q 116 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a jegesmedvék fő tápláléka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fóka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a jegesmedvék fő tápláléka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a jegesmedvék fő tápláléka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rozmár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a jegesmedvék fő tápláléka?';
-- Q 117 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol honos a grizzly medve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észak-Amerikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol honos a grizzly medve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-merikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol honos a grizzly medve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol honos a grizzly medve?';
-- Q 118 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a dromedár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egypúpú teve', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a dromedár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'láma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a dromedár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alpaka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a dromedár?';
-- Q 119 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a ma élő legnagyobb macskaféle?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tigris', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a ma élő legnagyobb macskaféle?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oroszlán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a ma élő legnagyobb macskaféle?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jaguár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a ma élő legnagyobb macskaféle?';
-- Q 120 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a fiatal ló elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csikó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a fiatal ló elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csődör', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a fiatal ló elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kanca', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a fiatal ló elnevezése?';
COMMIT;
BEGIN;
-- Q 121 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kiknek a jelképe a havasi gyopár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'női vadászok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Kiknek a jelképe a havasi gyopár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'női katonák', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Kiknek a jelképe a havasi gyopár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'női hegymászók', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Kiknek a jelképe a havasi gyopár?';
-- Q 122 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol honos az avokádó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Közép-Amerikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol honos az avokádó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol honos az avokádó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol honos az avokádó?';
-- Q 123 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a lepketapló?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafaj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a lepketapló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a lepketapló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lepkefaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a lepketapló?';
-- Q 124 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gramm súlyú a lép?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '150-200 g', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány gramm súlyú a lép?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '400-500 g', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány gramm súlyú a lép?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '350-400 g', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány gramm súlyú a lép?';
-- Q 125 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen növényhez hasonlít a vese?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bab', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen növényhez hasonlít a vese?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'borsó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen növényhez hasonlít a vese?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'brokkoli', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen növényhez hasonlít a vese?';
-- Q 126 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinensen őshonos a bab?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinensen őshonos a bab?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinensen őshonos a bab?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinensen őshonos a bab?';
-- Q 127 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a csicseriborsó népies elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bagolyborsó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a csicseriborsó népies elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'királyborsó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a csicseriborsó népies elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'darázsborsó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a csicseriborsó népies elnevezése?';
-- Q 128 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány pár bordája van egy embernek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12 pár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány pár bordája van egy embernek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6 pár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány pár bordája van egy embernek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8 pár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány pár bordája van egy embernek?';
-- Q 129 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a szalamandra?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétéltű', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a szalamandra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a szalamandra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a szalamandra?';
-- Q 130 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány rétegből áll a bőr?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány rétegből áll a bőr?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány rétegből áll a bőr?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány rétegből áll a bőr?';
COMMIT;
BEGIN;
-- Q 131 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évig él egy lazac?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8-10', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig él egy lazac?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3-4', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig él egy lazac?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '15-20', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig él egy lazac?';
-- Q 132 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Loch Ness-i szörny beceneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nessie', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a Loch Ness-i szörny beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jessie', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a Loch Ness-i szörny beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Loki', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a Loch Ness-i szörny beceneve?';
-- Q 133 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évig élhet egy flamingó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig élhet egy flamingó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig élhet egy flamingó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '70', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig élhet egy flamingó?';
-- Q 134 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a pávafarkú salamonpecsét?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növényfaj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a pávafarkú salamonpecsét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'állatfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a pávafarkú salamonpecsét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a pávafarkú salamonpecsét?';
-- Q 135 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen színű a havasi cincér?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen színű a havasi cincér?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sárga', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen színű a havasi cincér?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vörös', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen színű a havasi cincér?';
-- Q 136 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a coboly?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'menyétféle', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a coboly?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a coboly?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halfajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a coboly?';
-- Q 137 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen magas lehet egy olajfa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8-15 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen magas lehet egy olajfa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3-5 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen magas lehet egy olajfa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20-30 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen magas lehet egy olajfa?';
-- Q 138 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a tasman ördög?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'erszényes állat', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tasman ördög?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tasman ördög?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halfajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tasman ördög?';
-- Q 139 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a muréna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halfajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a muréna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárfajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a muréna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlős', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a muréna?';
-- Q 140 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a nőstény lónak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kanca', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a neve a nőstény lónak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tehén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a neve a nőstény lónak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a neve a nőstény lónak?';
COMMIT;
BEGIN;
-- Q 141 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a nadragulya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mérgező növény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a nadragulya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nadrág népiesen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a nadragulya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'állatok csoportja', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a nadragulya?';
-- Q 142 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinensen él a koala?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztráliában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinensen él a koala?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinensen él a koala?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinensen él a koala?';
-- Q 143 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a burgonya másik megnevezése a krumplin kívűl?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pityóka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a burgonya másik megnevezése a krumplin kívűl?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'makóka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a burgonya másik megnevezése a krumplin kívűl?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pityike', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a burgonya másik megnevezése a krumplin kívűl?';
-- Q 144 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen gyümölcs a borfüge?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ribizli', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen gyümölcs a borfüge?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'málna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen gyümölcs a borfüge?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'eper', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen gyümölcs a borfüge?';
-- Q 145 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen madár a totojmász?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'galamb', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen madár a totojmász?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bagoly', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen madár a totojmász?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gólya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen madár a totojmász?';
-- Q 146 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány madárfaj fordul elő Magyarországon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '400', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány madárfaj fordul elő Magyarországon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5000', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány madárfaj fordul elő Magyarországon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '100', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány madárfaj fordul elő Magyarországon?';
-- Q 147 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kígyófélét nevezte régen a népnyelv kurta farkú kígyónak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'keresztes viperát', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kígyófélét nevezte régen a népnyelv kurta farkú kígyónak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kockás pitont', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kígyófélét nevezte régen a népnyelv kurta farkú kígyónak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagy anakondát', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kígyófélét nevezte régen a népnyelv kurta farkú kígyónak?';
-- Q 148 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Honnan származik a sárgarépa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nyugat-Ázsiából', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Honnan származik a sárgarépa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerikából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Honnan származik a sárgarépa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Európából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Honnan származik a sárgarépa?';
-- Q 149 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mik okozzák a lisztharmatot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombák', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mik okozzák a lisztharmatot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'baktériumok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mik okozzák a lisztharmatot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vírusok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mik okozzák a lisztharmatot?';
-- Q 150 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miknek a megnevezése az ázsiai tigrisek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy ázsiai állam', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Miknek a megnevezése az ázsiai tigrisek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öt ázsiai folyó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Miknek a megnevezése az ázsiai tigrisek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hat ázsiai hegység', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Miknek a megnevezése az ázsiai tigrisek?';
COMMIT;
BEGIN;
-- Q 151 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol élnek az anakondák?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol élnek az anakondák?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol élnek az anakondák?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol élnek az anakondák?';
-- Q 152 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a nőstény juh neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jerke', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a nőstény juh neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'koca', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a nőstény juh neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tehén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a nőstény juh neve?';
-- Q 153 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a tengelic?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárfaj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tengelic?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllőfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tengelic?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tengelic?';
-- Q 154 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a korallok másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'virágállatok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a korallok másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bambuszállatok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a korallok másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'királyállatok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a korallok másik elnevezése?';
-- Q 155 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a petymeg?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlős', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a petymeg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétéltű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a petymeg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a petymeg?';
-- Q 156 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A csüllő, melyik madárcsaládba tartozik?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sirályfélék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A csüllő, melyik madárcsaládba tartozik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rigófélék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A csüllő, melyik madárcsaládba tartozik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fecskefélék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A csüllő, melyik madárcsaládba tartozik?';
-- Q 157 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen növény a galagonya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyógynövény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen növény a galagonya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mérgező növény', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen növény a galagonya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyomnövény', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen növény a galagonya?';
-- Q 158 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a rambután?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'majomfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a rambután?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyümölcs', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a rambután?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hangszer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a rambután?';
-- Q 159 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol él a puma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol él a puma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztráliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol él a puma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol él a puma?';
-- Q 160 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik gyümölcs rokona a kökény?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szilva', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik gyümölcs rokona a kökény?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'eper', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik gyümölcs rokona a kökény?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'körte', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik gyümölcs rokona a kökény?';
COMMIT;
BEGIN;
-- Q 161 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Honnan származik a naspolya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Közép-Ázsiából', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Honnan származik a naspolya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Közép-Amerikából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Honnan származik a naspolya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztráliából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Honnan származik a naspolya?';
-- Q 162 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a pomelo?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'déligyümölcs', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a pomelo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyógynövény', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a pomelo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlősállat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a pomelo?';
-- Q 163 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a folyami géb?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halfajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a folyami géb?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllőfajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a folyami géb?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétéltű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a folyami géb?';
-- Q 164 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mekkora a leghosszabb uborka a Guinness Rekordok Könyvében?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '119.38 cm', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mekkora a leghosszabb uborka a Guinness Rekordok Könyvében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '56.78 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mekkora a leghosszabb uborka a Guinness Rekordok Könyvében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '234.56 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mekkora a leghosszabb uborka a Guinness Rekordok Könyvében?';
-- Q 165 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem a puma másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halászmacska', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a puma másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'keguár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a puma másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'festett macska', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a puma másik elnevezése?';
-- Q 166 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik faj a rágcsálók legnagyobb képviselője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vízidisznó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik faj a rágcsálók legnagyobb képviselője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hód', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik faj a rágcsálók legnagyobb képviselője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mormota', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik faj a rágcsálók legnagyobb képviselője?';
-- Q 167 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a gödény másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pelikán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a gödény másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'guvat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a gödény másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gulipán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a gödény másik elnevezése?';
-- Q 168 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik faj nem a gyíkok alrendjébe tartozik?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vipera', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik faj nem a gyíkok alrendjébe tartozik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'agama', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik faj nem a gyíkok alrendjébe tartozik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gekkó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik faj nem a gyíkok alrendjébe tartozik?';
-- Q 169 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a lunda?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a lunda?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlős', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a lunda?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétéltű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a lunda?';
-- Q 170 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik növény másik elnevezése a földialma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'burgonya', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növény másik elnevezése a földialma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tök', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növény másik elnevezése a földialma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cukkini', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növény másik elnevezése a földialma?';
COMMIT;
BEGIN;
-- Q 171 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik gyümölcsre hasonlít a som?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szilva', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik gyümölcsre hasonlít a som?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szőlő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik gyümölcsre hasonlít a som?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik gyümölcsre hasonlít a som?';
-- Q 172 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a bongó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlős', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a bongó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rovar', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a bongó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a bongó?';
-- Q 173 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol élnek az oroszlánok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol élnek az oroszlánok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztráliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol élnek az oroszlánok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél- Amerikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol élnek az oroszlánok?';
-- Q 174 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kiről kapta nevét a Bonaparte-sirály?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy ornitológusról', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Kiről kapta nevét a Bonaparte-sirály?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a francia császárról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Kiről kapta nevét a Bonaparte-sirály?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy városról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Kiről kapta nevét a Bonaparte-sirály?';
-- Q 175 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik madár lett 2017-ben az „Az év madara”?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tengelic', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik madár lett 2017-ben az „Az év madara”?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyurgyalag', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik madár lett 2017-ben az „Az év madara”?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sárgarigó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik madár lett 2017-ben az „Az év madara”?';
-- Q 176 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a tengelic népi elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'stiglic', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tengelic népi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mézesmadár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tengelic népi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'királymadár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tengelic népi elnevezése?';
-- Q 177 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt 2008-ban az „Az év madara”?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kanalasgém', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi volt 2008-ban az „Az év madara”?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'haris', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi volt 2008-ban az „Az év madara”?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'széncinege', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi volt 2008-ban az „Az év madara”?';
-- Q 178 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú egy kacsacsőrű emlős?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50 cm', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen hosszú egy kacsacsőrű emlős?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '80 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen hosszú egy kacsacsőrű emlős?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen hosszú egy kacsacsőrű emlős?';
-- Q 179 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a puma másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hegyi oroszlán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a puma másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hegyi tigris', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a puma másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'barlangi oroszlán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a puma másik elnevezése?';
-- Q 180 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a szervál?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'macskaféle', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a szervál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a szervál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a szervál?';
COMMIT;
BEGIN;
-- Q 181 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik állat lett 2017-ben az év emlőse?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mogyorós pele', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat lett 2017-ben az év emlőse?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'keleti sün', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat lett 2017-ben az év emlőse?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ürge', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat lett 2017-ben az év emlőse?';
-- Q 182 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik osztályba tartoznak a delfinek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlősök', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik osztályba tartoznak a delfinek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'porcos halak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik osztályba tartoznak a delfinek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csontos halak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik osztályba tartoznak a delfinek?';
-- Q 183 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik gomba mérgező?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'légyölő galóca', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik gomba mérgező?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fenyőpereszke', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik gomba mérgező?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'erdei szegfűgomba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik gomba mérgező?';
-- Q 184 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az Egyesült Államok nemzeti állata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fehérfejű rétisas', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az Egyesült Államok nemzeti állata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oroszlán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az Egyesült Államok nemzeti állata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'főnix', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az Egyesült Államok nemzeti állata?';
-- Q 185 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem mérgező növény?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fehér üröm', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem mérgező növény?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'borostyán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem mérgező növény?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'boroszlán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem mérgező növény?';
-- Q 186 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy hívják faluhelyen a mókust?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'evet', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hogy hívják faluhelyen a mókust?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'musi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hogy hívják faluhelyen a mókust?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'veti', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hogy hívják faluhelyen a mókust?';
-- Q 187 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat az arapaima?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halfajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat az arapaima?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllőfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat az arapaima?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat az arapaima?';
-- Q 188 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány csontja van egy újszülöttnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '270 db', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány csontja van egy újszülöttnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '220 db', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány csontja van egy újszülöttnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '300 db', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány csontja van egy újszülöttnek?';
-- Q 189 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Steve Irwin, ausztrál természettudós beceneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Krokodilvadász', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi volt Steve Irwin, ausztrál természettudós beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oroszlánvadász', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi volt Steve Irwin, ausztrál természettudós beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fókakutató', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi volt Steve Irwin, ausztrál természettudós beceneve?';
-- Q 190 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a neve a világ első klónozott emlősének?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dolly', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi volt a neve a világ első klónozott emlősének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Molly', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi volt a neve a világ első klónozott emlősének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gina', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi volt a neve a világ első klónozott emlősének?';
COMMIT;
BEGIN;
-- Q 191 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen alakú a gyöngybagoly arca?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szív', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen alakú a gyöngybagoly arca?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csillag', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen alakú a gyöngybagoly arca?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'felhő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen alakú a gyöngybagoly arca?';
-- Q 192 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen iker állatbébik születtek nemrég a budapesti állatkertben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zsiráfok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen iker állatbébik születtek nemrég a budapesti állatkertben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zebrák', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen iker állatbébik születtek nemrég a budapesti állatkertben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kenguruk', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen iker állatbébik születtek nemrég a budapesti állatkertben?';
-- Q 193 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország a legnagyobb burgonyafogyasztó a világon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kína', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik ország a legnagyobb burgonyafogyasztó a világon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oroszország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik ország a legnagyobb burgonyafogyasztó a világon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'USA', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik ország a legnagyobb burgonyafogyasztó a világon?';
-- Q 194 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik hal lett 2017-ben az év hala?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'harcsa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik hal lett 2017-ben az év hala?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ponty', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik hal lett 2017-ben az év hala?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csuka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik hal lett 2017-ben az év hala?';
-- Q 195 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mióta védett növény a hóvirág?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2005 óta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mióta védett növény a hóvirág?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000 óta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mióta védett növény a hóvirág?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2008 óta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mióta védett növény a hóvirág?';
-- Q 196 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a mangó őshazája?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'India', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a mangó őshazája?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Japán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a mangó őshazája?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indonézia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a mangó őshazája?';
-- Q 197 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a padlizsán másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tojásgyümölcs', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a padlizsán másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tojásparadicsom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a padlizsán másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lilagyümölcs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a padlizsán másik elnevezése?';
-- Q 198 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Magyarország nemzeti állata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Turul', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi Magyarország nemzeti állata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gólya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi Magyarország nemzeti állata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gímszarvas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi Magyarország nemzeti állata?';
-- Q 199 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mivel táplálkozik a kék bálna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rákokkal', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mivel táplálkozik a kék bálna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csak halakkal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mivel táplálkozik a kék bálna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'moszatokkal és algákkal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mivel táplálkozik a kék bálna?';
-- Q 200 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a fekete gólyának, amely elsőként megérkezett a Gemenci erdőbe?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tóbiás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a neve a fekete gólyának, amely elsőként megérkezett a Gemenci erdőbe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kele', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a neve a fekete gólyának, amely elsőként megérkezett a Gemenci erdőbe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szigfrid', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a neve a fekete gólyának, amely elsőként megérkezett a Gemenci erdőbe?';
COMMIT;
BEGIN;
-- Q 201 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a tárnics, vagy encián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növényfajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tárnics, vagy encián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tárnics, vagy encián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'déligyümölcs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a tárnics, vagy encián?';
-- Q 202 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évszakban virágzik a tulipán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tavasszal', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik évszakban virágzik a tulipán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyáron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik évszakban virágzik a tulipán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ősszel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik évszakban virágzik a tulipán?';
-- Q 203 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a legnagyobb méretű élő cápafaj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cetcápa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legnagyobb méretű élő cápafaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tigriscápa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legnagyobb méretű élő cápafaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rókacápa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legnagyobb méretű élő cápafaj?';
-- Q 204 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik szervünkre van jó hatással a galagonya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szív', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik szervünkre van jó hatással a galagonya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'máj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik szervünkre van jó hatással a galagonya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vese', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik szervünkre van jó hatással a galagonya?';
-- Q 205 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gramm testömegű egy fekete gólya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3000', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány gramm testömegű egy fekete gólya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány gramm testömegű egy fekete gólya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5000', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány gramm testömegű egy fekete gólya?';
-- Q 206 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány méter magas egy narancsfa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány méter magas egy narancsfa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '16 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány méter magas egy narancsfa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '23 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány méter magas egy narancsfa?';
-- Q 207 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány db csontból áll az agykoponya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány db csontból áll az agykoponya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány db csontból áll az agykoponya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány db csontból áll az agykoponya?';
-- Q 208 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik állatrendszertani osztályba tartozik a tengeri macska?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'porcos halak', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állatrendszertani osztályba tartozik a tengeri macska?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlősök', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állatrendszertani osztályba tartozik a tengeri macska?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllők', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állatrendszertani osztályba tartozik a tengeri macska?';
-- Q 209 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor alakult meg a Neoton együttes?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1965-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mikor alakult meg a Neoton együttes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1973-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mikor alakult meg a Neoton együttes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1968-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mikor alakult meg a Neoton együttes?';
-- Q 210 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi csillaggyümölcs másik neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'karambola', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi csillaggyümölcs másik neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'avokádó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi csillaggyümölcs másik neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jujuba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi csillaggyümölcs másik neve?';
COMMIT;
BEGIN;
-- Q 211 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Meddig élhet egy flamingó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20-30 évig', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Meddig élhet egy flamingó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '60-70 évig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Meddig élhet egy flamingó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5-6 évig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Meddig élhet egy flamingó?';
-- Q 212 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kakukkfű népies neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'balzsamfű', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kakukkfű népies neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ezerjófű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kakukkfű népies neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'édesfű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kakukkfű népies neve?';
-- Q 213 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi lett az év vadvirága 2017-ben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hóvirág', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi lett az év vadvirága 2017-ben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mocsári kockásliliom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi lett az év vadvirága 2017-ben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szibériai nőszirom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi lett az év vadvirága 2017-ben?';
-- Q 214 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a legkisebb medvefaj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'maláj medve', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legkisebb medvefaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fekete medve', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legkisebb medvefaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'örvös medve', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legkisebb medvefaj?';
-- Q 215 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen fajtájú volt Kincsem, a versenyló?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol telivér', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen fajtájú volt Kincsem, a versenyló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'musztáng', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen fajtájú volt Kincsem, a versenyló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lipicai ló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen fajtájú volt Kincsem, a versenyló?';
-- Q 216 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú egy pápaszemes kobra?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1.9 méter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen hosszú egy pápaszemes kobra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2.6 méter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen hosszú egy pápaszemes kobra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3.7 méter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen hosszú egy pápaszemes kobra?';
-- Q 217 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a pakarána?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rágcsáló', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a pakarána?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a pakarána?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a pakarána?';
-- Q 218 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Brazília nemzeti állata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'arapapagáj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi Brazília nemzeti állata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bengáli tigris', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi Brazília nemzeti állata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'királykobra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi Brazília nemzeti állata?';
-- Q 219 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a legnagyobb termetű gyíkfaj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'komodói varánusz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legnagyobb termetű gyíkfaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'homoki gyík', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legnagyobb termetű gyíkfaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'telepes agáma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legnagyobb termetű gyíkfaj?';
-- Q 220 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kb. hány éves a világ legidősebb élőlénye a Matuzsálem-fa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4843-4844', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Kb. hány éves a világ legidősebb élőlénye a Matuzsálem-fa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3243-3244', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Kb. hány éves a világ legidősebb élőlénye a Matuzsálem-fa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5678-5679', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Kb. hány éves a világ legidősebb élőlénye a Matuzsálem-fa?';
COMMIT;
BEGIN;
-- Q 221 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a világ legkisebb madara?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'méhkolibri', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a világ legkisebb madara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bölömbika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a világ legkisebb madara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ökörszem-cinege', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a világ legkisebb madara?';
-- Q 222 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor született Kincsem a „csodakanca”?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1874. március 17-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mikor született Kincsem a „csodakanca”?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1897. március 17-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mikor született Kincsem a „csodakanca”?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1923. március 17-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mikor született Kincsem a „csodakanca”?';
-- Q 223 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Kincsem tulajdonosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Blaskovich Ernő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Ki volt Kincsem tulajdonosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Blaskovich Bertalan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Ki volt Kincsem tulajdonosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hesp Róbert', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Ki volt Kincsem tulajdonosa?';
-- Q 224 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a magnólia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'liliomfa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a magnólia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'déligyümölcs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a magnólia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pengetős hangszer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a magnólia?';
-- Q 225 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat az addax?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'antilop', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat az addax?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'krokodil', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat az addax?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jaguár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat az addax?';
-- Q 226 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a medvehagyma népies neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kígyóhagyma', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a medvehagyma népies neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'disznóhagyma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a medvehagyma népies neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'majomhagyma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a medvehagyma népies neve?';
-- Q 227 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a szkunk?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bűzösborz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a szkunk?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mormota', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a szkunk?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hód', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a szkunk?';
-- Q 228 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A csigák melyik törzsbe tartoznak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'puhatestűek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A csigák melyik törzsbe tartoznak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ízeltlábúak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A csigák melyik törzsbe tartoznak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gerinchúrosok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='A csigák melyik törzsbe tartoznak?';
-- Q 229 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyek a nílusi víziló legközelebbi rokonai?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cetek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyek a nílusi víziló legközelebbi rokonai?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lovak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyek a nílusi víziló legközelebbi rokonai?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'disznók', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyek a nílusi víziló legközelebbi rokonai?';
-- Q 230 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a tarajos sül?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rágcsáló', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a tarajos sül?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a tarajos sül?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a tarajos sül?';
COMMIT;
BEGIN;
-- Q 231 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a halfarkas?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a halfarkas?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csontos hal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a halfarkas?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlős', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a halfarkas?';
-- Q 232 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik állat dorombol még a macskán kívűl?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gepárd', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat dorombol még a macskán kívűl?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'leopárd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat dorombol még a macskán kívűl?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jaguár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat dorombol még a macskán kívűl?';
-- Q 233 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány lába van a szúnyognak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány lába van a szúnyognak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány lába van a szúnyognak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány lába van a szúnyognak?';
-- Q 234 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol találhatók a Langerhans-szigetek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'az emberi testben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol találhatók a Langerhans-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a Csendes-óceánban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol találhatók a Langerhans-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a Földközi-tengerben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol találhatók a Langerhans-szigetek?';
-- Q 235 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a jujuba?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kínai datolya', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a jujuba?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'feketeribizli', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a jujuba?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sárkánygyümölcs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a jujuba?';
-- Q 236 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a szurikáta szó jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"szirti macska"', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a szurikáta szó jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"erdei macska"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a szurikáta szó jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"mezei mongúz"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a szurikáta szó jelentése?';
-- Q 237 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a languszta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rák', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a languszta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kagyló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a languszta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csiga', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a languszta?';
-- Q 238 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a sárgarigó régies elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'aranymálinkó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a sárgarigó régies elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csalogány', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a sárgarigó régies elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'méhészmadár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a sárgarigó régies elnevezése?';
-- Q 239 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a legnagyobb testű madárfaj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'strucc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legnagyobb testű madárfaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pulyka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legnagyobb testű madárfaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legnagyobb testű madárfaj?';
-- Q 240 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a csarnokvíz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a szemben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található a csarnokvíz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'az uszodában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található a csarnokvíz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a tengerben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található a csarnokvíz?';
COMMIT;
BEGIN;
-- Q 241 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik állat a katta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyűrűsfarkú maki', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat a katta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cerkófmajom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat a katta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fekete kajmán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat a katta?';
-- Q 242 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinens zöldsége az okra?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinens zöldsége az okra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinens zöldsége az okra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kontinens zöldsége az okra?';
-- Q 243 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy létező nyúlfajta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hócipős nyúl', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező nyúlfajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pókerarcú nyúl', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező nyúlfajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pápaszemes nyúl', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező nyúlfajta?';
-- Q 244 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a fürge cselle?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pontyféle', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a fürge cselle?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'békaféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a fürge cselle?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyíkféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a fürge cselle?';
-- Q 245 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a hipertónia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'magas vérnyomás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a hipertónia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alacsony vérnyomás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a hipertónia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'viselkedési zavar', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a hipertónia?';
-- Q 246 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a párducmacska másik neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ocelot', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a párducmacska másik neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oncilla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a párducmacska másik neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szervál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a párducmacska másik neve?';
-- Q 247 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik bogarat hívjuk bumbumbácsinak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hétpettyes katicabogarat', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik bogarat hívjuk bumbumbácsinak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szarvasbogarat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik bogarat hívjuk bumbumbácsinak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'óriáscsibort', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik bogarat hívjuk bumbumbácsinak?';
-- Q 248 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik családba tartozik a hiúz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'macskafélék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik családba tartozik a hiúz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hiénafélék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik családba tartozik a hiúz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'medvefélék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik családba tartozik a hiúz?';
-- Q 249 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az óriáspanda másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bambuszmedve', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az óriáspanda másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pápaszemes medve', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az óriáspanda másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'farkasmedve', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az óriáspanda másik elnevezése?';
-- Q 250 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kacsafarkú szender?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lepkefaj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kacsafarkú szender?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kacsafarkú szender?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyíkfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a kacsafarkú szender?';
COMMIT;
BEGIN;
-- Q 251 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem egy létező teknősfaj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyúlfülű teknős', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem egy létező teknősfaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'malacképű teknős', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem egy létező teknősfaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'merevmellű sisakteknős', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem egy létező teknősfaj?';
-- Q 252 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem egy almafajta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'laska', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem egy almafajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rubinola', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem egy almafajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'starking', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem egy almafajta?';
-- Q 253 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a zöld acsa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szitakötő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a zöld acsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pillangó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a zöld acsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyík', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a zöld acsa?';
-- Q 254 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány liter vére van átlagosan egy embernek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5 liter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány liter vére van átlagosan egy embernek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8 liter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány liter vére van átlagosan egy embernek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3 liter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány liter vére van átlagosan egy embernek?';
-- Q 255 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a szárcsa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárféle', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a szárcsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a szárcsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlős', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a szárcsa?';
-- Q 256 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik mirigy termeli az inzulint?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hasnyálmirigy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik mirigy termeli az inzulint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pajzsmirigy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik mirigy termeli az inzulint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'agyalapi mirigy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik mirigy termeli az inzulint?';
-- Q 257 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen fűszernövény kerül az asztalra Húsvétkor?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'torma', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen fűszernövény kerül az asztalra Húsvétkor?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyömbér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen fűszernövény kerül az asztalra Húsvétkor?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kapor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen fűszernövény kerül az asztalra Húsvétkor?';
-- Q 258 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állatokat őrzött a kondás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'disznót', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állatokat őrzött a kondás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'juhokat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állatokat őrzött a kondás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'marhát', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állatokat őrzött a kondás?';
-- Q 259 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem a sárkánygyümölcs másik neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csillaggyümölcs', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a sárkánygyümölcs másik neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kaktuszgyümölcs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a sárkánygyümölcs másik neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pitaja', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem a sárkánygyümölcs másik neve?';
-- Q 260 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mivel lehet összetéveszteni a medvehagymát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyöngyvirággal', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mivel lehet összetéveszteni a medvehagymát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'berkenyével', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mivel lehet összetéveszteni a medvehagymát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'körömvirággal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mivel lehet összetéveszteni a medvehagymát?';
COMMIT;
BEGIN;
-- Q 261 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány csontból áll az emberi test?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '206', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány csontból áll az emberi test?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '146', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány csontból áll az emberi test?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '187', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány csontból áll az emberi test?';
-- Q 262 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a jukka másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pálmaliliom', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a jukka másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fügefa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a jukka másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'datolyapálma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a jukka másik elnevezése?';
-- Q 263 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik növény a vadfokhagyma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'medvehagyma', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növény a vadfokhagyma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'spárga', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növény a vadfokhagyma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyöngyhagyma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növény a vadfokhagyma?';
-- Q 264 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat az aranykezű tamarin?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'majomféle', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat az aranykezű tamarin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'párosujjú patás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat az aranykezű tamarin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétéltű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat az aranykezű tamarin?';
-- Q 265 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi a normális vércukorszint?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3.9-6.1 mmol/l', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi a normális vércukorszint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7.8-11.0 mmol/l', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi a normális vércukorszint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6.0-8.0 mmol/l', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mennyi a normális vércukorszint?';
-- Q 266 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a karaj a sertésen?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gerincén', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található a karaj a sertésen?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'combján', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található a karaj a sertésen?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fején', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található a karaj a sertésen?';
-- Q 267 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a fokföldi szula?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárféle', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a fokföldi szula?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlős', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a fokföldi szula?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a fokföldi szula?';
-- Q 268 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány üregű az emberi szív?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány üregű az emberi szív?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány üregű az emberi szív?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kettő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány üregű az emberi szív?';
-- Q 269 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy létező delfinfaj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pápaszemes disznódelfin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező delfinfaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kacsacsőrű delfin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező delfinfaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'barázdás disznódelfin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező delfinfaj?';
-- Q 270 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kémiai elemnek a legnagyobb a tömege?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'higany', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kémiai elemnek a legnagyobb a tömege?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'platina', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kémiai elemnek a legnagyobb a tömege?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cink', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik kémiai elemnek a legnagyobb a tömege?';
COMMIT;
BEGIN;
-- Q 271 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik növénycsaládba tartozik a paradicsom?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'burgonyafélék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növénycsaládba tartozik a paradicsom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tökfélék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növénycsaládba tartozik a paradicsom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pillangósvirágúak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik növénycsaládba tartozik a paradicsom?';
-- Q 272 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik állat terjeszti a sárgalázat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szúnyog', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat terjeszti a sárgalázat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cecelégy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat terjeszti a sárgalázat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'darázs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat terjeszti a sárgalázat?';
-- Q 273 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a pálmatolvaj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rákféle', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a pálmatolvaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'majomféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a pálmatolvaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a pálmatolvaj?';
-- Q 274 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány cm testhosszú lehet egy fehér gólya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '100-115 cm', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány cm testhosszú lehet egy fehér gólya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '145-150 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány cm testhosszú lehet egy fehér gólya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '125-140 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány cm testhosszú lehet egy fehér gólya?';
-- Q 275 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a tv a tv paprikában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tölteni való', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mit jelent a tv a tv paprikában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'televízió', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mit jelent a tv a tv paprikában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'télire való', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mit jelent a tv a tv paprikában?';
-- Q 276 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat van Grönland címerén?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jegesmedve', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat van Grönland címerén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fóka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat van Grönland címerén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'delfin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat van Grönland címerén?';
-- Q 277 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik főzelékbe kell babérlevelet rakni?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'krumpli', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik főzelékbe kell babérlevelet rakni?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tök', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik főzelékbe kell babérlevelet rakni?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöldbab', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik főzelékbe kell babérlevelet rakni?';
-- Q 278 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a bodorka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hal', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a bodorka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a bodorka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a bodorka?';
-- Q 279 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik állat régi magyar elnevezése a tevepárduc?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zsiráf', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat régi magyar elnevezése a tevepárduc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tigris', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat régi magyar elnevezése a tevepárduc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zebra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat régi magyar elnevezése a tevepárduc?';
-- Q 280 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a tobozmirigy az emberi testben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'az agyban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található a tobozmirigy az emberi testben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a mellkasban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található a tobozmirigy az emberi testben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a vese fölött', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található a tobozmirigy az emberi testben?';
COMMIT;
BEGIN;
-- Q 281 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem egy lófajta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'akita', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem egy lófajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nóniusz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem egy lófajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'musztáng', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik nem egy lófajta?';
-- Q 282 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol honos a hópárduc?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Közép-Ázsiában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol honos a hópárduc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol honos a hópárduc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol honos a hópárduc?';
-- Q 283 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt 2017-ben az „Év madara”?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tengelic', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi volt 2017-ben az „Év madara”?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyurgyalag', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi volt 2017-ben az „Év madara”?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'széncinege', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi volt 2017-ben az „Év madara”?';
-- Q 284 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található az emberi testben az ékcsont?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'koponyában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található az emberi testben az ékcsont?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mellkasban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található az emberi testben az ékcsont?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'combban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található az emberi testben az ékcsont?';
-- Q 285 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen színű a maláj medve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fekete', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen színű a maláj medve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'barna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen színű a maláj medve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fehér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen színű a maláj medve?';
-- Q 286 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a közönséges rinya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'százlábú', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a közönséges rinya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a közönséges rinya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rágcsáló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a közönséges rinya?';
-- Q 287 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik osztályba tartozik a krokodil?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllők', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik osztályba tartozik a krokodil?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétéltűek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik osztályba tartozik a krokodil?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik osztályba tartozik a krokodil?';
-- Q 288 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a csecsemőmirigy az emberi testben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mellkasban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található a csecsemőmirigy az emberi testben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyakban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található a csecsemőmirigy az emberi testben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'koponyában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található a csecsemőmirigy az emberi testben?';
-- Q 289 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Megközelítőleg hány kígyófaj létezik a Földön?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2400', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Megközelítőleg hány kígyófaj létezik a Földön?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '800', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Megközelítőleg hány kígyófaj létezik a Földön?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1600', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Megközelítőleg hány kígyófaj létezik a Földön?';
-- Q 290 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen élőlény a közönséges magyal?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a közönséges magyal?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rovar', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a közönséges magyal?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a közönséges magyal?';
COMMIT;
BEGIN;
-- Q 291 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a hermelin?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlős', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a hermelin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rovar', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a hermelin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat a hermelin?';
-- Q 292 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol élnek a rozmárok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'az Északi-sarkon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol élnek a rozmárok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a Déli-sarkon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol élnek a rozmárok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol élnek a rozmárok?';
-- Q 293 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány maradandó foga van egy kutyának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '42', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány maradandó foga van egy kutyának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '38', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány maradandó foga van egy kutyának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '36', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány maradandó foga van egy kutyának?';
-- Q 294 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány liter vizet fogyaszt naponta egy afrikai elefánt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '300 liter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány liter vizet fogyaszt naponta egy afrikai elefánt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '70 liter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány liter vizet fogyaszt naponta egy afrikai elefánt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '160 liter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány liter vizet fogyaszt naponta egy afrikai elefánt?';
-- Q 295 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik állat fluoreszkál ultraibolya fényben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'skorpió', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat fluoreszkál ultraibolya fényben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szitakötő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat fluoreszkál ultraibolya fényben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szentjánosbogár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állat fluoreszkál ultraibolya fényben?';
-- Q 296 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a legnagyobb bogárfaj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'óriáscincér', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legnagyobb bogárfaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szentjánosbogár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legnagyobb bogárfaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csótány', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik a legnagyobb bogárfaj?';
-- Q 297 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi január virága?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hóvirág', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi január virága?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'árvácska', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi január virága?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'írisz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi január virága?';
-- Q 298 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a borbolya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növényféle', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a borbolya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a borbolya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlősállat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a borbolya?';
-- Q 299 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állatfajta a mangalica?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'disznó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állatfajta a mangalica?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kacsa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állatfajta a mangalica?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állatfajta a mangalica?';
-- Q 300 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található az emberi testben a deltaizom?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vállban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található az emberi testben a deltaizom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyakban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található az emberi testben a deltaizom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fülben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hol található az emberi testben a deltaizom?';
COMMIT;
BEGIN;
-- Q 301 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik madarat választották 2018-ban az "Év madarának"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vándorsólyom', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik madarat választották 2018-ban az "Év madarának"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kanalasgém', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik madarat választották 2018-ban az "Év madarának"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyurgyalag', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik madarat választották 2018-ban az "Év madarának"?';
-- Q 302 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány méterre nőhet egy erdeifenyő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '40 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány méterre nőhet egy erdeifenyő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '100 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány méterre nőhet egy erdeifenyő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '80 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány méterre nőhet egy erdeifenyő?';
-- Q 303 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik az emberi test leghosszabb izma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szabóizom', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik az emberi test leghosszabb izma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rekeszizom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik az emberi test leghosszabb izma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'trapézizom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik az emberi test leghosszabb izma?';
-- Q 304 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányféle vércsoport létezik?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hányféle vércsoport létezik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hányféle vércsoport létezik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hányféle vércsoport létezik?';
-- Q 305 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az artéria?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'verőér', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az artéria?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyüjtőér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az artéria?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hajszálér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi az artéria?';
-- Q 306 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik állatok gyűjtik be a mézet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'méhek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állatok gyűjtik be a mézet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hangyák', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állatok gyűjtik be a mézet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'darazsak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik állatok gyűjtik be a mézet?';
-- Q 307 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen élőlény a vízi rucaöröm?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'páfrányféle', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a vízi rucaöröm?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a vízi rucaöröm?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétéltű állat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a vízi rucaöröm?';
-- Q 308 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi nem kell a lencsefőzelék elkészítéséhez?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tojás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi nem kell a lencsefőzelék elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tejföl', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi nem kell a lencsefőzelék elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'babérlevél', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi nem kell a lencsefőzelék elkészítéséhez?';
-- Q 309 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a mangosztán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyümölcs', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a mangosztán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a mangosztán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vízi állat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi a mangosztán?';
-- Q 310 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állatokat őrzött a gulyás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'marhákat', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állatokat őrzött a gulyás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'disznókat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állatokat őrzött a gulyás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'juhokat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állatokat őrzött a gulyás?';
COMMIT;
BEGIN;
-- Q 311 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor születtek a Z generáció tagjai?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000 után', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mikor születtek a Z generáció tagjai?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1960 és 1979 között', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mikor születtek a Z generáció tagjai?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1980 és 1999 között', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mikor születtek a Z generáció tagjai?';
-- Q 312 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy létező teknősfaj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hamilton-teknős', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező teknősfaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alonso-teknős', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező teknősfaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ricardo-teknős', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező teknősfaj?';
-- Q 313 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen madarak voltak a dodók?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'galambfélék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen madarak voltak a dodók?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sirályfélék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen madarak voltak a dodók?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'harkályfélék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen madarak voltak a dodók?';
-- Q 314 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen élőlény a békatutaj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a békatutaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétéltű állat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a békatutaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a békatutaj?';
-- Q 315 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat Moby Dick?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bálna', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat Moby Dick?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oroszlán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat Moby Dick?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gorilla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állat Moby Dick?';
-- Q 316 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen élőlény a kakapó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a kakapó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyógynövény', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a kakapó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rágcsáló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a kakapó?';
-- Q 317 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi nem kell a túrós csusza elkészítéséhez?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tojás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi nem kell a túrós csusza elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tejföl', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi nem kell a túrós csusza elkészítéséhez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'túró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi nem kell a túrós csusza elkészítéséhez?';
-- Q 318 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen vegyület rövidítése az MSM?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'metil-szulfonil metán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen vegyület rövidítése az MSM?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szén-monoszulfid', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen vegyület rövidítése az MSM?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'trikarbon-dioxid', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen vegyület rövidítése az MSM?';
-- Q 319 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állatfajta a barbet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kutya', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állatfajta a barbet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állatfajta a barbet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'farkas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állatfajta a barbet?';
-- Q 320 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen élőlény a libapimpó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növényfaj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a libapimpó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a libapimpó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hüllőfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a libapimpó?';
COMMIT;
BEGIN;
-- Q 321 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány cm hosszú egy hering?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '30 cm', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány cm hosszú egy hering?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '60 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány cm hosszú egy hering?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '120 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány cm hosszú egy hering?';
-- Q 322 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik gyógynövény másik neve szentivánpipitér?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kamilla', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik gyógynövény másik neve szentivánpipitér?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zsálya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik gyógynövény másik neve szentivánpipitér?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kakukkfű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik gyógynövény másik neve szentivánpipitér?';
-- Q 323 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen élőlény a bimbós pöfeteg?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a bimbós pöfeteg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyógynövény', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a bimbós pöfeteg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen élőlény a bimbós pöfeteg?';
-- Q 324 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ízt érezzük a nyelvünk hegyén?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'édeset', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik ízt érezzük a nyelvünk hegyén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sósat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik ízt érezzük a nyelvünk hegyén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'savanyút', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik ízt érezzük a nyelvünk hegyén?';
-- Q 325 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állattól fél aki kiroptofóbiás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'denevértől', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állattól fél aki kiroptofóbiás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'patkánytól', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állattól fél aki kiroptofóbiás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kígyótól', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Milyen állattól fél aki kiroptofóbiás?';
-- Q 326 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy létező rókafaj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pusztai róka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező rókafaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'erdei róka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező rókafaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'japán róka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező rókafaj?';
-- Q 327 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy létező fafajta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kolbászfa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező fafajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csülökfa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező fafajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'virslifa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy létező fafajta?';
-- Q 328 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi lett 2018 gyógynövénye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'levendula', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi lett 2018 gyógynövénye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fodormenta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi lett 2018 gyógynövénye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'közönséges cickafark', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi lett 2018 gyógynövénye?';
-- Q 329 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évig élhet egy strucc természetes élőhelyén?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '40 évig', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig élhet egy strucc természetes élőhelyén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20 évig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig élhet egy strucc természetes élőhelyén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '80 évig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Hány évig élhet egy strucc természetes élőhelyén?';
-- Q 330 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mik a korallok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tengeri élőlények', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mik a korallok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mérgező növények', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mik a korallok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafajták', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mik a korallok?';
COMMIT;
BEGIN;
-- Q 331 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Hollandia nemzeti állata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oroszlán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi Hollandia nemzeti állata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'királykobra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi Hollandia nemzeti állata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jaguár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Mi Hollandia nemzeti állata?';
-- Q 332 in elovilag
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy szilvafajta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'President', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy szilvafajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kadarka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy szilvafajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Otello', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='elovilag' AND q.text='Melyik egy szilvafajta?';
COMMIT;
