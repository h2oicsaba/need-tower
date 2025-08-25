-- import_hu_egyeb.sql (generated)
INSERT INTO languages (code, name) VALUES ('hu','Magyar') ON CONFLICT (code) DO NOTHING;
-- Topic: egyeb
INSERT INTO topics (language_id, name_hu, name_translated, slug)
SELECT l.id, 'egyéb', 'egyéb', 'egyeb'
FROM languages l WHERE l.code='hu'
ON CONFLICT (slug) DO NOTHING;
BEGIN;
-- Q 1 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a macsánka szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'paprikás krumpli', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a macsánka szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bozótvágó kés', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a macsánka szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'muskotályos bor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a macsánka szó?';
-- Q 2 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki fedezte fel a C-vitamint?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent-Györgyi Albert', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki fedezte fel a C-vitamint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Czeizel Endre', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki fedezte fel a C-vitamint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Semmelweis Ignác', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki fedezte fel a C-vitamint?';
-- Q 3 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a talizmán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szerencsét hozó tárgy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a talizmán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ritka madárféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a talizmán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szúrófegyver', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a talizmán?';
-- Q 4 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki találta fel a golyóstollat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bíró László', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki találta fel a golyóstollat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gábor Dénes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki találta fel a golyóstollat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Irinyi János', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki találta fel a golyóstollat?';
-- Q 5 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a gábli szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'villásreggeli', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a gábli szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'folyosó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a gábli szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vizipipa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a gábli szó?';
-- Q 6 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a foglalkozása Aigner Szilárdnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'meteorólogus', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi volt a foglalkozása Aigner Szilárdnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'színész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi volt a foglalkozása Aigner Szilárdnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'újságíró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi volt a foglalkozása Aigner Szilárdnak?';
-- Q 7 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kén vegyjele?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'S', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kén vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'K', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kén vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'C', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kén vegyjele?';
-- Q 8 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a szelfi?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'önfotó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a szelfi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'önámítás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a szelfi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'önéletrajz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a szelfi?';
-- Q 9 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent az angol always szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mindig', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az angol always szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'soha', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az angol always szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egyedül', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az angol always szó?';
-- Q 10 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a CPU?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'processzor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a CPU?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'professzor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a CPU?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'profósz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a CPU?';
COMMIT;
BEGIN;
-- Q 11 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Lechner Ödön?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'magyar építész', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Lechner Ödön?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'magyar festő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Lechner Ödön?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'magyar szobrász', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Lechner Ödön?';
-- Q 12 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen tudományág a paleontológia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'őslénytan', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen tudományág a paleontológia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ősföldrajz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen tudományág a paleontológia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öregedéstan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen tudományág a paleontológia?';
-- Q 13 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Törökország pénzneme?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'líra', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Törökország pénzneme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'euró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Törökország pénzneme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'shiling', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Törökország pénzneme?';
-- Q 14 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki tervezte a Parlamentet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Steindl Imre', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki tervezte a Parlamentet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Otto Wagner', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki tervezte a Parlamentet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ybl Miklós', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki tervezte a Parlamentet?';
-- Q 15 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a pádimentom szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'padló', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a pádimentom szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'erkély', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a pádimentom szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ablak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a pádimentom szó?';
-- Q 16 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a tamburin?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csörgődob', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tamburin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'furulya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tamburin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagybőgő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tamburin?';
-- Q 17 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Horváthország pénzneme?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kuna', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Horváthország pénzneme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'euró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Horváthország pénzneme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'frank', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Horváthország pénzneme?';
-- Q 18 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a slambuc?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'krumplis tészta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a slambuc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mákos tészta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a slambuc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sajtos tészta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a slambuc?';
-- Q 19 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mivel foglalkozik az etnográfia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'néprajzzal', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mivel foglalkozik az etnográfia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csillagászattal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mivel foglalkozik az etnográfia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'írás történetével', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mivel foglalkozik az etnográfia?';
-- Q 20 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen nemzetiségű Gordon Ramsay, a híres szakács?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'skót', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen nemzetiségű Gordon Ramsay, a híres szakács?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'svéd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen nemzetiségű Gordon Ramsay, a híres szakács?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen nemzetiségű Gordon Ramsay, a híres szakács?';
COMMIT;
BEGIN;
-- Q 21 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kobalt vegyjele?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Co', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kobalt vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'K', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kobalt vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ko', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kobalt vegyjele?';
-- Q 22 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki találta fel a bűvös kockát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rubik Ernő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki találta fel a bűvös kockát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gábor Dénes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki találta fel a bűvös kockát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kempelen Farkas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki találta fel a bűvös kockát?';
-- Q 23 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik szakácsnak nincs Michelin csillaga?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jamie Oliver', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik szakácsnak nincs Michelin csillaga?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gordon Ramsay', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik szakácsnak nincs Michelin csillaga?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alain Ducasse', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik szakácsnak nincs Michelin csillaga?';
-- Q 24 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen lábbeli a kalucsni?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gumicipő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen lábbeli a kalucsni?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csizma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen lábbeli a kalucsni?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'papucs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen lábbeli a kalucsni?';
-- Q 25 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a diabetes?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cukorbetegség', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a diabetes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'laktózérzékenység', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a diabetes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szénanátha', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a diabetes?';
-- Q 26 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kiről nevezték el az Újházi-tyúklevest?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Újházi Edéről', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kiről nevezték el az Újházi-tyúklevest?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Újházi Lászlóról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kiről nevezték el az Újházi-tyúklevest?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Újházi Andrásról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kiről nevezték el az Újházi-tyúklevest?';
-- Q 27 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Minek a rövidítése a CD?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Color Disc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a rövidítése a CD?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Compact Disc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a rövidítése a CD?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Compact Disco', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a rövidítése a CD?';
-- Q 28 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a barátfüle?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szilvalekváros derelye', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a barátfüle?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mákos nudli', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a barátfüle?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csörögefánk', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a barátfüle?';
-- Q 29 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a halef szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'villa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a halef szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kanál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a halef szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kés', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a halef szó?';
-- Q 30 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik hónap régi elnevezése a Boldogasszony hava?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'október', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik hónap régi elnevezése a Boldogasszony hava?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'február', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik hónap régi elnevezése a Boldogasszony hava?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'január', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik hónap régi elnevezése a Boldogasszony hava?';
COMMIT;
BEGIN;
-- Q 31 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik vitamin hiánya okozza a farkasvakságot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A vitamin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik vitamin hiánya okozza a farkasvakságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'C vitamin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik vitamin hiánya okozza a farkasvakságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'K vitamin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik vitamin hiánya okozza a farkasvakságot?';
-- Q 32 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a citológia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bonctan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a citológia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szövettan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a citológia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sejttan', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a citológia?';
-- Q 33 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent az angol future szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jövő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az angol future szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'múlt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az angol future szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jelen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az angol future szó?';
-- Q 34 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a cséving?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tálalóedény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a cséving?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fejfedő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a cséving?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ritka madárfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a cséving?';
-- Q 35 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a tarantasz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'utazókocsi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tarantasz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétüléses bicikli', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tarantasz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lovaskocsi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tarantasz?';
-- Q 36 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a compó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a compó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halfajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a compó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rovarféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a compó?';
-- Q 37 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a beard, angol szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bajusz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a beard, angol szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szakáll', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a beard, angol szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'homlok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a beard, angol szó?';
-- Q 38 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a vintage?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kis edényke', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vintage?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'stílusirányzat', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vintage?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vintage?';
-- Q 39 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a matróna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'idős asszony', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki a matróna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'idős matróz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki a matróna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'masiniszta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki a matróna?';
-- Q 40 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miknek az atyjának nevezték Hermann Ottót?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növények', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miknek az atyjának nevezték Hermann Ottót?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madarak', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miknek az atyjának nevezték Hermann Ottót?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlősök', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miknek az atyjának nevezték Hermann Ottót?';
COMMIT;
BEGIN;
-- Q 41 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mivel foglalkozik az antropológia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növényekkel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mivel foglalkozik az antropológia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'állatokkal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mivel foglalkozik az antropológia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emberekkel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mivel foglalkozik az antropológia?';
-- Q 42 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jellemez a Ph érték?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kémhatást', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jellemez a Ph érték?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hőmérsékletet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jellemez a Ph érték?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szélirányt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jellemez a Ph érték?';
-- Q 43 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Bóra?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szélfajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Bóra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halfajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Bóra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Bóra?';
-- Q 44 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi idő alatt rakta ki, aki megnyerte a Rubik-kocka Európa-bajnokságot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7.88 mp', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi idő alatt rakta ki, aki megnyerte a Rubik-kocka Európa-bajnokságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '11.7 mp', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi idő alatt rakta ki, aki megnyerte a Rubik-kocka Európa-bajnokságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '22.88 mp', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi idő alatt rakta ki, aki megnyerte a Rubik-kocka Európa-bajnokságot?';
-- Q 45 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen ruhadarab volt a pruszlik?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'díszes mellény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ruhadarab volt a pruszlik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'díszes fejfedő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ruhadarab volt a pruszlik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'télikabát', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ruhadarab volt a pruszlik?';
-- Q 46 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit csinál az, aki obszervál?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'megfigyel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál az, aki obszervál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sportol', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál az, aki obszervál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'menekül', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál az, aki obszervál?';
-- Q 47 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen játéktípus a snooker?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'teke', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen játéktípus a snooker?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sakk', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen játéktípus a snooker?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'biliárd', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen játéktípus a snooker?';
-- Q 48 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a COPD?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vesebetegség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a COPD?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szívbetegség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a COPD?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tüdőbetegség', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a COPD?';
-- Q 49 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Svájcnak mi a pénzneme?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'korona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Svájcnak mi a pénzneme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'euró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Svájcnak mi a pénzneme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'svájci frank', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Svájcnak mi a pénzneme?';
-- Q 50 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a króm vegyjele?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cr', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a króm vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kr', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a króm vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a króm vegyjele?';
COMMIT;
BEGIN;
-- Q 51 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik csoportba tartozik a kalcium?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alkáliföldfémek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik csoportba tartozik a kalcium?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alkálifémek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik csoportba tartozik a kalcium?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halogének', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik csoportba tartozik a kalcium?';
-- Q 52 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor jelent meg Magyarországon a Pokémon Go játék?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016. július 14-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor jelent meg Magyarországon a Pokémon Go játék?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016. július 22-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor jelent meg Magyarországon a Pokémon Go játék?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016. július 16-án', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor jelent meg Magyarországon a Pokémon Go játék?';
-- Q 53 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik hónapot hívták régen Szent György havának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'április', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik hónapot hívták régen Szent György havának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'május', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik hónapot hívták régen Szent György havának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'július', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik hónapot hívták régen Szent György havának?';
-- Q 54 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kvadrát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négyzet', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kvadrát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'téglalap', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kvadrát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'háromszög', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kvadrát?';
-- Q 55 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Szent-Györgyi Albert melyik évben kapott Nobel-díjat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1961-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Szent-Györgyi Albert melyik évben kapott Nobel-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1937-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Szent-Györgyi Albert melyik évben kapott Nobel-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1943-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Szent-Györgyi Albert melyik évben kapott Nobel-díjat?';
-- Q 56 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Morgan?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'német férfinév', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Morgan?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol autómárka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Morgan?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'olasz fényképezőgépmárka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Morgan?';
-- Q 57 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit csinál az aki zrikál?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bosszant', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál az aki zrikál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'átgondol', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál az aki zrikál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'étkezik', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál az aki zrikál?';
-- Q 58 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi aTwister?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'édesség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi aTwister?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'modern táncfajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi aTwister?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'társasjáték', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi aTwister?';
-- Q 59 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik vár volt a régi 200 Ft-os bankjegy hátoldalán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'diósgyőri', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik vár volt a régi 200 Ft-os bankjegy hátoldalán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egri', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik vár volt a régi 200 Ft-os bankjegy hátoldalán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyulai', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik vár volt a régi 200 Ft-os bankjegy hátoldalán?';
-- Q 60 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik hónapunk régi elnevezése a Kisasszony hava?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'július', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik hónapunk régi elnevezése a Kisasszony hava?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'augusztus', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik hónapunk régi elnevezése a Kisasszony hava?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'október', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik hónapunk régi elnevezése a Kisasszony hava?';
COMMIT;
BEGIN;
-- Q 61 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Augusztus hónapunk kiről kapta a nevét?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Marcus Aurelius császárról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Augusztus hónapunk kiről kapta a nevét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Antoninus Pius császárról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Augusztus hónapunk kiről kapta a nevét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Augustus császárról', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Augusztus hónapunk kiről kapta a nevét?';
-- Q 62 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a cvicsek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'orosz vodkafajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a cvicsek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szlovák pálinka fajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a cvicsek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szlovén vörösbor fajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a cvicsek?';
-- Q 63 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki látható a húszezres bankjegy előoldalán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Deák Ferenc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki látható a húszezres bankjegy előoldalán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent István király', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki látható a húszezres bankjegy előoldalán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mátyás király', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki látható a húszezres bankjegy előoldalán?';
-- Q 64 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik hónapunkat nevezték régen Szent Jakab havának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'márciust', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik hónapunkat nevezték régen Szent Jakab havának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'júniust', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik hónapunkat nevezték régen Szent Jakab havának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'júliust', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik hónapunkat nevezték régen Szent Jakab havának?';
-- Q 65 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a lottó régi elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lottéria', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi volt a lottó régi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lutri', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi volt a lottó régi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'luttó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi volt a lottó régi elnevezése?';
-- Q 66 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor van a balkezesek világnapja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'augusztus 15-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor van a balkezesek világnapja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'augusztus 13-án', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor van a balkezesek világnapja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'augusztus 18-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor van a balkezesek világnapja?';
-- Q 67 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit csinál, aki validál?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'igazol', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál, aki validál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'változtat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál, aki validál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'érvényesít', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál, aki validál?';
-- Q 68 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen színű az ametiszt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ibolya', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen színű az ametiszt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rubinvörös', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen színű az ametiszt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zafírkék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen színű az ametiszt?';
-- Q 69 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a rádli?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kerék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a rádli?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'karika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a rádli?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kabát', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a rádli?';
-- Q 70 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Moulin Rogue jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vörös Rúzs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Moulin Rogue jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vörös Malom', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Moulin Rogue jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vörös Oroszlán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Moulin Rogue jelentése?';
COMMIT;
BEGIN;
-- Q 71 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Minek a mértékegysége a newton?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'erő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a mértékegysége a newton?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sebesség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a mértékegysége a newton?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'súly', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a mértékegysége a newton?';
-- Q 72 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor kerül átadásra a Kossuth-díj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'március 15-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor kerül átadásra a Kossuth-díj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'május 1-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor kerül átadásra a Kossuth-díj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'augusztus 20-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor kerül átadásra a Kossuth-díj?';
-- Q 73 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen az, aki zelóta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'türelmetlen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen az, aki zelóta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'céltudatos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen az, aki zelóta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öntelt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen az, aki zelóta?';
-- Q 74 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a gálya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hajó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a gálya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vonat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a gálya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csónak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a gálya?';
-- Q 75 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit csinál az, aki lájkol?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kedvel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál az, aki lájkol?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sztrájkol', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál az, aki lájkol?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'takarít', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál az, aki lájkol?';
-- Q 76 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit szoktak kandírozni?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyümölcsöt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit szoktak kandírozni?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöldséget', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit szoktak kandírozni?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kenyeret', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit szoktak kandírozni?';
-- Q 77 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Finnország pénzneme?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'euró', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Finnország pénzneme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'font', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Finnország pénzneme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dollár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Finnország pénzneme?';
-- Q 78 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a régi papír 10 Ft-oson?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Petőfi Sándor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt a régi papír 10 Ft-oson?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ady Endre', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt a régi papír 10 Ft-oson?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arany János', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt a régi papír 10 Ft-oson?';
-- Q 79 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi kezdődik szeptember 1-én?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'iskolai tanév', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi kezdődik szeptember 1-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'aratás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi kezdődik szeptember 1-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csillagászati ősz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi kezdődik szeptember 1-én?';
-- Q 80 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi szeptember hónap régi elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent Mihály hava', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi szeptember hónap régi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent Jakab hava', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi szeptember hónap régi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent András hava', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi szeptember hónap régi elnevezése?';
COMMIT;
BEGIN;
-- Q 81 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik csoportba tartozik a kálium?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alkálifémek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik csoportba tartozik a kálium?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alkáliföldfémek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik csoportba tartozik a kálium?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halogének', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik csoportba tartozik a kálium?';
-- Q 82 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a csomorika?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növényfaj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csomorika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csomorika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rovarféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csomorika?';
-- Q 83 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a pagony szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'liget', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a pagony szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öböl', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a pagony szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'létra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a pagony szó?';
-- Q 84 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a tarlatán szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pamutszövet', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a tarlatán szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'boszorkány', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a tarlatán szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mikrofon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a tarlatán szó?';
-- Q 85 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit csinál aki zenkol?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'süllyeszt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál aki zenkol?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kalapál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál aki zenkol?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'iszik', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál aki zenkol?';
-- Q 86 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány oldala van egy paralelogrammának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány oldala van egy paralelogrammának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány oldala van egy paralelogrammának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány oldala van egy paralelogrammának?';
-- Q 87 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi a négyszög belső szögeinek összege?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '360 fok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi a négyszög belső szögeinek összege?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '180 fok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi a négyszög belső szögeinek összege?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '90 fok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi a négyszög belső szögeinek összege?';
-- Q 88 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a hatszög angol neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hexagon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a hatszög angol neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pentagon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a hatszög angol neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'octagon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a hatszög angol neve?';
-- Q 89 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen ásvány a dolomit?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'karbonát', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ásvány a dolomit?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szilikát', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ásvány a dolomit?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oxid', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ásvány a dolomit?';
-- Q 90 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a téltemető?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növényfaj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a téltemető?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rovarfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a téltemető?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a téltemető?';
COMMIT;
BEGIN;
-- Q 91 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a femme fatale jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a végzet asszonya', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a femme fatale jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a ház úrnője', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a femme fatale jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a falu bikája', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a femme fatale jelentése?';
-- Q 92 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a masztaba szó jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pad', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a masztaba szó jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a masztaba szó jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hajó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a masztaba szó jelentése?';
-- Q 93 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Teller Ede?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'atomfizikus', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Teller Ede?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kémikus', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Teller Ede?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bilológus', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Teller Ede?';
-- Q 94 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi nem hasonlít Pom-pomra a rajzfilmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lyukas zokni', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi nem hasonlít Pom-pomra a rajzfilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szobafestő pemzli', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi nem hasonlít Pom-pomra a rajzfilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'paróka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi nem hasonlít Pom-pomra a rajzfilmben?';
-- Q 95 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az ökológia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'környezettan', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az ökológia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növénytan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az ökológia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'álattan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az ökológia?';
-- Q 96 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kőolaj fő összetevője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szénhidrogén', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kőolaj fő összetevője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szén-dioxid', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kőolaj fő összetevője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szén-diszulfid', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kőolaj fő összetevője?';
-- Q 97 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a szambó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sport', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a szambó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'étel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a szambó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tánc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a szambó?';
-- Q 98 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a bridzs?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kártyajáték', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a bridzs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tekejáték', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a bridzs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'biliárd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a bridzs?';
-- Q 99 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a nátrium rendszáma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '11', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a nátrium rendszáma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a nátrium rendszáma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '19', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a nátrium rendszáma?';
-- Q 100 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a nátrium-klorid?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'konyhasó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a nátrium-klorid?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bórsó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a nátrium-klorid?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pác-só', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a nátrium-klorid?';
COMMIT;
BEGIN;
-- Q 101 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a magnézium régi magyar neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kesereny', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a magnézium régi magyar neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mészeny', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a magnézium régi magyar neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szikeny', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a magnézium régi magyar neve?';
-- Q 102 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen végzettsége volt Déri Jánosnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gépészmérnök', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen végzettsége volt Déri Jánosnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'autószerelő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen végzettsége volt Déri Jánosnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ács', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen végzettsége volt Déri Jánosnak?';
-- Q 103 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek a lánya volt Pallas Athéné a görög mitológiában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zeusz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kinek a lánya volt Pallas Athéné a görög mitológiában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Odüsszeusz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kinek a lánya volt Pallas Athéné a görög mitológiában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hermész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kinek a lánya volt Pallas Athéné a görög mitológiában?';
-- Q 104 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi képes az aranyat feloldani?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'királyvíz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi képes az aranyat feloldani?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'salétromsav', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi képes az aranyat feloldani?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sósav', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi képes az aranyat feloldani?';
-- Q 105 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi október hónap régi elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mindszent hava', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi október hónap régi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent András hava', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi október hónap régi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent Jakab hava', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi október hónap régi elnevezése?';
-- Q 106 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a darbuka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dob', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a darbuka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gitár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a darbuka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'furulya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a darbuka?';
-- Q 107 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a szajkó népies elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mátyásmadár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a szajkó népies elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'palimadár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a szajkó népies elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'királymadár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a szajkó népies elnevezése?';
-- Q 108 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a barrakuda?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halfajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a barrakuda?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szélfajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a barrakuda?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hangszer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a barrakuda?';
-- Q 109 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kakasmandikó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növényfaj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kakasmandikó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'állatfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kakasmandikó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ruhadarab', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kakasmandikó?';
-- Q 110 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a barbitosz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hangszer', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a barbitosz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'étel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a barbitosz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hegység', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a barbitosz?';
COMMIT;
BEGIN;
-- Q 111 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mitől fél, aki klausztrofóbiás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bezártságtól', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mitől fél, aki klausztrofóbiás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pókoktól', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mitől fél, aki klausztrofóbiás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagy terektől', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mitől fél, aki klausztrofóbiás?';
-- Q 112 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a raglán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kabát', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a raglán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lábbeli', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a raglán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fejfedő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a raglán?';
-- Q 113 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen ember, aki nárcisztikus?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'önimádó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ember, aki nárcisztikus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'önfeláldozó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ember, aki nárcisztikus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ravasz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ember, aki nárcisztikus?';
-- Q 114 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a tramini?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'borszőlőfajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tramini?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárfajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tramini?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tramini?';
-- Q 115 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mik a fosszíliák?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ősmaradványok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mik a fosszíliák?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafajták', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mik a fosszíliák?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pálinkafajták', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mik a fosszíliák?';
-- Q 116 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a karakk?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vitorláshajó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a karakk?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szélfajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a karakk?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'repülőgép', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a karakk?';
-- Q 117 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kvaterka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'borospohár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kvaterka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sós sütemény', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kvaterka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'régi ruhadarab', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kvaterka?';
-- Q 118 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az erg?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'homoktenger', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az erg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'síkság', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az erg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'völgy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az erg?';
-- Q 119 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a bentévi?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárfaj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a bentévi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'halfajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a bentévi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növényfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a bentévi?';
-- Q 120 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a hosszúság mértékegysége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'méter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a hosszúság mértékegysége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kilogramm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a hosszúság mértékegysége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'amper', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a hosszúság mértékegysége?';
COMMIT;
BEGIN;
-- Q 121 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kapotnyak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kapotnyak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gomba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kapotnyak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kígyó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kapotnyak?';
-- Q 122 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a macskaszem?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ásvány', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a macskaszem?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyógynövény', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a macskaszem?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gomba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a macskaszem?';
-- Q 123 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem nemesgáz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fluor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik nem nemesgáz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'argon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik nem nemesgáz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hélium', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik nem nemesgáz?';
-- Q 124 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a moréna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kőzettörmelék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a moréna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kihalt állat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a moréna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sivatag', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a moréna?';
-- Q 125 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen színű a zafir?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen színű a zafir?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöld', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen színű a zafir?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vörös', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen színű a zafir?';
-- Q 126 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a beléndek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mérgező növény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a beléndek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vízi állat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a beléndek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'régi fejfedő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a beléndek?';
-- Q 127 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a gumigyártás alapanyaga?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kaucsuk', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik a gumigyártás alapanyaga?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyanta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik a gumigyártás alapanyaga?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szilikon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik a gumigyártás alapanyaga?';
-- Q 128 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a zsorzsett?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'női ruhaanyag', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a zsorzsett?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ülőhely', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a zsorzsett?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'létra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a zsorzsett?';
-- Q 129 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a gödölye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fiatal kecske', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a gödölye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'édes étel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a gödölye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'drágakő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a gödölye?';
-- Q 130 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az arany vegyjele?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Au', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az arany vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az arany vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hg', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az arany vegyjele?';
COMMIT;
BEGIN;
-- Q 131 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki találta fel a Rubik-kockát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rubik Ernő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki találta fel a Rubik-kockát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rubik Géza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki találta fel a Rubik-kockát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rubik Ágoston', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki találta fel a Rubik-kockát?';
-- Q 132 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány betűből áll a magyar ábécé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '40', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány betűből áll a magyar ábécé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '30', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány betűből áll a magyar ábécé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány betűből áll a magyar ábécé?';
-- Q 133 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a bózsa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'katicabogár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a bózsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'krumplibogár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a bózsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szarvasbogár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a bózsa?';
-- Q 134 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a vörösburgundia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cékla', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vörösburgundia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'borsó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vörösburgundia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vörösburgundia?';
-- Q 135 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a csillámpala?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kőzetfajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csillámpala?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'állatfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csillámpala?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyógynövény', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csillámpala?';
-- Q 136 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a bubulyka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kamilla', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a bubulyka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'eper', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a bubulyka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyermekláncfű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a bubulyka?';
-- Q 137 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Havasi Balázs?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zongoraművész', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki Havasi Balázs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'énekes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki Havasi Balázs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'színész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki Havasi Balázs?';
-- Q 138 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az angyaltrombita?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mérgező növény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az angyaltrombita?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vízi állat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az angyaltrombita?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az angyaltrombita?';
-- Q 139 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a December hónap régi elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Karácsony hava', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a December hónap régi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Boldogasszony hava', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a December hónap régi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Böjtelő hava', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a December hónap régi elnevezése?';
-- Q 140 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Samu Géza?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szobrászművész', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Samu Géza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'humorista', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Samu Géza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'költő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Samu Géza?';
COMMIT;
BEGIN;
-- Q 141 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen a mefitikus?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'büdös', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen a mefitikus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hosszú', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen a mefitikus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'széles', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen a mefitikus?';
-- Q 142 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány kertitörpéje van a legnagyobb kertitörpe-gyüjtőnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2042', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány kertitörpéje van a legnagyobb kertitörpe-gyüjtőnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '675', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány kertitörpéje van a legnagyobb kertitörpe-gyüjtőnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1456', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány kertitörpéje van a legnagyobb kertitörpe-gyüjtőnek?';
-- Q 143 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen a melankolikus ember?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lehangolt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen a melankolikus ember?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jókedvű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen a melankolikus ember?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szétszórt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen a melankolikus ember?';
-- Q 144 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány liter tejet tud megfejni 2 perc alatt egy német férfi, a Guinness Rekordok Könyve szerint?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2 liter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány liter tejet tud megfejni 2 perc alatt egy német férfi, a Guinness Rekordok Könyve szerint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1 liter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány liter tejet tud megfejni 2 perc alatt egy német férfi, a Guinness Rekordok Könyve szerint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5 liter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány liter tejet tud megfejni 2 perc alatt egy német férfi, a Guinness Rekordok Könyve szerint?';
-- Q 145 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a magma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kőzetanyag', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a magma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyümölcs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a magma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'régi ruhadarab', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a magma?';
-- Q 146 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor rendezték meg először a Miss Hungary szépségversenyt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1929-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor rendezték meg először a Miss Hungary szépségversenyt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1985-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor rendezték meg először a Miss Hungary szépségversenyt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1976-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor rendezték meg először a Miss Hungary szépségversenyt?';
-- Q 147 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Joó Rózsi?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'színésznő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Joó Rózsi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'opera énekesnő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Joó Rózsi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ballettáncos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Joó Rózsi?';
-- Q 148 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen betegségben szenvedőknek védőszentje Szent-Luca?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szem', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen betegségben szenvedőknek védőszentje Szent-Luca?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szív', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen betegségben szenvedőknek védőszentje Szent-Luca?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vese', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen betegségben szenvedőknek védőszentje Szent-Luca?';
-- Q 149 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen aki rabiátus?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'indulatos', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen aki rabiátus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'önérzetes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen aki rabiátus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'okoskodó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen aki rabiátus?';
-- Q 150 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a rucsni?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csúszda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a rucsni?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'labda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a rucsni?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szoba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a rucsni?';
COMMIT;
BEGIN;
-- Q 151 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a fado?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zenei műfaj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a fado?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hangszer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a fado?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'leves', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a fado?';
-- Q 152 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány cm magas a világ legmagasabb embere?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '246 cm', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány cm magas a világ legmagasabb embere?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '222 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány cm magas a világ legmagasabb embere?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '280 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány cm magas a világ legmagasabb embere?';
-- Q 153 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Lux Elek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szobrász', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Lux Elek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'politikus', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Lux Elek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'színész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Lux Elek?';
-- Q 154 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány cm magas a világ legkisebb embere?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '73', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány cm magas a világ legkisebb embere?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '85', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány cm magas a világ legkisebb embere?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '66', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány cm magas a világ legkisebb embere?';
-- Q 155 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Püthagorasz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ókori filozófus', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Püthagorasz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ókori hadvezér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Püthagorasz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'görög történetíró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Püthagorasz?';
-- Q 156 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az aulosz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fúvós hangszer', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az aulosz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'déligyümölcs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az aulosz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyógynövény', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az aulosz?';
-- Q 157 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen atomokból áll a gyémánt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szén', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen atomokból áll a gyémánt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'titán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen atomokból áll a gyémánt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen atomokból áll a gyémánt?';
-- Q 158 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Minek a képlete a HCl?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sósav', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a képlete a HCl?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'klórsav', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a képlete a HCl?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'salétromsav', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a képlete a HCl?';
-- Q 159 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben jelent meg a világ első keresztrejtvénye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1913-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik évben jelent meg a világ első keresztrejtvénye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1928-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik évben jelent meg a világ első keresztrejtvénye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1967-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik évben jelent meg a világ első keresztrejtvénye?';
-- Q 160 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor készítette el Wilhelm Röntgen az első rtg. képet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1895-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor készítette el Wilhelm Röntgen az első rtg. képet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1921-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor készítette el Wilhelm Röntgen az első rtg. képet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1954-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor készítette el Wilhelm Röntgen az első rtg. képet?';
COMMIT;
BEGIN;
-- Q 161 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miről készítette el Wilhelm Röntgen, az első rtg.képet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'felesége kezéről', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miről készítette el Wilhelm Röntgen, az első rtg.képet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'felesége térdéről', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miről készítette el Wilhelm Röntgen, az első rtg.képet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lánya válláról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miről készítette el Wilhelm Röntgen, az első rtg.képet?';
-- Q 162 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben volt a rágógumi szabadalmaztatása?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1869-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik évben volt a rágógumi szabadalmaztatása?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1923-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik évben volt a rágógumi szabadalmaztatása?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1987-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik évben volt a rágógumi szabadalmaztatása?';
-- Q 163 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kalcium-karbonát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mészkő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kalcium-karbonát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szénsav', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kalcium-karbonát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'metán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kalcium-karbonát?';
-- Q 164 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Teréz anya másik neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kalkuttai Szent Teréz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Teréz anya másik neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiai Szent Teréz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Teréz anya másik neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Apáczai Szent Teréz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Teréz anya másik neve?';
-- Q 165 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kik a fagyosszentek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pongrác - Szevác - Bonifác', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kik a fagyosszentek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sándor - József - Benedek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kik a fagyosszentek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ádám - Éva - István', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kik a fagyosszentek?';
-- Q 166 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miben halt meg Jurij Gagarin?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'repülőgép-balesetben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miben halt meg Jurij Gagarin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'betegségben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miben halt meg Jurij Gagarin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'autóbalesetben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miben halt meg Jurij Gagarin?';
-- Q 167 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen pénznem van Csehországban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'korona', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen pénznem van Csehországban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'euró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen pénznem van Csehországban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'frank', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen pénznem van Csehországban?';
-- Q 168 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kemanesz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vonós hangszer', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kemanesz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'görög édesség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kemanesz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'régi ruhadarab', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kemanesz?';
-- Q 169 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikortól lehet Magyarországon öttöslottóval játszani?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1957. márc. 7-től', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikortól lehet Magyarországon öttöslottóval játszani?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1976. jan. 7-től', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikortól lehet Magyarországon öttöslottóval játszani?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1966. okt. 21-től', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikortól lehet Magyarországon öttöslottóval játszani?';
-- Q 170 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Ilosfalvy Róbert?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'operaénekes', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki Ilosfalvy Róbert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'balettáncos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki Ilosfalvy Róbert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'humorista', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki Ilosfalvy Róbert?';
COMMIT;
BEGIN;
-- Q 171 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen pénznem van Belgiumban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'euró', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen pénznem van Belgiumban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'leva', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen pénznem van Belgiumban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'korona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen pénznem van Belgiumban?';
-- Q 172 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kiknek a védőszentje Szent Bálint?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szerelmesek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kiknek a védőszentje Szent Bálint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tűzoltók', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kiknek a védőszentje Szent Bálint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tudósok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kiknek a védőszentje Szent Bálint?';
-- Q 173 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a nők védőszentje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent Angéla', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki a nők védőszentje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent Borbála', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki a nők védőszentje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent Genovéva', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki a nők védőszentje?';
-- Q 174 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kamin?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kandalló', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kamin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kosztüm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kamin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'állólámpa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kamin?';
-- Q 175 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor szűnt meg a MALÉV?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2012-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor szűnt meg a MALÉV?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2014-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor szűnt meg a MALÉV?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2011-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor szűnt meg a MALÉV?';
-- Q 176 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki találta fel a könyvnyomtatást?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Johannes Gutenberg', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki találta fel a könyvnyomtatást?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Luther Márton', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki találta fel a könyvnyomtatást?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Marshall McLuhan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki találta fel a könyvnyomtatást?';
-- Q 177 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen ember aki filantróp?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emberbarát', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ember aki filantróp?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'költekező', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ember aki filantróp?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'irigy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ember aki filantróp?';
-- Q 178 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben szűnt meg az iwiw?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2014-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik évben szűnt meg az iwiw?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2012-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik évben szűnt meg az iwiw?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik évben szűnt meg az iwiw?';
-- Q 179 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a holográfia feltalálója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gábor Dénes', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki a holográfia feltalálója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Wigner Jenő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki a holográfia feltalálója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lénárd Fülöp', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki a holográfia feltalálója?';
-- Q 180 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évszak van a makk ászon a magyar kártyában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tél', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik évszak van a makk ászon a magyar kártyában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik évszak van a makk ászon a magyar kártyában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ősz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik évszak van a makk ászon a magyar kártyában?';
COMMIT;
BEGIN;
-- Q 181 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a nikkel vegyjele?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ni', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a nikkel vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'N', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a nikkel vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ny', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a nikkel vegyjele?';
-- Q 182 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a balafánt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'borszőlőfajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a balafánt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'elefántfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a balafánt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pengetős hangszer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a balafánt?';
-- Q 183 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hullámok képződnek a mikrohullámú sütőben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'elektromágneses', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen hullámok képződnek a mikrohullámú sütőben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mechanikai', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen hullámok képződnek a mikrohullámú sütőben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gravitációs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen hullámok képződnek a mikrohullámú sütőben?';
-- Q 184 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen halmazállapotú a hélium?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gáz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen halmazállapotú a hélium?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'folyékony', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen halmazállapotú a hélium?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szilárd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen halmazállapotú a hélium?';
-- Q 185 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország a tarokk kártyajáték őshazája?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik ország a tarokk kártyajáték őshazája?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik ország a tarokk kártyajáték őshazája?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik ország a tarokk kártyajáték őshazája?';
-- Q 186 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évesen indult Palvin Barbara modellkarrierje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '13', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány évesen indult Palvin Barbara modellkarrierje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány évesen indult Palvin Barbara modellkarrierje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '15', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány évesen indult Palvin Barbara modellkarrierje?';
-- Q 187 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen mestert neveztek régen gerencsérnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fazekasmestert', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen mestert neveztek régen gerencsérnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cipészmestert', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen mestert neveztek régen gerencsérnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ácsmestert', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen mestert neveztek régen gerencsérnek?';
-- Q 188 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hal a kandiru?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vámpírhal', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen hal a kandiru?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'doktorhal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen hal a kandiru?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bohóchal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen hal a kandiru?';
-- Q 189 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen új bankjegyek kerültek forgalomba 2017-márc.1-től?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2 és 5000 Ft-os', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen új bankjegyek kerültek forgalomba 2017-márc.1-től?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10 és 20 ezer Ft-os', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen új bankjegyek kerültek forgalomba 2017-márc.1-től?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ezer és 500 Ft-os', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen új bankjegyek kerültek forgalomba 2017-márc.1-től?';
-- Q 190 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a legnagyobb atomtömegű?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'higany', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik a legnagyobb atomtömegű?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'platina', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik a legnagyobb atomtömegű?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'arany', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik a legnagyobb atomtömegű?';
COMMIT;
BEGIN;
-- Q 191 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány fokon forr a víz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '100', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány fokon forr a víz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1000', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány fokon forr a víz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '500', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány fokon forr a víz?';
-- Q 192 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a réz vegyjele?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cu', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a réz vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a réz vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a réz vegyjele?';
-- Q 193 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország tánca a habanera?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kuba', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik ország tánca a habanera?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik ország tánca a habanera?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mexikó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik ország tánca a habanera?';
-- Q 194 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a pajszer?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'feszítővas', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a pajszer?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ruhadarab', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a pajszer?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fáskamra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a pajszer?';
-- Q 195 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen szín a karmazsin?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sötétvörös', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen szín a karmazsin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sötétkék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen szín a karmazsin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'méregzöld', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen szín a karmazsin?';
-- Q 196 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik királyunk látható a 10 000 Ft-os bankjegyen?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent István király', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik királyunk látható a 10 000 Ft-os bankjegyen?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mátyás király', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik királyunk látható a 10 000 Ft-os bankjegyen?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Béla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik királyunk látható a 10 000 Ft-os bankjegyen?';
-- Q 197 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mijét vesztette el aki amnéziás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlékezetét', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mijét vesztette el aki amnéziás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hallását', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mijét vesztette el aki amnéziás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zsebkendőjét', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mijét vesztette el aki amnéziás?';
-- Q 198 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a vademecum?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zsebkönyv', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vademecum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'desszertkülönlegesség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vademecum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'régi bútordarab', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vademecum?';
-- Q 199 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi a háromszög belső szögeinek összege?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '180 fok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi a háromszög belső szögeinek összege?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '360 fok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi a háromszög belső szögeinek összege?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '90 fok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi a háromszög belső szögeinek összege?';
-- Q 200 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a tamariska?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tamariska?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hangszer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tamariska?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'állat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tamariska?';
COMMIT;
BEGIN;
-- Q 201 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki kapta a legjobb női műsorvezetőnek járó díjat a Televíziós Újságírók Díjkiosztóján?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ördög Nóra', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki kapta a legjobb női műsorvezetőnek járó díjat a Televíziós Újságírók Díjkiosztóján?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Liptai Claudia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki kapta a legjobb női műsorvezetőnek járó díjat a Televíziós Újságírók Díjkiosztóján?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lilu', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki kapta a legjobb női műsorvezetőnek járó díjat a Televíziós Újságírók Díjkiosztóján?';
-- Q 202 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a brigg?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vitorlás hajó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a brigg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'evezős csónak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a brigg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'óceánjáró hajó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a brigg?';
-- Q 203 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor fogadták el, hogy nagypéntek munkaszüneti nap legyen?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'március 7-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor fogadták el, hogy nagypéntek munkaszüneti nap legyen?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'március 14-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor fogadták el, hogy nagypéntek munkaszüneti nap legyen?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'február 10-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mikor fogadták el, hogy nagypéntek munkaszüneti nap legyen?';
-- Q 204 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen térbeli alakzat a hexaéder?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kocka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen térbeli alakzat a hexaéder?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'téglatest', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen térbeli alakzat a hexaéder?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'henger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen térbeli alakzat a hexaéder?';
-- Q 205 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy szoknyafajta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bukjelszoknya', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik egy szoknyafajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kapjelszoknya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik egy szoknyafajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fogdmegszoknya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik egy szoknyafajta?';
-- Q 206 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a Yolo szleng?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csak egyszer élsz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a Yolo szleng?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nincs új a nap alatt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a Yolo szleng?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'minden kezdet nehéz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a Yolo szleng?';
-- Q 207 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen színű az akvamarin drágakő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kékeszöld', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen színű az akvamarin drágakő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bíborvörös', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen színű az akvamarin drágakő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ibolya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen színű az akvamarin drágakő?';
-- Q 208 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem vezette soha a "Legyen Ön is milliomos!" televíziós kvízjátékot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egri János', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki nem vezette soha a "Legyen Ön is milliomos!" televíziós kvízjátékot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Friderikusz Sándor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki nem vezette soha a "Legyen Ön is milliomos!" televíziós kvízjátékot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fábry Sándor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki nem vezette soha a "Legyen Ön is milliomos!" televíziós kvízjátékot?';
-- Q 209 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent az oktogon szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyolcszög', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az oktogon szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hatszög', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az oktogon szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'háromszög', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az oktogon szó?';
-- Q 210 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik két fő alkotórészből áll a levegő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oxigén és nitrogén', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik két fő alkotórészből áll a levegő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oxigén és hidrogén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik két fő alkotórészből áll a levegő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hidrogén és hélium', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik két fő alkotórészből áll a levegő?';
COMMIT;
BEGIN;
-- Q 211 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a pántlika?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szalag', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a pántlika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kesztyű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a pántlika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lábbeli', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a pántlika?';
-- Q 212 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az oxigén rendszáma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az oxigén rendszáma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '13', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az oxigén rendszáma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '21', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az oxigén rendszáma?';
-- Q 213 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Minek a rövidítése a Kft?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'korlátolt felelősségű társaság', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a rövidítése a Kft?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kombinált felelősségű társaság', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a rövidítése a Kft?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'korlátolt felelősségű társulat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a rövidítése a Kft?';
-- Q 214 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a szinesztézia szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'összeérzés', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a szinesztézia szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fogékonyság', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a szinesztézia szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'támogatás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a szinesztézia szó?';
-- Q 215 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi 1 liter levegő tömege?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1.293 gramm', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi 1 liter levegő tömege?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2.467 gramm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi 1 liter levegő tömege?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4.125 gramm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi 1 liter levegő tömege?';
-- Q 216 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen halmazállapotú a kripton?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gáz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen halmazállapotú a kripton?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'folyékony', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen halmazállapotú a kripton?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szilárd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen halmazállapotú a kripton?';
-- Q 217 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Nemzetközi Valutaalap rövidítése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IMF', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Nemzetközi Valutaalap rövidítése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'NVA', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Nemzetközi Valutaalap rövidítése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IMA', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Nemzetközi Valutaalap rövidítése?';
-- Q 218 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a paralel szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'párhuzamos', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a paralel szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szimmetrikus', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a paralel szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vízszintes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a paralel szó?';
-- Q 219 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy nevezzük azt a folyamatot amikor szilárd anyag gőzzé alakul?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szublimáció', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hogy nevezzük azt a folyamatot amikor szilárd anyag gőzzé alakul?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'párolgás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hogy nevezzük azt a folyamatot amikor szilárd anyag gőzzé alakul?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kondenzáció', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hogy nevezzük azt a folyamatot amikor szilárd anyag gőzzé alakul?';
-- Q 220 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kit neveznek a "matematika fejedelmének"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Carl Friedrich Gausst', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kit neveznek a "matematika fejedelmének"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Klaudiosz Ptolemaioszt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kit neveznek a "matematika fejedelmének"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fritz Oberhettingert', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kit neveznek a "matematika fejedelmének"?';
COMMIT;
BEGIN;
-- Q 221 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a legnagyobb szám a rulettben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '36', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik a legnagyobb szám a rulettben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '28', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik a legnagyobb szám a rulettben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik a legnagyobb szám a rulettben?';
-- Q 222 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a segélyhívószám az Európai Unióban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '112', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a segélyhívószám az Európai Unióban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '118', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a segélyhívószám az Európai Unióban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '115', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a segélyhívószám az Európai Unióban?';
-- Q 223 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik játékot játsszák magyar kártyával?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Snapszer', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik játékot játsszák magyar kártyával?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bridzs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik játékot játsszák magyar kártyával?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanaszta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik játékot játsszák magyar kártyával?';
-- Q 224 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a mirin?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rizsből készült bor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a mirin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'régi bútordarab', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a mirin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'állatfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a mirin?';
-- Q 225 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a lepketapló?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafaj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a lepketapló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a lepketapló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lepkefaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a lepketapló?';
-- Q 226 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a rikiki?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kártyajáték', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a rikiki?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'állat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a rikiki?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hangszer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a rikiki?';
-- Q 227 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a csirimojó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyümölcs', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csirimojó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyógynövény', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csirimojó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csirimojó?';
-- Q 228 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi egy tucat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi egy tucat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi egy tucat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '24', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi egy tucat?';
-- Q 229 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a racketlon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ütővel játszható sport', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a racketlon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'repülőeszköz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a racketlon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'társasjáték', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a racketlon?';
-- Q 230 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Mentők hívószáma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '104', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Mentők hívószáma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '105', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Mentők hívószáma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '107', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Mentők hívószáma?';
COMMIT;
BEGIN;
-- Q 231 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit mutat meg a pH érték?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oldat kémhatását', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit mutat meg a pH érték?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oldat koncentrációát', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit mutat meg a pH érték?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oldat tömegét', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit mutat meg a pH érték?';
-- Q 232 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen színű lesz a lakmuszpapír lúgos oldatban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen színű lesz a lakmuszpapír lúgos oldatban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vörös', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen színű lesz a lakmuszpapír lúgos oldatban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöld', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen színű lesz a lakmuszpapír lúgos oldatban?';
-- Q 233 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Bolygó Hollandi?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hajó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Bolygó Hollandi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vonat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Bolygó Hollandi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'helikopter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Bolygó Hollandi?';
-- Q 234 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi kezdte meg működését 1957. május 1-én?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Magyar Televízió', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi kezdte meg működését 1957. május 1-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Magyar Rádió', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi kezdte meg működését 1957. május 1-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Magyar Gárda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi kezdte meg működését 1957. május 1-én?';
-- Q 235 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mitől fél aki nomofóbiás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a mobiltelefon hiányától', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mitől fél aki nomofóbiás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a pókoktól', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mitől fél aki nomofóbiás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a magasságtól', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mitől fél aki nomofóbiás?';
-- Q 236 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kotla?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'edényféle', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kotla?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'régi pénzérme', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kotla?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ruhadarab', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kotla?';
-- Q 237 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Minek a rövidítése az ENSZ?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyesült Nemzetek Szervezete', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a rövidítése az ENSZ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyesült Nemzetközi Szerv', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a rövidítése az ENSZ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyéni Nevelési Szervezet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a rövidítése az ENSZ?';
-- Q 238 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Szipál Márton?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fotóművész', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Szipál Márton?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'festőművész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Szipál Márton?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zeneszerző', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Szipál Márton?';
-- Q 239 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a 30. házassági évforduló neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyöngylakodalom', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a 30. házassági évforduló neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ezüstlakodalom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a 30. házassági évforduló neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rubinlakodalom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a 30. házassági évforduló neve?';
-- Q 240 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kübli?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pohár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kübli?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'édesség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kübli?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jármű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kübli?';
COMMIT;
BEGIN;
-- Q 241 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mitől fél aki künofóbiás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kutyáktól', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mitől fél aki künofóbiás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egerektől', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mitől fél aki künofóbiás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kígyóktól', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mitől fél aki künofóbiás?';
-- Q 242 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a hencser?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'heverő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a hencser?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'asztal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a hencser?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ablak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a hencser?';
-- Q 243 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a szürkebarát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szőlőfajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a szürkebarát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'emlős állat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a szürkebarát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gombafaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a szürkebarát?';
-- Q 244 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az alpinizmus?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hegymászás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az alpinizmus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'japán harcművészet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az alpinizmus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'táblajáték', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az alpinizmus?';
-- Q 245 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kintorna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'régi hangszer', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kintorna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szabadban végezhető sport', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kintorna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kinzóeszköz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kintorna?';
-- Q 246 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a periódusos rendszer első eleme?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hidrogén', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a periódusos rendszer első eleme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hélium', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a periódusos rendszer első eleme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nátrium', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a periódusos rendszer első eleme?';
-- Q 247 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Rökk Marika?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'operettprimadonna', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Rökk Marika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kerámiaművész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Rökk Marika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'író', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Rökk Marika?';
-- Q 248 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mitől fél aki monofóbiás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egyedülléttől', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mitől fél aki monofóbiás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mélységtől', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mitől fél aki monofóbiás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'víztől', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mitől fél aki monofóbiás?';
-- Q 249 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kurkuma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fűszernövény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kurkuma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyerekjáték', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kurkuma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hangszer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a kurkuma?';
-- Q 250 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a fregatt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hadihajó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a fregatt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'társasjáték', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a fregatt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hangszer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a fregatt?';
COMMIT;
BEGIN;
-- Q 251 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a GM49?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'magyar együttes', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a GM49?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vulkán neve', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a GM49?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kisbolygó neve', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a GM49?';
-- Q 252 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az ólom vegyjele?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pb', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az ólom vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az ólom vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az ólom vegyjele?';
-- Q 253 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen orvosi vizsgálatok során használnak gadonlíniumot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'MR vizsgálat', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen orvosi vizsgálatok során használnak gadonlíniumot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'CT vizsgálat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen orvosi vizsgálatok során használnak gadonlíniumot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'röntgen vizsgálat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen orvosi vizsgálatok során használnak gadonlíniumot?';
-- Q 254 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol került megrendezésre az Anna-bál?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonfüreden', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hol került megrendezésre az Anna-bál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonföldváron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hol került megrendezésre az Anna-bál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonbogláron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hol került megrendezésre az Anna-bál?';
-- Q 255 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a dikó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ágy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a dikó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'asztal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a dikó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a dikó?';
-- Q 256 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a tűzoltóság hívószáma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '105', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tűzoltóság hívószáma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '106', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tűzoltóság hívószáma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '107', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tűzoltóság hívószáma?';
-- Q 257 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik női keresztnév nem egy szőlőfajta neve is?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Judit', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik női keresztnév nem egy szőlőfajta neve is?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eszter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik női keresztnév nem egy szőlőfajta neve is?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Anita', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik női keresztnév nem egy szőlőfajta neve is?';
-- Q 258 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a csacsacsa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'táncféle', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csacsacsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csacsacsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyerekjáték', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csacsacsa?';
-- Q 259 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki kapott Nobel-békedíjat az alábbiak közül?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Barack Obama', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki kapott Nobel-békedíjat az alábbiak közül?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mahatma Gandhi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki kapott Nobel-békedíjat az alábbiak közül?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. János Pál pápa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki kapott Nobel-békedíjat az alábbiak közül?';
-- Q 260 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a filantrópia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jótékonykodás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a filantrópia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'shoppingolás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a filantrópia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'imádkozás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a filantrópia?';
COMMIT;
BEGIN;
-- Q 261 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az általános segélyhívó szám?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '112', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az általános segélyhívó szám?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '116', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az általános segélyhívó szám?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '121', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az általános segélyhívó szám?';
-- Q 262 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy francia kártyával játszott játék?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kanaszta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik egy francia kártyával játszott játék?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'makaó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik egy francia kártyával játszott játék?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'snapszer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik egy francia kártyával játszott játék?';
-- Q 263 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az echo?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'visszhang', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az echo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'közjáték', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az echo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dal - ének', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az echo?';
-- Q 264 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a vigvam?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'indián sátor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vigvam?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'indián szerszám', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vigvam?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'indián fejfedő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vigvam?';
-- Q 265 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az oxigén vegyjele?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'O', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az oxigén vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ox', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az oxigén vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Og', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az oxigén vegyjele?';
-- Q 266 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a csabagyöngye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szőlőfajta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csabagyöngye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'almafajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csabagyöngye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szilvafajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a csabagyöngye?';
-- Q 267 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van a székhelye az UNESCO-nak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hol van a székhelye az UNESCO-nak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brüsszelben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hol van a székhelye az UNESCO-nak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rómában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hol van a székhelye az UNESCO-nak?';
-- Q 268 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Németország gépkocsijelzése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'D', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Németország gépkocsijelzése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'N', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Németország gépkocsijelzése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi Németország gépkocsijelzése?';
-- Q 269 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki az USA jelenlegi elnöke?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Donald Trump', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki az USA jelenlegi elnöke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Barack Obama', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki az USA jelenlegi elnöke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George W. Bush', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki az USA jelenlegi elnöke?';
-- Q 270 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Rendőrség hívószáma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '107', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Rendőrség hívószáma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '105', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Rendőrség hívószáma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '104', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a Rendőrség hívószáma?';
COMMIT;
BEGIN;
-- Q 271 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a tobogán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'téli sporteszköz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tobogán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárféle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tobogán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'régi ruhadarab', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a tobogán?';
-- Q 272 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a millennium szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ezeréves évforduló', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a millennium szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tízéves évforduló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a millennium szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'százéves évforduló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent a millennium szó?';
-- Q 273 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit csinál az, aki pacifikál?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'békéltet', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál az, aki pacifikál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyógyít', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál az, aki pacifikál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'aláír', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit csinál az, aki pacifikál?';
-- Q 274 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen eredetű tánc a szamba?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'afrikai', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen eredetű tánc a szamba?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'spanyol', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen eredetű tánc a szamba?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'brazil', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen eredetű tánc a szamba?';
-- Q 275 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Bonnie bűnöző párja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Clyde', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Bonnie bűnöző párja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rómeó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Bonnie bűnöző párja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Stan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki volt Bonnie bűnöző párja?';
-- Q 276 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy orvosok által használt eszköz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sztetoszkóp', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik egy orvosok által használt eszköz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'periszkóp', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik egy orvosok által használt eszköz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'monoszkóp', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik egy orvosok által használt eszköz?';
-- Q 277 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit mérnek a barométerrel?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'légnyomást', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit mérnek a barométerrel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szélerősséget', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit mérnek a barométerrel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hőmérsékletet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit mérnek a barométerrel?';
-- Q 278 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a fő alkotóeleme a fogászatban használt amalgámnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'higany', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a fő alkotóeleme a fogászatban használt amalgámnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a fő alkotóeleme a fogászatban használt amalgámnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alumínium', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a fő alkotóeleme a fogászatban használt amalgámnak?';
-- Q 279 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a winchester magyar elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'merevlemez', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a winchester magyar elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hajlékonylemez', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a winchester magyar elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bakelitlemez', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a winchester magyar elnevezése?';
-- Q 280 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy operációs rendszer?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Microsoft Windows', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik egy operációs rendszer?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Microsoft Office', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik egy operációs rendszer?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Internet Explorer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik egy operációs rendszer?';
COMMIT;
BEGIN;
-- Q 281 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi a téglalap belső szögeinek összege?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '360 fok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi a téglalap belső szögeinek összege?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '180 fok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi a téglalap belső szögeinek összege?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '260 fok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi a téglalap belső szögeinek összege?';
-- Q 282 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent az apokalipszis szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kinyilatkoztatás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az apokalipszis szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'elidegenedés', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az apokalipszis szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'felhatalmazás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az apokalipszis szó?';
-- Q 283 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mivel foglalkozik az ornitológus?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madarakkal', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mivel foglalkozik az ornitológus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pókokkal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mivel foglalkozik az ornitológus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'néprajzzal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mivel foglalkozik az ornitológus?';
-- Q 284 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miknek a tárolására alkalmas fájlfomátum a jpeg?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'képek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miknek a tárolására alkalmas fájlfomátum a jpeg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'videok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miknek a tárolására alkalmas fájlfomátum a jpeg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dokumentumok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miknek a tárolására alkalmas fájlfomátum a jpeg?';
-- Q 285 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a cunami?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szökőár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a cunami?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'földrengés', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a cunami?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vulkánkitörés', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a cunami?';
-- Q 286 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit a szelfi?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'önfotó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit a szelfi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'önéletrajz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit a szelfi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'önámítás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit a szelfi?';
-- Q 287 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen eredetű férfinév a Szilveszter?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'latin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen eredetű férfinév a Szilveszter?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'görög', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen eredetű férfinév a Szilveszter?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'német', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen eredetű férfinév a Szilveszter?';
-- Q 288 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a pézsma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'illatszer', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a pézsma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'növényfaj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a pézsma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ruhadarab', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a pézsma?';
-- Q 289 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem hungarikum?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jókai-bableves', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik nem hungarikum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egri Bikavér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik nem hungarikum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Törley pezsgő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik nem hungarikum?';
-- Q 290 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a gyász színe Japánban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fehér', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a gyász színe Japánban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a gyász színe Japánban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sárga', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a gyász színe Japánban?';
COMMIT;
BEGIN;
-- Q 291 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen ember a panamista?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szélhámos', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ember a panamista?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'figyelmes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ember a panamista?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bolondos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ember a panamista?';
-- Q 292 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik szervünk állítja elő a legtöbb koleszterint?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'máj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik szervünk állítja elő a legtöbb koleszterint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pajzsmirigy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik szervünk állítja elő a legtöbb koleszterint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vese', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik szervünk állítja elő a legtöbb koleszterint?';
-- Q 293 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú az M1-es autópálya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '171 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen hosszú az M1-es autópálya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '230 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen hosszú az M1-es autópálya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '154 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen hosszú az M1-es autópálya?';
-- Q 294 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a vészjelzés jele?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'SOS', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vészjelzés jele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'SOL', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vészjelzés jele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'GSO', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a vészjelzés jele?';
-- Q 295 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a garaboly?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kosár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a garaboly?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sátor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a garaboly?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fekvőhely', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a garaboly?';
-- Q 296 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az Arzén vegyjele?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'As', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az Arzén vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ar', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az Arzén vegyjele?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az Arzén vegyjele?';
-- Q 297 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az enigma szó jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rejtély', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az enigma szó jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'erkély', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az enigma szó jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'segély', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az enigma szó jelentése?';
-- Q 298 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a dédszülő szüleinek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ükszülő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a neve a dédszülő szüleinek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szépszülő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a neve a dédszülő szüleinek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ősszülő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a neve a dédszülő szüleinek?';
-- Q 299 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a zsanér?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sarokpánt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a zsanér?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csavar', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a zsanér?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csavaralátét', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a zsanér?';
-- Q 300 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a stewardess?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'légi utaskísérő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki a stewardess?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'revütáncos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki a stewardess?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'filmszínésznő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Ki a stewardess?';
COMMIT;
BEGIN;
-- Q 301 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány darab csillag látható az Európai Unió zászlaján?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány darab csillag látható az Európai Unió zászlaján?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány darab csillag látható az Európai Unió zászlaján?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '24', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány darab csillag látható az Európai Unió zászlaján?';
-- Q 302 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen ami szuperszónikus?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a hangsebességet túllépő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ami szuperszónikus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a fénysebességet túllépő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ami szuperszónikus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szuper képességekkel rendelkező', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen ami szuperszónikus?';
-- Q 303 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik két elem vegyülete az ammónia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nitrogén és hidrogén', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik két elem vegyülete az ammónia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oxigén és hidrogén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik két elem vegyülete az ammónia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hélium és nitrogén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik két elem vegyülete az ammónia?';
-- Q 304 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen fertőző betegség a rubeola?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rózsahimlő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen fertőző betegség a rubeola?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bárányhimlő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen fertőző betegség a rubeola?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kanyaró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen fertőző betegség a rubeola?';
-- Q 305 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sokszögnek van átfogója és befogója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'háromszög', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik sokszögnek van átfogója és befogója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négyszög', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik sokszögnek van átfogója és befogója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hatszög', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik sokszögnek van átfogója és befogója?';
-- Q 306 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik vitamin a riboflavin?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'B2', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik vitamin a riboflavin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'B1', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik vitamin a riboflavin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'B6', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik vitamin a riboflavin?';
-- Q 307 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen eredetű a taxi szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'francia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen eredetű a taxi szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'német', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen eredetű a taxi szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'görög', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen eredetű a taxi szó?';
-- Q 308 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent az infláció szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pénzromlást', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az infláció szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pénzmozgást', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az infláció szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pénzmosást', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent az infláció szó?';
-- Q 309 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az arany latin neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aurum', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az arany latin neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Argentum', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az arany latin neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arborum', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az arany latin neve?';
-- Q 310 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az MLSZ?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Magyar Labdarúgó-szövetség', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az MLSZ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Magyar Labdarúgó-szervezet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az MLSZ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Magyar Labdarúgás Szervezete', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az MLSZ?';
COMMIT;
BEGIN;
-- Q 311 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a múmia szó jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szurok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a múmia szó jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szurdok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a múmia szó jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szurony', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a múmia szó jelentése?';
-- Q 312 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a laktóz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tejcukor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a laktóz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyümölcscukor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a laktóz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szőlőcukor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a laktóz?';
-- Q 313 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kit nevezték régen napamnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'anyóst', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kit nevezték régen napamnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'apóst', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kit nevezték régen napamnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sógort', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Kit nevezték régen napamnak?';
-- Q 314 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az Egészségügyi Világszervezet rövidítése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'WHO', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az Egészségügyi Világszervezet rövidítése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'EGO', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az Egészségügyi Világszervezet rövidítése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'WHI', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi az Egészségügyi Világszervezet rövidítése?';
-- Q 315 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen eredetű név a Xénia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'görög', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen eredetű név a Xénia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szláv', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen eredetű név a Xénia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'német', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen eredetű név a Xénia?';
-- Q 316 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miből áll a metán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szénből és hidrogénből', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miből áll a metán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oxigénból és héliumból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miből áll a metán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nitrogénből és hidrogénből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Miből áll a metán?';
-- Q 317 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mivel foglalkozik a balneográfia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyógyfürdőkkel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mivel foglalkozik a balneográfia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madarakkal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mivel foglalkozik a balneográfia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bálnákkal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mivel foglalkozik a balneográfia?';
-- Q 318 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent magyarul az SMS?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rövidüzenet szolgáltatás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent magyarul az SMS?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'multimédiás üzenetküldési szolgáltatás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent magyarul az SMS?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyors üzenet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mit jelent magyarul az SMS?';
-- Q 319 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, '1 byte hány bit?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='1 byte hány bit?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='1 byte hány bit?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '24', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='1 byte hány bit?';
-- Q 320 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a merengue?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nemzeti tánc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a merengue?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nemzeti étel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a merengue?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nemzeti ital', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a merengue?';
COMMIT;
BEGIN;
-- Q 321 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány Kelvin 0 fok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '273.15', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány Kelvin 0 fok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '123.16', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány Kelvin 0 fok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '23.67', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány Kelvin 0 fok?';
-- Q 322 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen aki makrancos?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'akaratos', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen aki makrancos?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'céltudatos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen aki makrancos?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tökéletes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Milyen aki makrancos?';
-- Q 323 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a fényerősség mértékegysége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kandela', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a fényerősség mértékegysége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'amper', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a fényerősség mértékegysége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mól', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a fényerősség mértékegysége?';
-- Q 324 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a miópia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rövidlátás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a miópia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'távollátás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a miópia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szemtengelyferdülés', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a miópia?';
-- Q 325 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány watt 1 lóerő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '735', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány watt 1 lóerő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '124', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány watt 1 lóerő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '987', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Hány watt 1 lóerő?';
-- Q 326 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi a deltoid belső szögeinek összege?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '360 fok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi a deltoid belső szögeinek összege?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '180 fok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi a deltoid belső szögeinek összege?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '240 fok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mennyi a deltoid belső szögeinek összege?';
-- Q 327 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a parfé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fagylaltszerű édesség', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a parfé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kozmetikai eszköz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a parfé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'háztartási kellék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Mi a parfé?';
-- Q 328 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Minek a rövidítése az IFFB?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Testépítők Nemzetközi Szövetsége', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a rövidítése az IFFB?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ismeretlen Fiúk Barátai', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a rövidítése az IFFB?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Labdarúgók Szövetsége', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Minek a rövidítése az IFFB?';
-- Q 329 in egyeb
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem tartozik a magyar kártya színei közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik nem tartozik a magyar kártya színei közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'piros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik nem tartozik a magyar kártya színei közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöld', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='egyeb' AND q.text='Melyik nem tartozik a magyar kártya színei közé?';
COMMIT;
