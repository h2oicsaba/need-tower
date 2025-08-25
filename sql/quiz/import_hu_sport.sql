-- import_hu_sport.sql (generated)
INSERT INTO languages (code, name) VALUES ('hu','Magyar') ON CONFLICT (code) DO NOTHING;
-- Topic: sport
INSERT INTO topics (language_id, name_hu, name_translated, slug)
SELECT l.id, 'sport', 'sport', 'sport'
FROM languages l WHERE l.code='hu'
ON CONFLICT (slug) DO NOTHING;
BEGIN;
-- Q 1 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor és hol rendezték meg az első nyári olimpiai játékokat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1896 Athén', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor és hol rendezték meg az első nyári olimpiai játékokat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1908 London', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor és hol rendezték meg az első nyári olimpiai játékokat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '932 Los Angeles', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor és hol rendezték meg az első nyári olimpiai játékokat?';
-- Q 2 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a végeredménye a Magyar-Ausztria mérkőzésnek a 2016-os foci EB-n?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2-0', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi volt a végeredménye a Magyar-Ausztria mérkőzésnek a 2016-os foci EB-n?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1-0', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi volt a végeredménye a Magyar-Ausztria mérkőzésnek a 2016-os foci EB-n?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1-1', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi volt a végeredménye a Magyar-Ausztria mérkőzésnek a 2016-os foci EB-n?';
-- Q 3 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol rendezik meg a 2016-os Olimpiai Játékokat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rio de Janeiroban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezik meg a 2016-os Olimpiai Játékokat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezik meg a 2016-os Olimpiai Játékokat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezik meg a 2016-os Olimpiai Játékokat?';
-- Q 4 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nyerte a 2016. május 1-i Forma 1-es futamot (orosz nagydíj)?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nico Rosberg', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nyerte a 2016. május 1-i Forma 1-es futamot (orosz nagydíj)?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lewis Hamilton', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nyerte a 2016. május 1-i Forma 1-es futamot (orosz nagydíj)?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Max Verstappen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nyerte a 2016. május 1-i Forma 1-es futamot (orosz nagydíj)?';
-- Q 5 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évente kerül megrendezésre a labdarúgó EB?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány évente kerül megrendezésre a labdarúgó EB?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány évente kerül megrendezésre a labdarúgó EB?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány évente kerül megrendezésre a labdarúgó EB?';
-- Q 6 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a Forma 1 történetének legsikeresebb versenyzője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Michael Schumacher', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a Forma 1 történetének legsikeresebb versenyzője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nelson Piquet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a Forma 1 történetének legsikeresebb versenyzője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alain Prost', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a Forma 1 történetének legsikeresebb versenyzője?';
-- Q 7 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol rendezték meg a 2016-os kajak-kenu Európa-bajnokságot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Moszkvában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg a 2016-os kajak-kenu Európa-bajnokságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg a 2016-os kajak-kenu Európa-bajnokságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg a 2016-os kajak-kenu Európa-bajnokságot?';
-- Q 8 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol született Lionel Messi a híres focista?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Argentínában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol született Lionel Messi a híres focista?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazíliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol született Lionel Messi a híres focista?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol született Lionel Messi a híres focista?';
-- Q 9 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol rendezték meg a 2016-os labdarúgó Eb-t?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg a 2016-os labdarúgó Eb-t?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Angliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg a 2016-os labdarúgó Eb-t?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg a 2016-os labdarúgó Eb-t?';
-- Q 10 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Michael Phelps úszó, hány aranyérmet nyert 2012-ben Londonban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Michael Phelps úszó, hány aranyérmet nyert 2012-ben Londonban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Michael Phelps úszó, hány aranyérmet nyert 2012-ben Londonban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Michael Phelps úszó, hány aranyérmet nyert 2012-ben Londonban?';
COMMIT;
BEGIN;
-- Q 11 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi lett a Németország-Franciaország mérkőzés végeredménye a foci Eb-n?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '0-2', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi lett a Németország-Franciaország mérkőzés végeredménye a foci Eb-n?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2-0', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi lett a Németország-Franciaország mérkőzés végeredménye a foci Eb-n?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1-1', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi lett a Németország-Franciaország mérkőzés végeredménye a foci Eb-n?';
-- Q 12 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, '2008-ban melyik városban rendezték meg a nyári olimpiai játékokat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2008-ban melyik városban rendezték meg a nyári olimpiai játékokat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atlantában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2008-ban melyik városban rendezték meg a nyári olimpiai játékokat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pekingben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2008-ban melyik városban rendezték meg a nyári olimpiai játékokat?';
-- Q 13 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány aranyérmet szerzett a magyar csapat a 3. Arena junior úszó-Európa-bajnokságon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyérmet szerzett a magyar csapat a 3. Arena junior úszó-Európa-bajnokságon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyérmet szerzett a magyar csapat a 3. Arena junior úszó-Európa-bajnokságon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyérmet szerzett a magyar csapat a 3. Arena junior úszó-Európa-bajnokságon?';
-- Q 14 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik csapat nyerte a 2016-os Foci Eb-t?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapat nyerte a 2016-os Foci Eb-t?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapat nyerte a 2016-os Foci Eb-t?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Portugália', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapat nyerte a 2016-os Foci Eb-t?';
-- Q 15 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben lett világbajnok Talmácsi Gábor?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2007-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik évben lett világbajnok Talmácsi Gábor?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2008-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik évben lett világbajnok Talmácsi Gábor?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik évben lett világbajnok Talmácsi Gábor?';
-- Q 16 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen poszton játszott Puskás Öcsi, a legendás labdarúgó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csatár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen poszton játszott Puskás Öcsi, a legendás labdarúgó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hátvéd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen poszton játszott Puskás Öcsi, a legendás labdarúgó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'középpályás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen poszton játszott Puskás Öcsi, a legendás labdarúgó?';
-- Q 17 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Carl Lewis melyik sportág olimpiai bajnoka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Carl Lewis melyik sportág olimpiai bajnoka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'atlétika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Carl Lewis melyik sportág olimpiai bajnoka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'torna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Carl Lewis melyik sportág olimpiai bajnoka?';
-- Q 18 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány km hosszú a Kékszalag vitorlásverseny?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '160 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány km hosszú a Kékszalag vitorlásverseny?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '240 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány km hosszú a Kékszalag vitorlásverseny?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '190 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány km hosszú a Kékszalag vitorlásverseny?';
-- Q 19 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol rendezték meg 2014-ben a Foci VB-t?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mexikóban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg 2014-ben a Foci VB-t?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Argentínában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg 2014-ben a Foci VB-t?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazíliában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg 2014-ben a Foci VB-t?';
-- Q 20 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Maradona hányas mezt viselt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10-es', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Maradona hányas mezt viselt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '11-es', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Maradona hányas mezt viselt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12-es', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Maradona hányas mezt viselt?';
COMMIT;
BEGIN;
-- Q 21 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, '2020-ban hol rendezik meg a nyári olimpiai játékokat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Athénban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2020-ban hol rendezik meg a nyári olimpiai játékokat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pekingben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2020-ban hol rendezik meg a nyári olimpiai játékokat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tokióban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2020-ban hol rendezik meg a nyári olimpiai játékokat?';
-- Q 22 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen súlycsoportú volt Balzsay Károly ökölvívó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nehézsúlyú', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen súlycsoportú volt Balzsay Károly ökölvívó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'váltósúlyú', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen súlycsoportú volt Balzsay Károly ökölvívó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagyközépsúlyú', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen súlycsoportú volt Balzsay Károly ökölvívó?';
-- Q 23 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek a becene volt a "Magyar delfin"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hajós Alfréd', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Kinek a becene volt a "Magyar delfin"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Komjádi Béla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Kinek a becene volt a "Magyar delfin"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rózsa Norbert', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Kinek a becene volt a "Magyar delfin"?';
-- Q 24 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Repka Attila, bírkózó melyik olimpián nyert aranyérmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1996 Atlanta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Repka Attila, bírkózó melyik olimpián nyert aranyérmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1992 Barcelona', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Repka Attila, bírkózó melyik olimpián nyert aranyérmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000 Sydney', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Repka Attila, bírkózó melyik olimpián nyert aranyérmet?';
-- Q 25 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor rendezték meg a Forma 1 Magyar Nagydíját a Hungaroringen?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016. július 24-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor rendezték meg a Forma 1 Magyar Nagydíját a Hungaroringen?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016. július 25-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor rendezték meg a Forma 1 Magyar Nagydíját a Hungaroringen?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016. július 28-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor rendezték meg a Forma 1 Magyar Nagydíját a Hungaroringen?';
-- Q 26 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nyerte a Forma 1 Magyar Nagydíját?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Daniel Ricciardo', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nyerte a Forma 1 Magyar Nagydíját?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nico Rosberg', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nyerte a Forma 1 Magyar Nagydíját?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lewis Hamilton', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nyerte a Forma 1 Magyar Nagydíját?';
-- Q 27 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportolónk beceneve Madár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Erdei Zsolt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportolónk beceneve Madár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cseh László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportolónk beceneve Madár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kovács István', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportolónk beceneve Madár?';
-- Q 28 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Gyurta Dánielnek hány olimpiai aranyérme van?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Gyurta Dánielnek hány olimpiai aranyérme van?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Gyurta Dánielnek hány olimpiai aranyérme van?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Gyurta Dánielnek hány olimpiai aranyérme van?';
-- Q 29 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportág Olimpiai bajnoka Pars Krisztián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gerelyhajítás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág Olimpiai bajnoka Pars Krisztián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kalapácsvetés', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág Olimpiai bajnoka Pars Krisztián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'diszkoszvetés', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág Olimpiai bajnoka Pars Krisztián?';
-- Q 30 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros világbajnok volt, Kolonics György kenus?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '15', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros világbajnok volt, Kolonics György kenus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros világbajnok volt, Kolonics György kenus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros világbajnok volt, Kolonics György kenus?';
COMMIT;
BEGIN;
-- Q 31 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik város szülötte Vajda Attila kenus?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szeged', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik város szülötte Vajda Attila kenus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sopron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik város szülötte Vajda Attila kenus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik város szülötte Vajda Attila kenus?';
-- Q 32 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor kezdődik a 2016-os Riói Olimpia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016. augusztus 21-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor kezdődik a 2016-os Riói Olimpia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016. augusztus 8-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor kezdődik a 2016-os Riói Olimpia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016. augusztus 5-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor kezdődik a 2016-os Riói Olimpia?';
-- Q 33 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Pályafutása során összesen hány aranyérmet szerzett Kovács István (Kokó)?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Pályafutása során összesen hány aranyérmet szerzett Kovács István (Kokó)?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '13', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Pályafutása során összesen hány aranyérmet szerzett Kovács István (Kokó)?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Pályafutása során összesen hány aranyérmet szerzett Kovács István (Kokó)?';
-- Q 34 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A 2012-es londoni olimpián hány aranyérmet szerzett a magyar csapat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A 2012-es londoni olimpián hány aranyérmet szerzett a magyar csapat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A 2012-es londoni olimpián hány aranyérmet szerzett a magyar csapat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A 2012-es londoni olimpián hány aranyérmet szerzett a magyar csapat?';
-- Q 35 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország csapata gyűjtötte be a legtöbb aranyérmet a londoni olimpián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oroszország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország csapata gyűjtötte be a legtöbb aranyérmet a londoni olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kína', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország csapata gyűjtötte be a legtöbb aranyérmet a londoni olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyesült Államok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország csapata gyűjtötte be a legtöbb aranyérmet a londoni olimpián?';
-- Q 36 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány főből áll a magyar csapat a 2016-os Riói olimpián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '160', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány főből áll a magyar csapat a 2016-os Riói olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '140', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány főből áll a magyar csapat a 2016-os Riói olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '200', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány főből áll a magyar csapat a 2016-os Riói olimpián?';
-- Q 37 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit szimbolizál a Riói olimpiai logó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cukorsüveg-hegyet', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mit szimbolizál a Riói olimpiai logó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'összefogást', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mit szimbolizál a Riói olimpiai logó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a természet varázsát', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mit szimbolizál a Riói olimpiai logó?';
-- Q 38 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki vitte a magyar zászlót a Riói olimpia megnyitóján?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szilágyi Áron', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki vitte a magyar zászlót a Riói olimpia megnyitóján?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cseh László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki vitte a magyar zászlót a Riói olimpia megnyitóján?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gyurta Dániel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki vitte a magyar zászlót a Riói olimpia megnyitóján?';
-- Q 39 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Szilágyi Áron melyik sportág olimpiai bajnoka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tőrvívás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Szilágyi Áron melyik sportág olimpiai bajnoka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kardvívás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Szilágyi Áron melyik sportág olimpiai bajnoka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'atlétika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Szilágyi Áron melyik sportág olimpiai bajnoka?';
-- Q 40 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik csapat vonult be utoljára a Riói olimpia megnyitó ünnepségén?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'brazíl', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapat vonult be utoljára a Riói olimpia megnyitó ünnepségén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'görög', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapat vonult be utoljára a Riói olimpia megnyitó ünnepségén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'magyar', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapat vonult be utoljára a Riói olimpia megnyitó ünnepségén?';
COMMIT;
BEGIN;
-- Q 41 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hosszú Katinka melyik sportág világbajnoka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szinkronúszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hosszú Katinka melyik sportág világbajnoka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'evezés', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hosszú Katinka melyik sportág világbajnoka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úszás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hosszú Katinka melyik sportág világbajnoka?';
-- Q 42 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A Magyar férfi vízilabda-válogatott összesen hányszor lett aranyérmes az olimpiákon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '9x', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A Magyar férfi vízilabda-válogatott összesen hányszor lett aranyérmes az olimpiákon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10 x', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A Magyar férfi vízilabda-válogatott összesen hányszor lett aranyérmes az olimpiákon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6 x', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A Magyar férfi vízilabda-válogatott összesen hányszor lett aranyérmes az olimpiákon?';
-- Q 43 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A londoni olimpián hányadik helyen végzett a Magyar férfi vízilabda-válogatott?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A londoni olimpián hányadik helyen végzett a Magyar férfi vízilabda-válogatott?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A londoni olimpián hányadik helyen végzett a Magyar férfi vízilabda-válogatott?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A londoni olimpián hányadik helyen végzett a Magyar férfi vízilabda-válogatott?';
-- Q 44 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki az első nő, aki a magyar cselgáncs történetében érmett szerzett olimpiai játékokon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Joó Abigél', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki az első nő, aki a magyar cselgáncs történetében érmett szerzett olimpiai játékokon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csernoviczki Éva', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki az első nő, aki a magyar cselgáncs történetében érmett szerzett olimpiai játékokon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Karakas Hedvig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki az első nő, aki a magyar cselgáncs történetében érmett szerzett olimpiai játékokon?';
-- Q 45 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nyerte az első magyar aranyérmet a Riói olimpián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hosszú Katinka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nyerte az első magyar aranyérmet a Riói olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szász Emese', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nyerte az első magyar aranyérmet a Riói olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gyurta Dániel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nyerte az első magyar aranyérmet a Riói olimpián?';
-- Q 46 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Bacskai Balázs ökölvívónknak mi a beceneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Benji', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Bacskai Balázs ökölvívónknak mi a beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bazsa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Bacskai Balázs ökölvívónknak mi a beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Beni', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Bacskai Balázs ökölvívónknak mi a beceneve?';
-- Q 47 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros világbajnok úszó Hosszú Katinka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ötszörös', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros világbajnok úszó Hosszú Katinka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négyszeres', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros világbajnok úszó Hosszú Katinka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hatszoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros világbajnok úszó Hosszú Katinka?';
-- Q 48 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A 2008-as Pekingi olimpián hány ezüstérmet szerzett Cseh László?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A 2008-as Pekingi olimpián hány ezüstérmet szerzett Cseh László?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A 2008-as Pekingi olimpián hány ezüstérmet szerzett Cseh László?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A 2008-as Pekingi olimpián hány ezüstérmet szerzett Cseh László?';
-- Q 49 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kenderesi Tamás úszó, melyik versenyszámban lett bronzérmes Rióban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '200 m pillangó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Kenderesi Tamás úszó, melyik versenyszámban lett bronzérmes Rióban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '100 m pillangó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Kenderesi Tamás úszó, melyik versenyszámban lett bronzérmes Rióban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '200 m vegyes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Kenderesi Tamás úszó, melyik versenyszámban lett bronzérmes Rióban?';
-- Q 50 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Gerevich Aladár hányszoros olimpiai aranyérmes vívó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hétszeres', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Gerevich Aladár hányszoros olimpiai aranyérmes vívó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hatszoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Gerevich Aladár hányszoros olimpiai aranyérmes vívó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négyszeres', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Gerevich Aladár hányszoros olimpiai aranyérmes vívó?';
COMMIT;
BEGIN;
-- Q 51 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Keleti Ágnes melyik sportág olimpiai bajnoka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Keleti Ágnes melyik sportág olimpiai bajnoka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'torna', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Keleti Ágnes melyik sportág olimpiai bajnoka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vívás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Keleti Ágnes melyik sportág olimpiai bajnoka?';
-- Q 52 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Darnyi Tamás olimpiai bajnok úszónk beceneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Puci', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Darnyi Tamás olimpiai bajnok úszónk beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pici', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Darnyi Tamás olimpiai bajnok úszónk beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Poci', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Darnyi Tamás olimpiai bajnok úszónk beceneve?';
-- Q 53 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros világbajnok kajakozó Dusev-Janics Natasa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '23-szoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros világbajnok kajakozó Dusev-Janics Natasa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '16-szoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros világbajnok kajakozó Dusev-Janics Natasa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '19-szeres', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros világbajnok kajakozó Dusev-Janics Natasa?';
-- Q 54 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a magyar férfi vízilabda-válogatott szövetségi kapitánya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Varga Dániel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a magyar férfi vízilabda-válogatott szövetségi kapitánya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kemény Dénes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a magyar férfi vízilabda-válogatott szövetségi kapitánya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Benedek Tibor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a magyar férfi vízilabda-válogatott szövetségi kapitánya?';
-- Q 55 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik olimpián szerzett aranyérmet Csollány Szilveszter tornász?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1996-ban Atlantában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik olimpián szerzett aranyérmet Csollány Szilveszter tornász?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000-ben Sydneyben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik olimpián szerzett aranyérmet Csollány Szilveszter tornász?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2004-ben Athénban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik olimpián szerzett aranyérmet Csollány Szilveszter tornász?';
-- Q 56 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a magyar sport első női olimpiai aranyérmese?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Elek Ilona', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a magyar sport első női olimpiai aranyérmese?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Keleti Ágnes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a magyar sport első női olimpiai aranyérmese?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Köteles Erzsébet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a magyar sport első női olimpiai aranyérmese?';
-- Q 57 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik úszásnem olimpiai bajnoka Gyurta Dániel?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mellúszás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik úszásnem olimpiai bajnoka Gyurta Dániel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyorsúszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik úszásnem olimpiai bajnoka Gyurta Dániel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pillangó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik úszásnem olimpiai bajnoka Gyurta Dániel?';
-- Q 58 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány aranyérmet gyűjtött Hosszú Katinka a Riói Olimpián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyérmet gyűjtött Hosszú Katinka a Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyérmet gyűjtött Hosszú Katinka a Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyérmet gyűjtött Hosszú Katinka a Riói Olimpián?';
-- Q 59 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportolónk nem augusztus 22-én született?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szilágyi Áron', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportolónk nem augusztus 22-én született?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagy Tímea', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportolónk nem augusztus 22-én született?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Verrasztó Dávid', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportolónk nem augusztus 22-én született?';
-- Q 60 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány érmet szereztek a magyarok a 2016-os Riói Olimpián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '15', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány érmet szereztek a magyarok a 2016-os Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '13', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány érmet szereztek a magyarok a 2016-os Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány érmet szereztek a magyarok a 2016-os Riói Olimpián?';
COMMIT;
BEGIN;
-- Q 61 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki vitte a magyar zászlót a Riói Olimpia záróünnepségén?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kozák Danuta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki vitte a magyar zászlót a Riói Olimpia záróünnepségén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hosszú Katinka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki vitte a magyar zászlót a Riói Olimpia záróünnepségén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szász Emese', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki vitte a magyar zászlót a Riói Olimpia záróünnepségén?';
-- Q 62 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hanyadik helyen végzett Magyarország a Riói Olimpián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hanyadik helyen végzett Magyarország a Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '15.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hanyadik helyen végzett Magyarország a Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hanyadik helyen végzett Magyarország a Riói Olimpián?';
-- Q 63 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország csapata végzett az első helyen a Riói Olimpián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyesült Államok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország csapata végzett az első helyen a Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kína', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország csapata végzett az első helyen a Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Japán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország csapata végzett az első helyen a Riói Olimpián?';
-- Q 64 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A magyar női vízilabdacsapat hanyadik helyen végzett a Riói Olimpián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A magyar női vízilabdacsapat hanyadik helyen végzett a Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A magyar női vízilabdacsapat hanyadik helyen végzett a Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A magyar női vízilabdacsapat hanyadik helyen végzett a Riói Olimpián?';
-- Q 65 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány aranyérmet nyert a magyar csapat a Riói Olimpián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyérmet nyert a magyar csapat a Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyérmet nyert a magyar csapat a Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyérmet nyert a magyar csapat a Riói Olimpián?';
-- Q 66 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország szerzett bírkózásban a legtöbb aranyérmet a Riói Olimpián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Törökország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország szerzett bírkózásban a legtöbb aranyérmet a Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kuba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország szerzett bírkózásban a legtöbb aranyérmet a Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oroszország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország szerzett bírkózásban a legtöbb aranyérmet a Riói Olimpián?';
-- Q 67 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen származású Kozák Danuta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szerb', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen származású Kozák Danuta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lengyel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen származású Kozák Danuta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'román', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen származású Kozák Danuta?';
-- Q 68 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Összesen hány aranyérmet nyert Szabó Gabriella az eddigi Olimpiákon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Összesen hány aranyérmet nyert Szabó Gabriella az eddigi Olimpiákon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Összesen hány aranyérmet nyert Szabó Gabriella az eddigi Olimpiákon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Összesen hány aranyérmet nyert Szabó Gabriella az eddigi Olimpiákon?';
-- Q 69 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Imre Géza párbajtőrvívó felesége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kökény Beatrix', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki Imre Géza párbajtőrvívó felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szekeres Klára', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki Imre Géza párbajtőrvívó felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bíró Blanka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki Imre Géza párbajtőrvívó felesége?';
-- Q 70 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros olimpiai bajnok Kásás Tamás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'háromszoros', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Kásás Tamás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négyszeres', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Kásás Tamás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétszeres', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Kásás Tamás?';
COMMIT;
BEGIN;
-- Q 71 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kőbán Rita melyik sportág olimpiai bajnoka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kajak', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Kőbán Rita melyik sportág olimpiai bajnoka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'evezés', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Kőbán Rita melyik sportág olimpiai bajnoka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Kőbán Rita melyik sportág olimpiai bajnoka?';
-- Q 72 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol született Ónodi Henrietta, olimpiai bajnok tornásznő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Békéscsabán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol született Ónodi Henrietta, olimpiai bajnok tornásznő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kecskeméten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol született Ónodi Henrietta, olimpiai bajnok tornásznő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szolnokon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol született Ónodi Henrietta, olimpiai bajnok tornásznő?';
-- Q 73 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik olimpián szerezte aranyérmét Repka Attila bírkozó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Barcelonai', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik olimpián szerezte aranyérmét Repka Attila bírkozó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szöuli', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik olimpián szerezte aranyérmét Repka Attila bírkozó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pekingi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik olimpián szerezte aranyérmét Repka Attila bírkozó?';
-- Q 74 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol került megrendezésre 2000-ben a nyári olimpiai játékok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sydneyben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol került megrendezésre 2000-ben a nyári olimpiai játékok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Athénban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol került megrendezésre 2000-ben a nyári olimpiai játékok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol került megrendezésre 2000-ben a nyári olimpiai játékok?';
-- Q 75 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Papp László ökölvívónk beceneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Görbe', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi volt Papp László ökölvívónk beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hosszú', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi volt Papp László ökölvívónk beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bástya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi volt Papp László ökölvívónk beceneve?';
-- Q 76 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben hunyt el Kesjár Csaba autóversenyző?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1988-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik évben hunyt el Kesjár Csaba autóversenyző?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1989-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik évben hunyt el Kesjár Csaba autóversenyző?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1986-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik évben hunyt el Kesjár Csaba autóversenyző?';
-- Q 77 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportág kiválósága Mandula Petra?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tenisz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág kiválósága Mandula Petra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág kiválósága Mandula Petra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'torna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág kiválósága Mandula Petra?';
-- Q 78 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen olimpiai érme van Marosi Ádám öttusázónak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bronz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen olimpiai érme van Marosi Ádám öttusázónak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'arany', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen olimpiai érme van Marosi Ádám öttusázónak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ezüst', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen olimpiai érme van Marosi Ádám öttusázónak?';
-- Q 79 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt az év sportolónője 2007-ben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szávay Ágnes', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt az év sportolónője 2007-ben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagy Tímea', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt az év sportolónője 2007-ben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hosszú Katinka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt az év sportolónője 2007-ben?';
-- Q 80 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt az év férfi sportolója 2014-ben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Berki Krisztián', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt az év férfi sportolója 2014-ben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cseh László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt az év férfi sportolója 2014-ben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gyurta Dániel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt az év férfi sportolója 2014-ben?';
COMMIT;
BEGIN;
-- Q 81 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány érme van összesen Braun Ákos, cselgáncsozónak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány érme van összesen Braun Ákos, cselgáncsozónak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány érme van összesen Braun Ákos, cselgáncsozónak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány érme van összesen Braun Ákos, cselgáncsozónak?';
-- Q 82 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik úszásnem olimpiai bajnoka Rózsa Norbert?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mellúszás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik úszásnem olimpiai bajnoka Rózsa Norbert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hátúszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik úszásnem olimpiai bajnoka Rózsa Norbert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyorsúszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik úszásnem olimpiai bajnoka Rózsa Norbert?';
-- Q 83 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen nemzetiségű Hosszú Katinka férje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'amerikai', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű Hosszú Katinka férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'olasz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű Hosszú Katinka férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'francia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű Hosszú Katinka férje?';
-- Q 84 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a foglalkozása Mincza-Nébald Ildikó vivónőnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ügyvéd', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a foglalkozása Mincza-Nébald Ildikó vivónőnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'orvos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a foglalkozása Mincza-Nébald Ildikó vivónőnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'marketing manager', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a foglalkozása Mincza-Nébald Ildikó vivónőnek?';
-- Q 85 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportág rajongója Jack Nicholson?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kosárlabda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág rajongója Jack Nicholson?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'baseball', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág rajongója Jack Nicholson?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'amerikai futball', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág rajongója Jack Nicholson?';
-- Q 86 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a bandy sport másik neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jéglabda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a bandy sport másik neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'röplabda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a bandy sport másik neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyeplabda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a bandy sport másik neve?';
-- Q 87 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi a játékideje a rögbinek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2x40 perc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mennyi a játékideje a rögbinek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3x45 perc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mennyi a játékideje a rögbinek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2x25 perc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mennyi a játékideje a rögbinek?';
-- Q 88 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a softball?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a baseball női változata', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a softball?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a floorball női változata', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a softball?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a raketball női változata', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a softball?';
-- Q 89 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány fős csapatok játszanak a vízilabdában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7-7 fős', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány fős csapatok játszanak a vízilabdában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10-10 fős', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány fős csapatok játszanak a vízilabdában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12-12 fős', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány fős csapatok játszanak a vízilabdában?';
-- Q 90 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportág csapata a Los Angeles Lakers?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kosárlabda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág csapata a Los Angeles Lakers?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kézilabba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág csapata a Los Angeles Lakers?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'labdarúgás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág csapata a Los Angeles Lakers?';
COMMIT;
BEGIN;
-- Q 91 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor szerezte első olimpiai aranyérmét Csipes Tamara?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor szerezte első olimpiai aranyérmét Csipes Tamara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2012-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor szerezte első olimpiai aranyérmét Csipes Tamara?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2004-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor szerezte első olimpiai aranyérmét Csipes Tamara?';
-- Q 92 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, '1988-ban hol volt megrendezve az nyári olimpiai játékok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szöulban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='1988-ban hol volt megrendezve az nyári olimpiai játékok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Barcelonában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='1988-ban hol volt megrendezve az nyári olimpiai játékok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atlantában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='1988-ban hol volt megrendezve az nyári olimpiai játékok?';
-- Q 93 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nyerte el legtöbb alkalommal Az év magyar ökölvívója címet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kovács István', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nyerte el legtöbb alkalommal Az év magyar ökölvívója címet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balzsay Károly', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nyerte el legtöbb alkalommal Az év magyar ökölvívója címet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Harcsa Zoltán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nyerte el legtöbb alkalommal Az év magyar ökölvívója címet?';
-- Q 94 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, '2015-ben ki volt Az év magyar férfi vívója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Imre Géza', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2015-ben ki volt Az év magyar férfi vívója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szilágyi Áron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2015-ben ki volt Az év magyar férfi vívója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rédli András', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2015-ben ki volt Az év magyar férfi vívója?';
-- Q 95 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt 1988-1996-ig Az év magyar úszónője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egerszegi Krisztina', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt 1988-1996-ig Az év magyar úszónője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kovács Ágnes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt 1988-1996-ig Az év magyar úszónője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Risztov Éva', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt 1988-1996-ig Az év magyar úszónője?';
-- Q 96 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportot nevezik a sportok "királyának"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'teniszt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportot nevezik a sportok "királyának"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'labdarúgást', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportot nevezik a sportok "királyának"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úszást', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportot nevezik a sportok "királyának"?';
-- Q 97 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a méta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'labdajáték', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a méta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zokni', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a méta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'édesség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a méta?';
-- Q 98 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik India legnépszerűbb sportja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'krikett', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik India legnépszerűbb sportja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jégkorong', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik India legnépszerűbb sportja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sakk', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik India legnépszerűbb sportja?';
-- Q 99 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportban van sáncolás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sakkban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportban van sáncolás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vívásban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportban van sáncolás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tekében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportban van sáncolás?';
-- Q 100 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az Unicum-kupa vízilabdatorna mai elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vodafone-kupa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi az Unicum-kupa vízilabdatorna mai elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'LEN-kupa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi az Unicum-kupa vízilabdatorna mai elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vízi-kupa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi az Unicum-kupa vízilabdatorna mai elnevezése?';
COMMIT;
BEGIN;
-- Q 101 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi a játékideje egy kézilabda mérkőzésnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2x30 perc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mennyi a játékideje egy kézilabda mérkőzésnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2x45 perc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mennyi a játékideje egy kézilabda mérkőzésnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3x15 perc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mennyi a játékideje egy kézilabda mérkőzésnek?';
-- Q 102 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen sportág bajnoka Likerecz Gyöngyi?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'súlyemelés', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportág bajnoka Likerecz Gyöngyi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportág bajnoka Likerecz Gyöngyi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vívás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportág bajnoka Likerecz Gyöngyi?';
-- Q 103 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros olimpiai bajnok vívó Kulcsár Győző?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négyszeres', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok vívó Kulcsár Győző?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ötszörös', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok vívó Kulcsár Győző?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétszeres', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok vívó Kulcsár Győző?';
-- Q 104 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen magas Kásás Tamás vízilabdázó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '200 cm', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen magas Kásás Tamás vízilabdázó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '196 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen magas Kásás Tamás vízilabdázó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '208 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen magas Kásás Tamás vízilabdázó?';
-- Q 105 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik olimpián szerezte bronzérmét, Marosi Ádám öttusázó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2012 London', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik olimpián szerezte bronzérmét, Marosi Ádám öttusázó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2008 Peking', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik olimpián szerezte bronzérmét, Marosi Ádám öttusázó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016 Rio de Janeiro', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik olimpián szerezte bronzérmét, Marosi Ádám öttusázó?';
-- Q 106 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a biatlon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sílövészet', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a biatlon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'autósport', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a biatlon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bírkózás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a biatlon?';
-- Q 107 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen színű a sapkája a kapusnak a vízilabdában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'piros', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen színű a sapkája a kapusnak a vízilabdában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen színű a sapkája a kapusnak a vízilabdában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fehér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen színű a sapkája a kapusnak a vízilabdában?';
-- Q 108 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Honnan ered a taekwondo?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Koreából', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Honnan ered a taekwondo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Japánból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Honnan ered a taekwondo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kínából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Honnan ered a taekwondo?';
-- Q 109 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem a ritmikus gimnasztika kelléke?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'frizbi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik nem a ritmikus gimnasztika kelléke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'labda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik nem a ritmikus gimnasztika kelléke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'buzogány', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik nem a ritmikus gimnasztika kelléke?';
-- Q 110 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mivel próbálják egymást eltalálni a paintball játékosai?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'festékgolyókkal', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mivel próbálják egymást eltalálni a paintball játékosai?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'üveggolyókkal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mivel próbálják egymást eltalálni a paintball játékosai?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'golflabdával', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mivel próbálják egymást eltalálni a paintball játékosai?';
COMMIT;
BEGIN;
-- Q 111 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a legerősebb lapkombinációnak a pókerben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'royal flush', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a neve a legerősebb lapkombinációnak a pókerben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'full house', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a neve a legerősebb lapkombinációnak a pókerben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'straight flush', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a neve a legerősebb lapkombinációnak a pókerben?';
-- Q 112 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány méter hosszú a pást, a vivás küzdőtere?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '14 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány méter hosszú a pást, a vivás küzdőtere?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '23 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány méter hosszú a pást, a vivás küzdőtere?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '18 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány méter hosszú a pást, a vivás küzdőtere?';
-- Q 113 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány színből áll a Rubik-kocka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány színből áll a Rubik-kocka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány színből áll a Rubik-kocka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány színből áll a Rubik-kocka?';
-- Q 114 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportág képviselője Körmendi Petra?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'wakeboard', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág képviselője Körmendi Petra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág képviselője Körmendi Petra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tenisz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág képviselője Körmendi Petra?';
-- Q 115 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Hosszú Katinka beceneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Iron Lady', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Hosszú Katinka beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fitness Lady', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Hosszú Katinka beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kitten Lady', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Hosszú Katinka beceneve?';
-- Q 116 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Varga Dániel vízilabdázó öccse?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Varga Dénes', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki Varga Dániel vízilabdázó öccse?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Varga Dávid', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki Varga Dániel vízilabdázó öccse?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Varga Bence', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki Varga Dániel vízilabdázó öccse?';
-- Q 117 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen nemzetiségű Gabriela Sabatini, teniszezőnő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'argentin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű Gabriela Sabatini, teniszezőnő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'brazil', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű Gabriela Sabatini, teniszezőnő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'portugál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű Gabriela Sabatini, teniszezőnő?';
-- Q 118 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben égett le a Budapest Sportcsarnok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1999-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik évben égett le a Budapest Sportcsarnok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik évben égett le a Budapest Sportcsarnok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1987-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik évben égett le a Budapest Sportcsarnok?';
-- Q 119 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van a Wembley Stadion?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol van a Wembley Stadion?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol van a Wembley Stadion?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Los Angelesben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol van a Wembley Stadion?';
-- Q 120 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros olimpiai bajnok Kozák Danuta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ötszörös', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Kozák Danuta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'háromszoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Kozák Danuta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hatszoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Kozák Danuta?';
COMMIT;
BEGIN;
-- Q 121 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország nyerte a 2016-os labdarúgó-Európa-bajnokságot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Portugália', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország nyerte a 2016-os labdarúgó-Európa-bajnokságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország nyerte a 2016-os labdarúgó-Európa-bajnokságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország nyerte a 2016-os labdarúgó-Európa-bajnokságot?';
-- Q 122 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt az idei, 51. Super Bowl félidei műsorának fellépője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lady Gaga', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt az idei, 51. Super Bowl félidei műsorának fellépője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rihanna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt az idei, 51. Super Bowl félidei műsorának fellépője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Beyoncé', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt az idei, 51. Super Bowl félidei műsorának fellépője?';
-- Q 123 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen szín nincs az olimpiai ötkarikák között?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lila', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen szín nincs az olimpiai ötkarikák között?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen szín nincs az olimpiai ötkarikák között?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöld', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen szín nincs az olimpiai ötkarikák között?';
-- Q 124 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány cm magas Michael Jordan, amerikai kosárlabdázó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '198 cm', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány cm magas Michael Jordan, amerikai kosárlabdázó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '202 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány cm magas Michael Jordan, amerikai kosárlabdázó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '220 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány cm magas Michael Jordan, amerikai kosárlabdázó?';
-- Q 125 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportág versenyeinek összefoglaló neve a "Grand Slam-tornák"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tenisz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág versenyeinek összefoglaló neve a "Grand Slam-tornák"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kosárlabda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág versenyeinek összefoglaló neve a "Grand Slam-tornák"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jégkorong', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág versenyeinek összefoglaló neve a "Grand Slam-tornák"?';
-- Q 126 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik csapatnak volt a legtöbb győzelme az UEFA-bajnokok ligájában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Real Madrid', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapatnak volt a legtöbb győzelme az UEFA-bajnokok ligájában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'FC Barcelona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapatnak volt a legtöbb győzelme az UEFA-bajnokok ligájában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Manchester United', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapatnak volt a legtöbb győzelme az UEFA-bajnokok ligájában?';
-- Q 127 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a leghosszabb versenypálya a Forma 1-ben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pescara Circuit', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik a leghosszabb versenypálya a Forma 1-ben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Red Bull Ring', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik a leghosszabb versenypálya a Forma 1-ben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Monte Carlo', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik a leghosszabb versenypálya a Forma 1-ben?';
-- Q 128 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi ideig tart egy jégkorong mérkőzés?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3x20 percig', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mennyi ideig tart egy jégkorong mérkőzés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2x60 percig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mennyi ideig tart egy jégkorong mérkőzés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4x45 percig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mennyi ideig tart egy jégkorong mérkőzés?';
-- Q 129 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány méter a maraton távja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '42195 méter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány méter a maraton távja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '34674 méter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány méter a maraton távja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '23621 méter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány méter a maraton távja?';
-- Q 130 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik dal volt Erdei Zsolt, ökölvívó bevonulózenéje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Republic-Szállj el kismadár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik dal volt Erdei Zsolt, ökölvívó bevonulózenéje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balkan Fanatik-Repülj madár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik dal volt Erdei Zsolt, ökölvívó bevonulózenéje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'István a király-Szállj fel szabad madár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik dal volt Erdei Zsolt, ökölvívó bevonulózenéje?';
COMMIT;
BEGIN;
-- Q 131 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sport világnapja van március 4-én?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tenisz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport világnapja van március 4-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kézilabda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport világnapja van március 4-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tollaslabda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport világnapja van március 4-én?';
-- Q 132 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, '2014-ben melyik csapat nyerte meg a labdarúgó-világbajnokságot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2014-ben melyik csapat nyerte meg a labdarúgó-világbajnokságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazília', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2014-ben melyik csapat nyerte meg a labdarúgó-világbajnokságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2014-ben melyik csapat nyerte meg a labdarúgó-világbajnokságot?';
-- Q 133 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország szerezte a legtöbb győzelmet a labdarúgó VB-k történetében?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazília', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország szerezte a legtöbb győzelmet a labdarúgó VB-k történetében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország szerezte a legtöbb győzelmet a labdarúgó VB-k történetében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik ország szerezte a legtöbb győzelmet a labdarúgó VB-k történetében?';
-- Q 134 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A Copa Libertadores melyik kontinens labdarúgó kupája?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A Copa Libertadores melyik kontinens labdarúgó kupája?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A Copa Libertadores melyik kontinens labdarúgó kupája?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='A Copa Libertadores melyik kontinens labdarúgó kupája?';
-- Q 135 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor rendezték az első labdarúgó VB-t?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1930-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor rendezték az első labdarúgó VB-t?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1934-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor rendezték az első labdarúgó VB-t?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1938-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor rendezték az első labdarúgó VB-t?';
-- Q 136 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban kerül megrendezésre a 2018-as labdarúgó VB?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oroszországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik országban kerül megrendezésre a 2018-as labdarúgó VB?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazíliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik országban kerül megrendezésre a 2018-as labdarúgó VB?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik országban kerül megrendezésre a 2018-as labdarúgó VB?';
-- Q 137 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik versenyszámban lett ezüstérmes Cseh László a 2016-os Riói Olimpián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '100 méteres pillangó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik versenyszámban lett ezüstérmes Cseh László a 2016-os Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '200 méteres pillangó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik versenyszámban lett ezüstérmes Cseh László a 2016-os Riói Olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '400 méteres vegyes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik versenyszámban lett ezüstérmes Cseh László a 2016-os Riói Olimpián?';
-- Q 138 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mekkora a Rio de Janeiro-i Maracana Stadion befogadóképessége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '88 992 fő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mekkora a Rio de Janeiro-i Maracana Stadion befogadóképessége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '102 889 fő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mekkora a Rio de Janeiro-i Maracana Stadion befogadóképessége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '99 999 fő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mekkora a Rio de Janeiro-i Maracana Stadion befogadóképessége?';
-- Q 139 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány magyar sportoló viseli az olimpiai bajnok címet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '298', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány magyar sportoló viseli az olimpiai bajnok címet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '345', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány magyar sportoló viseli az olimpiai bajnok címet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '675', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány magyar sportoló viseli az olimpiai bajnok címet?';
-- Q 140 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a magyar férfi vízilabda-válogatott csapatkapitánya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Varga Dénes', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a magyar férfi vízilabda-válogatott csapatkapitánya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Varga Dániel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a magyar férfi vízilabda-válogatott csapatkapitánya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Benedek Tibor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a magyar férfi vízilabda-válogatott csapatkapitánya?';
COMMIT;
BEGIN;
-- Q 141 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik labdarúgó világbajnokság dala volt "We Are the Champions"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1994-es', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik labdarúgó világbajnokság dala volt "We Are the Champions"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1998-as', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik labdarúgó világbajnokság dala volt "We Are the Champions"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2006-os', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik labdarúgó világbajnokság dala volt "We Are the Champions"?';
-- Q 142 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a 2002-es labdarúgó-világbajnokság gólkirálya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ronaldo', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt a 2002-es labdarúgó-világbajnokság gólkirálya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rivaldo', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt a 2002-es labdarúgó-világbajnokság gólkirálya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Roberto Carlos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt a 2002-es labdarúgó-világbajnokság gólkirálya?';
-- Q 143 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a világ legnagyobb labdarúgóstadionja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észak-Koreában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol látható a világ legnagyobb labdarúgóstadionja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol látható a világ legnagyobb labdarúgóstadionja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mexikóvárosban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol látható a világ legnagyobb labdarúgóstadionja?';
-- Q 144 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik csapat nyerte a 2016-es labdarúgó EB-t?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Portugália', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapat nyerte a 2016-es labdarúgó EB-t?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapat nyerte a 2016-es labdarúgó EB-t?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapat nyerte a 2016-es labdarúgó EB-t?';
-- Q 145 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Ronaldo, volt brazil válogatott labdarúgó beceneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"Fenomén"', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Ronaldo, volt brazil válogatott labdarúgó beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"Titanium"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Ronaldo, volt brazil válogatott labdarúgó beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"Gólkirály"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Ronaldo, volt brazil válogatott labdarúgó beceneve?';
-- Q 146 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik labdarúgónak van a legtöbb" Aranylabdája"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lionel Messi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik labdarúgónak van a legtöbb" Aranylabdája"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cristiano Ronaldo', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik labdarúgónak van a legtöbb" Aranylabdája"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rivaldo', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik labdarúgónak van a legtöbb" Aranylabdája"?';
-- Q 147 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány bajnoki címmel büszkélkedhet a Real Madrid csapata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '32', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány bajnoki címmel büszkélkedhet a Real Madrid csapata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '22', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány bajnoki címmel büszkélkedhet a Real Madrid csapata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '14', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány bajnoki címmel büszkélkedhet a Real Madrid csapata?';
-- Q 148 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen származású Zinédine Zidane labdarúgó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'algériai', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen származású Zinédine Zidane labdarúgó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angliai', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen származású Zinédine Zidane labdarúgó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'amerikai', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen származású Zinédine Zidane labdarúgó?';
-- Q 149 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Liverpool Football Club, angol labdarúgócsapat beceneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"A Vörösök"', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a Liverpool Football Club, angol labdarúgócsapat beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"A Kékek"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a Liverpool Football Club, angol labdarúgócsapat beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"A Zöldek"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a Liverpool Football Club, angol labdarúgócsapat beceneve?';
-- Q 150 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt az első edzője Hosszú Katinkának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagyapja', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt az első edzője Hosszú Katinkának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'férje', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt az első edzője Hosszú Katinkának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'édesapja', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt az első edzője Hosszú Katinkának?';
COMMIT;
BEGIN;
-- Q 151 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen nemzetiségű Roger Federer teniszező?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'svájci', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű Roger Federer teniszező?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'német', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű Roger Federer teniszező?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű Roger Federer teniszező?';
-- Q 152 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros olimpiai bajnok Egerszegi Krisztina?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ötszörös', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Egerszegi Krisztina?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hatszoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Egerszegi Krisztina?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyolcszoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Egerszegi Krisztina?';
-- Q 153 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a FIFA?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nemzetközi Labdarúgó-szövetség', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a FIFA?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nemzetközi Atlétikai Szövetség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a FIFA?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nemzetközi Kézilabda-szövetség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a FIFA?';
-- Q 154 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen sportot űz Tápai Szabina?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kézilabda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportot űz Tápai Szabina?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'röplabda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportot űz Tápai Szabina?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tenisz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportot űz Tápai Szabina?';
-- Q 155 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol lesz a 2017-es Vizes Világbajnokság nyíltvizi úszása megrendezve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonfüreden', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol lesz a 2017-es Vizes Világbajnokság nyíltvizi úszása megrendezve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonföldváron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol lesz a 2017-es Vizes Világbajnokság nyíltvizi úszása megrendezve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonbogláron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol lesz a 2017-es Vizes Világbajnokság nyíltvizi úszása megrendezve?';
-- Q 156 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen sportág magyar bajnoka Dávid Kornél?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kosárlabda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportág magyar bajnoka Dávid Kornél?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'labdarúgás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportág magyar bajnoka Dávid Kornél?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vízilabda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportág magyar bajnoka Dávid Kornél?';
-- Q 157 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a dekatlon jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tízpróba', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a dekatlon jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hétpróba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a dekatlon jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öttusa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a dekatlon jelentése?';
-- Q 158 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány mezőből áll egy sakktábla?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '64', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány mezőből áll egy sakktábla?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '57', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány mezőből áll egy sakktábla?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '75', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány mezőből áll egy sakktábla?';
-- Q 159 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány lap van egy pakli francia kártyában, jokerek nélkül?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '52', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány lap van egy pakli francia kártyában, jokerek nélkül?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '44', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány lap van egy pakli francia kártyában, jokerek nélkül?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '37', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány lap van egy pakli francia kártyában, jokerek nélkül?';
-- Q 160 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen sportág nincs az öttusában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kerékpározás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportág nincs az öttusában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lovaglás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportág nincs az öttusában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vívás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportág nincs az öttusában?';
COMMIT;
BEGIN;
-- Q 161 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol rendezték meg 2000-ben a XXVII. nyári olimpiai játékokat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atlantában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg 2000-ben a XXVII. nyári olimpiai játékokat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Athénban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg 2000-ben a XXVII. nyári olimpiai játékokat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg 2000-ben a XXVII. nyári olimpiai játékokat?';
-- Q 162 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem volt a legendás Aranycsapat tagja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Garaba Imre', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nem volt a legendás Aranycsapat tagja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kocsis Sándor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nem volt a legendás Aranycsapat tagja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Grosics Gyula', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki nem volt a legendás Aranycsapat tagja?';
-- Q 163 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor és hol lesz a Bajnokok Ligája döntője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2017. június 3-án Cardiffban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor és hol lesz a Bajnokok Ligája döntője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2017. június 13-án Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor és hol lesz a Bajnokok Ligája döntője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2017. június 26-án Londonban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor és hol lesz a Bajnokok Ligája döntője?';
-- Q 164 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportág olimpiai bajnoka volt Székely Éva?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úszás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág olimpiai bajnoka volt Székely Éva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vívás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág olimpiai bajnoka volt Székely Éva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cselgáncs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág olimpiai bajnoka volt Székely Éva?';
-- Q 165 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sport ifjúsági bajnoka volt Oszvald Marika?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'toronyugrás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport ifjúsági bajnoka volt Oszvald Marika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szinkronúszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport ifjúsági bajnoka volt Oszvald Marika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'torna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport ifjúsági bajnoka volt Oszvald Marika?';
-- Q 166 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen nemzetiségű Ayrton Senna, világbajnok autóversenyző?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'brazil', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű Ayrton Senna, világbajnok autóversenyző?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'argentin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű Ayrton Senna, világbajnok autóversenyző?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kanadai', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű Ayrton Senna, világbajnok autóversenyző?';
-- Q 167 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány méter magasból ugranak le a toronyugrók?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10 méter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány méter magasból ugranak le a toronyugrók?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8 méter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány méter magasból ugranak le a toronyugrók?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3 méter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány méter magasból ugranak le a toronyugrók?';
-- Q 168 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a Nemzeti Vágta ötletadója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Geszti Péter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt a Nemzeti Vágta ötletadója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagy Feró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt a Nemzeti Vágta ötletadója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sasvári Sándor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki volt a Nemzeti Vágta ötletadója?';
-- Q 169 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a "Kajakkirálynő"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kovács Katalin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a "Kajakkirálynő"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kőbán Rita', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a "Kajakkirálynő"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Janics Natasa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a "Kajakkirálynő"?';
-- Q 170 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros olimpiai bajnok teniszezőnő Serena Williams?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négyszeres', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok teniszezőnő Serena Williams?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétszeres', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok teniszezőnő Serena Williams?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'háromszoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok teniszezőnő Serena Williams?';
COMMIT;
BEGIN;
-- Q 171 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Critical Mass?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kerékpáros felvonulás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a Critical Mass?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'futóverseny', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a Critical Mass?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'motoros felvonulás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a Critical Mass?';
-- Q 172 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sport nagy rajongója Jack Nicholson?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kosárlabda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport nagy rajongója Jack Nicholson?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'labdarúgás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport nagy rajongója Jack Nicholson?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tenisz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport nagy rajongója Jack Nicholson?';
-- Q 173 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi ideig tart egy labdarúgó mérkőzés?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2x45 percig', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mennyi ideig tart egy labdarúgó mérkőzés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2x30 percig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mennyi ideig tart egy labdarúgó mérkőzés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3x25 percig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mennyi ideig tart egy labdarúgó mérkőzés?';
-- Q 174 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a legeredményesebb magyar olimpiai bajnokunk?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gerevich Aladár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a legeredményesebb magyar olimpiai bajnokunk?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egerszegi Krisztina', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a legeredményesebb magyar olimpiai bajnokunk?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kárpáti Rudolf', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a legeredményesebb magyar olimpiai bajnokunk?';
-- Q 175 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros olimpiai bajnok Gerevich Aladár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hétszeres', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Gerevich Aladár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hatszoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Gerevich Aladár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyolcszoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Gerevich Aladár?';
-- Q 176 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen nemzetiségű David Beckham labdarúgó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű David Beckham labdarúgó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'francia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű David Beckham labdarúgó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'amerikai', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nemzetiségű David Beckham labdarúgó?';
-- Q 177 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van a Santiago Bernabéu stadion?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madridban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol van a Santiago Bernabéu stadion?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol van a Santiago Bernabéu stadion?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol van a Santiago Bernabéu stadion?';
-- Q 178 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Minek a röviditése az FTC?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ferencvárosi Torna Klub', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Minek a röviditése az FTC?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fiatal Tornászok Klubja', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Minek a röviditése az FTC?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Forgalomirányítók Klubja', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Minek a röviditése az FTC?';
-- Q 179 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a versenyszáma Gyurta Dánielnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mellúszás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a versenyszáma Gyurta Dánielnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyorsúszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a versenyszáma Gyurta Dánielnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hátúszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a versenyszáma Gyurta Dánielnek?';
-- Q 180 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben volt a nyári olimpia Moszkvában megrendezve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1980-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik évben volt a nyári olimpia Moszkvában megrendezve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1984-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik évben volt a nyári olimpia Moszkvában megrendezve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1992-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik évben volt a nyári olimpia Moszkvában megrendezve?';
COMMIT;
BEGIN;
-- Q 181 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány világbajnoki címe van Alain Prost autóversenyzőnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány világbajnoki címe van Alain Prost autóversenyzőnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány világbajnoki címe van Alain Prost autóversenyzőnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány világbajnoki címe van Alain Prost autóversenyzőnek?';
-- Q 182 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen sport bajnoka volt Magic Johnson?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kosárlabda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sport bajnoka volt Magic Johnson?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'futás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sport bajnoka volt Magic Johnson?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'labdarúgás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sport bajnoka volt Magic Johnson?';
-- Q 183 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik labdarúgó válogatottnak volt a tagja Diego Maradona?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'argentin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik labdarúgó válogatottnak volt a tagja Diego Maradona?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'brazil', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik labdarúgó válogatottnak volt a tagja Diego Maradona?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mexikói', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik labdarúgó válogatottnak volt a tagja Diego Maradona?';
-- Q 184 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol rendezték meg 2016-ban a labdarúgó-EB-t?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg 2016-ban a labdarúgó-EB-t?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg 2016-ban a labdarúgó-EB-t?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svédországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol rendezték meg 2016-ban a labdarúgó-EB-t?';
-- Q 185 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik labdarúgóklub játékosa Cristiano Ronaldo?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Real Madrid', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik labdarúgóklub játékosa Cristiano Ronaldo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atlético de Madrid', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik labdarúgóklub játékosa Cristiano Ronaldo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'FC Bayern München', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik labdarúgóklub játékosa Cristiano Ronaldo?';
-- Q 186 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, '2020-ban hol rendezik a nyári olimpiai játékokat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tokióban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2020-ban hol rendezik a nyári olimpiai játékokat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pekingben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2020-ban hol rendezik a nyári olimpiai játékokat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Athénban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='2020-ban hol rendezik a nyári olimpiai játékokat?';
-- Q 187 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki vitte a magyar zászlót a 2016-os Riói olimpia megnyitóján?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szilágyi Áron', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki vitte a magyar zászlót a 2016-os Riói olimpia megnyitóján?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cseh László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki vitte a magyar zászlót a 2016-os Riói olimpia megnyitóján?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gyurta Dániel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki vitte a magyar zászlót a 2016-os Riói olimpia megnyitóján?';
-- Q 188 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány arannyal zárták a magyarok a Kajak-kenu világkupát Szegeden?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány arannyal zárták a magyarok a Kajak-kenu világkupát Szegeden?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '13', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány arannyal zárták a magyarok a Kajak-kenu világkupát Szegeden?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány arannyal zárták a magyarok a Kajak-kenu világkupát Szegeden?';
-- Q 189 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Erdei Zsolt ökölvívó beceneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Erdei Zsolt ökölvívó beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sirály', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Erdei Zsolt ökölvívó beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Erdei Zsolt ökölvívó beceneve?';
-- Q 190 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportág kiválósága Tiger Woods?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'golf', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág kiválósága Tiger Woods?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kosárlabda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág kiválósága Tiger Woods?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ökölvívás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág kiválósága Tiger Woods?';
COMMIT;
BEGIN;
-- Q 191 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor rendeztek először labdarúgó világbajnokságot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1930-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor rendeztek először labdarúgó világbajnokságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1940-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor rendeztek először labdarúgó világbajnokságot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1950-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor rendeztek először labdarúgó világbajnokságot?';
-- Q 192 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol kerül megrendezésre 2020-ban a nyári olimpiai játékok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tokióban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol kerül megrendezésre 2020-ban a nyári olimpiai játékok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol kerül megrendezésre 2020-ban a nyári olimpiai játékok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol kerül megrendezésre 2020-ban a nyári olimpiai játékok?';
-- Q 193 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen nevű hajója nem volt Fa Nándornak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Santa Maria', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nevű hajója nem volt Fa Nándornak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent Jupát', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nevű hajója nem volt Fa Nándornak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alba Regia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen nevű hajója nem volt Fa Nándornak?';
-- Q 194 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hanyadik lett az éremtáblázatban Magyarország a 2016-os nyári olimpián?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hanyadik lett az éremtáblázatban Magyarország a 2016-os nyári olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '15.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hanyadik lett az éremtáblázatban Magyarország a 2016-os nyári olimpián?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '18.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hanyadik lett az éremtáblázatban Magyarország a 2016-os nyári olimpián?';
-- Q 195 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki kapta 2017-ben az Aranylabdát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cristiano Ronaldo', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki kapta 2017-ben az Aranylabdát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lionel Messi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki kapta 2017-ben az Aranylabdát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ronaldinho', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki kapta 2017-ben az Aranylabdát?';
-- Q 196 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a Honeybeast együttes legelső nagy slágere?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A legnagyobb hős', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi volt a Honeybeast együttes legelső nagy slágere?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Igy játszom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi volt a Honeybeast együttes legelső nagy slágere?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bódottá', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi volt a Honeybeast együttes legelső nagy slágere?';
-- Q 197 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van a Nemzetközi Labdarúgó-szövetség (FIFA) székhelye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zürichben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol van a Nemzetközi Labdarúgó-szövetség (FIFA) székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Berlinben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol van a Nemzetközi Labdarúgó-szövetség (FIFA) székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brüsszelben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol van a Nemzetközi Labdarúgó-szövetség (FIFA) székhelye?';
-- Q 198 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Klein Dávid?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hegymászó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki Klein Dávid?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'labdarúgó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki Klein Dávid?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'festő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki Klein Dávid?';
-- Q 199 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sport kiválósága Görbicz Anita?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kézilabda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport kiválósága Görbicz Anita?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport kiválósága Görbicz Anita?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'atlétika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport kiválósága Görbicz Anita?';
-- Q 200 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportot nem labdával űzik?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ju-jitsu', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportot nem labdával űzik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rögbi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportot nem labdával űzik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'futsal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportot nem labdával űzik?';
COMMIT;
BEGIN;
-- Q 201 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány aranyérmet nyert Hosszú Katinka a 2017-es úszó-világbajnokságon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kettő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyérmet nyert Hosszú Katinka a 2017-es úszó-világbajnokságon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyérmet nyert Hosszú Katinka a 2017-es úszó-világbajnokságon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyolc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyérmet nyert Hosszú Katinka a 2017-es úszó-világbajnokságon?';
-- Q 202 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportág nincs az atlétikában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úszás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág nincs az atlétikában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ugrás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág nincs az atlétikában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'futás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág nincs az atlétikában?';
-- Q 203 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros olimpiai bajnok Michael Phelps?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '23', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Michael Phelps?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Michael Phelps?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros olimpiai bajnok Michael Phelps?';
-- Q 204 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy hajótipus neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'karavella', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik egy hajótipus neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'karamella', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik egy hajótipus neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kalevala', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik egy hajótipus neve?';
-- Q 205 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol kerül megrendezésre 2018-ban a Labdarúgó-világbajnokság?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oroszországba', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol kerül megrendezésre 2018-ban a Labdarúgó-világbajnokság?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazíliába', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol kerül megrendezésre 2018-ban a Labdarúgó-világbajnokság?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németországba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol kerül megrendezésre 2018-ban a Labdarúgó-világbajnokság?';
-- Q 206 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a Magyar Ökölvívó-szakszövetség jelenlegi elnöke?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Erdei Zsolt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a Magyar Ökölvívó-szakszövetség jelenlegi elnöke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kovács István', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a Magyar Ökölvívó-szakszövetség jelenlegi elnöke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kótai Mihály', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki a Magyar Ökölvívó-szakszövetség jelenlegi elnöke?';
-- Q 207 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen gyakran kerül megrendezésre a Dakar-rali?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'évente', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen gyakran kerül megrendezésre a Dakar-rali?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négyévente', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen gyakran kerül megrendezésre a Dakar-rali?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétévente', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen gyakran kerül megrendezésre a Dakar-rali?';
-- Q 208 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a világ legnagyobb focistadionja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észak-Koreában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol található a világ legnagyobb focistadionja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol található a világ legnagyobb focistadionja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mexikóban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol található a világ legnagyobb focistadionja?';
-- Q 209 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány méter hosszú a maraton?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '42195 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány méter hosszú a maraton?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '32456 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány méter hosszú a maraton?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '11432 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány méter hosszú a maraton?';
-- Q 210 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Real Madrid spanyol labdarúgóklub másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Galaktikusok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a Real Madrid spanyol labdarúgóklub másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Vörösök', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a Real Madrid spanyol labdarúgóklub másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szarkák', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a Real Madrid spanyol labdarúgóklub másik elnevezése?';
COMMIT;
BEGIN;
-- Q 211 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor alakult meg az FTC (Ferencvárosi Torna Club) ?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1899-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor alakult meg az FTC (Ferencvárosi Torna Club) ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1999-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor alakult meg az FTC (Ferencvárosi Torna Club) ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1925-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor alakult meg az FTC (Ferencvárosi Torna Club) ?';
-- Q 212 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros Forma-1 világbajnok Sebastian Vettel?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négyszeres', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros Forma-1 világbajnok Sebastian Vettel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hatszoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros Forma-1 világbajnok Sebastian Vettel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyolcszoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hányszoros Forma-1 világbajnok Sebastian Vettel?';
-- Q 213 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki lett 2017-ben az év magyar férfi sportolója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Baji Balázs', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki lett 2017-ben az év magyar férfi sportolója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Berki Krisztián', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki lett 2017-ben az év magyar férfi sportolója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szilágyi Áron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Ki lett 2017-ben az év magyar férfi sportolója?';
-- Q 214 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hanyadik alkalommal nyerte el Hosszú Katinka az év női sportolója díjat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hatodik', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hanyadik alkalommal nyerte el Hosszú Katinka az év női sportolója díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'negyedik', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hanyadik alkalommal nyerte el Hosszú Katinka az év női sportolója díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tizedik', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hanyadik alkalommal nyerte el Hosszú Katinka az év női sportolója díjat?';
-- Q 215 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor rendezték meg az első téli olimpiai játékokat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1924-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor rendezték meg az első téli olimpiai játékokat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1916-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor rendezték meg az első téli olimpiai játékokat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1908-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor rendezték meg az első téli olimpiai játékokat?';
-- Q 216 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány aranyat szerzett Magyarország az 1992. évi nyári olimpiai játékokon Barcelonában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '11', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyat szerzett Magyarország az 1992. évi nyári olimpiai játékokon Barcelonában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '21', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyat szerzett Magyarország az 1992. évi nyári olimpiai játékokon Barcelonában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '18', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány aranyat szerzett Magyarország az 1992. évi nyári olimpiai játékokon Barcelonában?';
-- Q 217 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen sportágban jeleskedett Mandula Petra?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tenisz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportágban jeleskedett Mandula Petra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vívás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportágban jeleskedett Mandula Petra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Milyen sportágban jeleskedett Mandula Petra?';
-- Q 218 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor kezdődik 2018-ban a XXIII. téli olimpiai játékok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'február 9-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor kezdődik 2018-ban a XXIII. téli olimpiai játékok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'január 25-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor kezdődik 2018-ban a XXIII. téli olimpiai játékok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'február 16-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mikor kezdődik 2018-ban a XXIII. téli olimpiai játékok?';
-- Q 219 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány teniszverseny összefoglaló neve a Grand Slam-tornák?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány teniszverseny összefoglaló neve a Grand Slam-tornák?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyolc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány teniszverseny összefoglaló neve a Grand Slam-tornák?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tíz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány teniszverseny összefoglaló neve a Grand Slam-tornák?';
-- Q 220 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kötélugrás nevű extrém sport angol megfelelője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bungee jumping', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a kötélugrás nevű extrém sport angol megfelelője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'snowboard', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a kötélugrás nevű extrém sport angol megfelelője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'slackline', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a kötélugrás nevű extrém sport angol megfelelője?';
COMMIT;
BEGIN;
-- Q 221 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik focicsapatot nevezik "A vörös ördögöknek" is?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Manchester United', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik focicsapatot nevezik "A vörös ördögöknek" is?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Liverpool FC', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik focicsapatot nevezik "A vörös ördögöknek" is?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arsenal FC', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik focicsapatot nevezik "A vörös ördögöknek" is?';
-- Q 222 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Eusébio portugál labdarúgó beceneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fekete Párduc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Eusébio portugál labdarúgó beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Messiás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Eusébio portugál labdarúgó beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A bolygó hollandi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi Eusébio portugál labdarúgó beceneve?';
-- Q 223 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol zajlik jelenleg is a 2018-as Australian Open teniszverseny?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Melbourne-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol zajlik jelenleg is a 2018-as Australian Open teniszverseny?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sydney-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol zajlik jelenleg is a 2018-as Australian Open teniszverseny?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Canberrában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol zajlik jelenleg is a 2018-as Australian Open teniszverseny?';
-- Q 224 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol kerül megrendezésre 2018-ban a téli olimpiai játékok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Koreában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol kerül megrendezésre 2018-ban a téli olimpiai játékok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kínában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol kerül megrendezésre 2018-ban a téli olimpiai játékok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oroszországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol kerül megrendezésre 2018-ban a téli olimpiai játékok?';
-- Q 225 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sportág tartozik az atlétika versenyszámai közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kalapácsvetés', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág tartozik az atlétika versenyszámai közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bírkózás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág tartozik az atlétika versenyszámai közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'evezés', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sportág tartozik az atlétika versenyszámai közé?';
-- Q 226 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a foglalkozása Baji Balázs Európa-bajnoki ezüstérmes gátfutónknak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'állatorvos', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a foglalkozása Baji Balázs Európa-bajnoki ezüstérmes gátfutónknak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ügyvéd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a foglalkozása Baji Balázs Európa-bajnoki ezüstérmes gátfutónknak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vegyész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Mi a foglalkozása Baji Balázs Európa-bajnoki ezüstérmes gátfutónknak?';
-- Q 227 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sport négyszeres világbajnoka Medveczky Erika?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kajak', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport négyszeres világbajnoka Medveczky Erika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úszás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport négyszeres világbajnoka Medveczky Erika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tenisz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik sport négyszeres világbajnoka Medveczky Erika?';
-- Q 228 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány érmet szerzett Michael Phelps a 2016-os nyári olimpiai játékokon, Rio de Janeiróban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hat', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány érmet szerzett Michael Phelps a 2016-os nyári olimpiai játékokon, Rio de Janeiróban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyolc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány érmet szerzett Michael Phelps a 2016-os nyári olimpiai játékokon, Rio de Janeiróban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tizenhat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány érmet szerzett Michael Phelps a 2016-os nyári olimpiai játékokon, Rio de Janeiróban?';
-- Q 229 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány lépésben lehet susztermattot adni a sakkjátékban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány lépésben lehet susztermattot adni a sakkjátékban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány lépésben lehet susztermattot adni a sakkjátékban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hány lépésben lehet susztermattot adni a sakkjátékban?';
-- Q 230 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol játszik jelenleg Dzsuzsák Balázs labdarúgó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyesült Arab Emírségekben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol játszik jelenleg Dzsuzsák Balázs labdarúgó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szaúd-Arábiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol játszik jelenleg Dzsuzsák Balázs labdarúgó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Katarban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hol játszik jelenleg Dzsuzsák Balázs labdarúgó?';
COMMIT;
BEGIN;
-- Q 231 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hanyas mezt visel Neymar, olimpiai bajnok brazil labdarúgó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10-es', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hanyas mezt visel Neymar, olimpiai bajnok brazil labdarúgó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8-as', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hanyas mezt visel Neymar, olimpiai bajnok brazil labdarúgó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6-os', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Hanyas mezt visel Neymar, olimpiai bajnok brazil labdarúgó?';
-- Q 232 in sport
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik csapat nyerte a Super Bowl LII-t?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Philadelphia Eagles', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapat nyerte a Super Bowl LII-t?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New England', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapat nyerte a Super Bowl LII-t?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Denver Broncos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='sport' AND q.text='Melyik csapat nyerte a Super Bowl LII-t?';
COMMIT;
