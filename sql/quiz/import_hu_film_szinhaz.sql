-- import_hu_film_szinhaz.sql (generated)
INSERT INTO languages (code, name) VALUES ('hu','Magyar') ON CONFLICT (code) DO NOTHING;
-- Topic: film_szinhaz
INSERT INTO topics (language_id, name_hu, name_translated, slug)
SELECT l.id, 'film-színház', 'film-színház', 'film_szinhaz'
FROM languages l WHERE l.code='hu'
ON CONFLICT (slug) DO NOTHING;
BEGIN;
-- Q 1 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a Forrest Gump című film főszereplője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom Hanks', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a Forrest Gump című film főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tim Robbins', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a Forrest Gump című film főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mel Gibson', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a Forrest Gump című film főszereplője?';
-- Q 2 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, '1988-ban melyik film kapott Oscar-díjat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Esőember', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='1988-ban melyik film kapott Oscar-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Veszedelmes viszonyok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='1988-ban melyik film kapott Oscar-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Farkasokkal táncoló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='1988-ban melyik film kapott Oscar-díjat?';
-- Q 3 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Bud Spencer eredeti neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Carlo Pedersoli', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Bud Spencer eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mario Girotti', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Bud Spencer eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Carlo Girotti', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Bud Spencer eredeti neve?';
-- Q 4 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben kapott Oscar-díjat a Titanic című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1997', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben kapott Oscar-díjat a Titanic című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1998', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben kapott Oscar-díjat a Titanic című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1999', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben kapott Oscar-díjat a Titanic című film?';
-- Q 5 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a Csillagok háborújának atyja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George Lucas', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Csillagok háborújának atyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jake Lloyd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Csillagok háborújának atyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ewan McGregor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Csillagok háborújának atyja?';
-- Q 6 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol kerül sor az Oscar-díj átadásra?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hollywoodban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol kerül sor az Oscar-díj átadásra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New Yorkban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol kerül sor az Oscar-díj átadásra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Las Vegasban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol kerül sor az Oscar-díj átadásra?';
-- Q 7 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Gálvölgyi János apósa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rodolfó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Gálvölgyi János apósa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alfonzó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Gálvölgyi János apósa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Latabár Kálmán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Gálvölgyi János apósa?';
-- Q 8 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nyújtott alakításáért kapott Oscar-díjat Leonardo DiCaprio?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A visszatérő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nyújtott alakításáért kapott Oscar-díjat Leonardo DiCaprio?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aviátor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nyújtott alakításáért kapott Oscar-díjat Leonardo DiCaprio?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Wall Street farkasa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nyújtott alakításáért kapott Oscar-díjat Leonardo DiCaprio?';
-- Q 9 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Pocahontas a Walt Disney mesében?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'indián hercegnő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Pocahontas a Walt Disney mesében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hableány', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Pocahontas a Walt Disney mesében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'császár leánya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Pocahontas a Walt Disney mesében?';
-- Q 10 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, '1956-ban melyik film nyert Oscar díjat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '80 nap alatt a Föld körül', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='1956-ban melyik film nyert Oscar díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Híd a Kwai folyón', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='1956-ban melyik film nyert Oscar díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'West Side Story', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='1956-ban melyik film nyert Oscar díjat?';
COMMIT;
BEGIN;
-- Q 11 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány cm magas volt Yoda a Star Wars szereplője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '140 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány cm magas volt Yoda a Star Wars szereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '66 cm', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány cm magas volt Yoda a Star Wars szereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '97 cm', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány cm magas volt Yoda a Star Wars szereplője?';
-- Q 12 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor készült a Száll a kakukk fészkére című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1970-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor készült a Száll a kakukk fészkére című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1976-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor készült a Száll a kakukk fészkére című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1975-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor készült a Száll a kakukk fészkére című film?';
-- Q 13 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik években játszódik a Star Trek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1960-as', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik években játszódik a Star Trek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1970-es', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik években játszódik a Star Trek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1950-es', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik években játszódik a Star Trek?';
-- Q 14 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Mushu a Mulan című Disney rajzfilmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'házisárkány', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Mushu a Mulan című Disney rajzfilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kobold', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Mushu a Mulan című Disney rajzfilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hobbit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Mushu a Mulan című Disney rajzfilmben?';
-- Q 15 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban rendezik meg a Locarnói Nemzetközi Filmfesztivált?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik országban rendezik meg a Locarnói Nemzetközi Filmfesztivált?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik országban rendezik meg a Locarnói Nemzetközi Filmfesztivált?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svájcímű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik országban rendezik meg a Locarnói Nemzetközi Filmfesztivált?';
-- Q 16 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a főszereplője Az utolsó szamuráj című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom Cruise', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője Az utolsó szamuráj című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom Hanks', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője Az utolsó szamuráj című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom Welling', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője Az utolsó szamuráj című filmnek?';
-- Q 17 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányadik Golden Globe-gálát rendezték 2016-ban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '73.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányadik Golden Globe-gálát rendezték 2016-ban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '74.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányadik Golden Globe-gálát rendezték 2016-ban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '72.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányadik Golden Globe-gálát rendezték 2016-ban?';
-- Q 18 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A Madagaszkár című animációs filmben mi a neve az oroszlánnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alex', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='A Madagaszkár című animációs filmben mi a neve az oroszlánnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gloria', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='A Madagaszkár című animációs filmben mi a neve az oroszlánnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rico', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='A Madagaszkár című animációs filmben mi a neve az oroszlánnak?';
-- Q 19 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a születési neve Ruttkai Évának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Russ Éva', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a születési neve Ruttkai Évának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szabó Éva', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a születési neve Ruttkai Évának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robok Éva', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a születési neve Ruttkai Évának?';
-- Q 20 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol született Antonio Banderas?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Barcelonában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol született Antonio Banderas?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sevillában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol született Antonio Banderas?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Malagában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol született Antonio Banderas?';
COMMIT;
BEGIN;
-- Q 21 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen anyagból készült Pinokkió?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'műanyagból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen anyagból készült Pinokkió?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fából', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen anyagból készült Pinokkió?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'textilből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen anyagból készült Pinokkió?';
-- Q 22 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol kerül átadásra az Emmy-díj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Los Angelesben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol kerül átadásra az Emmy-díj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New Yorkban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol kerül átadásra az Emmy-díj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hollywoodban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol kerül átadásra az Emmy-díj?';
-- Q 23 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol született Páger Antal, Kossuth-díjas színész?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Makón', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol született Páger Antal, Kossuth-díjas színész?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Debrecenben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol született Páger Antal, Kossuth-díjas színész?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szegeden', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol született Páger Antal, Kossuth-díjas színész?';
-- Q 24 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros Golden Globe-díjas Robin Williams?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétszeres', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszoros Golden Globe-díjas Robin Williams?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négyszeres', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszoros Golden Globe-díjas Robin Williams?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hatszoros', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszoros Golden Globe-díjas Robin Williams?';
-- Q 25 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol játszódik a Lucky Luke képregénysorozat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a dzsungelben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a Lucky Luke képregénysorozat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a vadnyugaton', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a Lucky Luke képregénysorozat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a sivatagban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a Lucky Luke képregénysorozat?';
-- Q 26 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a másik két mókusnak az Alvin és a mókusokban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'David és Ted', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a másik két mókusnak az Alvin és a mókusokban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Simon és Theodore', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a másik két mókusnak az Alvin és a mókusokban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Simon és David', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a másik két mókusnak az Alvin és a mókusokban?';
-- Q 27 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a fekete párducnak A dzsungel könyvében?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sir Kán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a fekete párducnak A dzsungel könyvében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bagira', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a fekete párducnak A dzsungel könyvében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Akela', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a fekete párducnak A dzsungel könyvében?';
-- Q 28 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be az Augusztus Oklahomában című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2015-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az Augusztus Oklahomában című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2014-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az Augusztus Oklahomában című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az Augusztus Oklahomában című filmet?';
-- Q 29 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játszotta Donna szerepét a Mamma Mia! című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Meryl Streep', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Donna szerepét a Mamma Mia! című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sharon Stone', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Donna szerepét a Mamma Mia! című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nicole Kidman', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Donna szerepét a Mamma Mia! című filmben?';
-- Q 30 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat Garfield?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'macska', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Garfield?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mókus', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Garfield?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kutya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Garfield?';
COMMIT;
BEGIN;
-- Q 31 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem szerepelt az Alice csodaországban című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Toto', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem szerepelt az Alice csodaországban című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Április bolondja', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem szerepelt az Alice csodaországban című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kalapos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem szerepelt az Alice csodaországban című filmben?';
-- Q 32 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a kaposvári színháznak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gárdonyi Géza Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a kaposvári színháznak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csiky Gergely Színház', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a kaposvári színháznak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Móricz Zsigmond Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a kaposvári színháznak?';
-- Q 33 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol játszódik a Halálsoron című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'az űrben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a Halálsoron című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'elmegyógyintézetben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a Halálsoron című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'börtönben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a Halálsoron című film?';
-- Q 34 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a vízilónak a Madagaszkár című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gloria', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a vízilónak a Madagaszkár című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alex', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a vízilónak a Madagaszkár című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Melman', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a vízilónak a Madagaszkár című filmben?';
-- Q 35 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem játszott Kaszás Attila?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kútfejek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Kaszás Attila?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Valami Amerika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Kaszás Attila?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Üvegtigris', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Kaszás Attila?';
-- Q 36 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat Ted az amerikai vígjátékban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mackó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Ted az amerikai vígjátékban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'elefánt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Ted az amerikai vígjátékban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oroszlán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Ted az amerikai vígjátékban?';
-- Q 37 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem játszott Patrick Swayze?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dirty Dancing', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Patrick Swayze?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ghost', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Patrick Swayze?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Titanicímű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Patrick Swayze?';
-- Q 38 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki énekelte a Titanic betétdalát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Shania Twain', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki énekelte a Titanic betétdalát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Celine Dion', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki énekelte a Titanic betétdalát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Shakira', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki énekelte a Titanic betétdalát?';
-- Q 39 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki rendezte A tanú című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bacsó Péter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte A tanú című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fábri Péter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte A tanú című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mészáros Péter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte A tanú című filmet?';
-- Q 40 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik rajzfilm szereplője Grabowski?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Macskarisztokraták', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik rajzfilm szereplője Grabowski?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Macskafogó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik rajzfilm szereplője Grabowski?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom és Jerry', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik rajzfilm szereplője Grabowski?';
COMMIT;
BEGIN;
-- Q 41 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évesen tudja meg Harry Potter hogy varázsló?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tizennégy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évesen tudja meg Harry Potter hogy varázsló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tizenkettő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évesen tudja meg Harry Potter hogy varázsló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tizenegy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évesen tudja meg Harry Potter hogy varázsló?';
-- Q 42 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a születési neve Karády Katalinnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kovács Katalin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a születési neve Karády Katalinnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanczler Katalin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a születési neve Karády Katalinnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kerekes Katain', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a születési neve Karády Katalinnak?';
-- Q 43 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Tolnay Klári eredeti keresztneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ilona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Tolnay Klári eredeti keresztneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rózsi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Tolnay Klári eredeti keresztneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bori', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Tolnay Klári eredeti keresztneve?';
-- Q 44 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tévéfilmben nem játszott Bajor Imre?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Linda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik tévéfilmben nem játszott Bajor Imre?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kisváros', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik tévéfilmben nem játszott Bajor Imre?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Angyalbőrben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik tévéfilmben nem játszott Bajor Imre?';
-- Q 45 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Az eredeti fekete-fehér Meseautó című filmet mikor mutatták be?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1953-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Az eredeti fekete-fehér Meseautó című filmet mikor mutatták be?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1947-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Az eredeti fekete-fehér Meseautó című filmet mikor mutatták be?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1934-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Az eredeti fekete-fehér Meseautó című filmet mikor mutatták be?';
-- Q 46 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros Oscar-díjas Robert De Niro?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négyszeres', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszoros Oscar-díjas Robert De Niro?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétszeres', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszoros Oscar-díjas Robert De Niro?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ötszörös', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszoros Oscar-díjas Robert De Niro?';
-- Q 47 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Marlon Brando legismertebb filmszerepe?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Keresztapa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Marlon Brando legismertebb filmszerepe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Julius Caesar', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Marlon Brando legismertebb filmszerepe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Don Juan DeMarco', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Marlon Brando legismertebb filmszerepe?';
-- Q 48 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki rendezte A Keresztapa című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Francis Ford Coppola', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte A Keresztapa című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'John Malkovich', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte A Keresztapa című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Garry Marshall', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte A Keresztapa című filmet?';
-- Q 49 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben játszott Michael Jackson?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Men in Black', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott Michael Jackson?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Men in Black II', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott Michael Jackson?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A bárányok hallgatnak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott Michael Jackson?';
-- Q 50 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki rendezte a Farkasokkal táncoló című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kevin Costner', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte a Farkasokkal táncoló című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Anthony Hopkins', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte a Farkasokkal táncoló című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Steven Spielberg', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte a Farkasokkal táncoló című filmet?';
COMMIT;
BEGIN;
-- Q 51 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben játszott Meat Loaf?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hatodik érzék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott Meat Loaf?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Harcosok klubja', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott Meat Loaf?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerikai szépség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott Meat Loaf?';
-- Q 52 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be a Ryan közlegény megmentése című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1998-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Ryan közlegény megmentése című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Ryan közlegény megmentése című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1989-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Ryan közlegény megmentése című filmet?';
-- Q 53 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány Oscar-díjat nyert Az angol beteg című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '9', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert Az angol beteg című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert Az angol beteg című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert Az angol beteg című film?';
-- Q 54 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik szinház igazgatója Mácsai Pál?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Örkény István Színház', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik szinház igazgatója Mácsai Pál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Turay Ida Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik szinház igazgatója Mácsai Pál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madách Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik szinház igazgatója Mácsai Pál?';
-- Q 55 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem játszott Alföldi Róbert?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Meseautó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Alföldi Róbert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerelem első vérig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Alföldi Róbert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerelem második vérig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Alföldi Róbert?';
-- Q 56 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban forgatták a Szerelem első és második vérig című filmeket?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szegeden', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban forgatták a Szerelem első és második vérig című filmeket?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sopronban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban forgatták a Szerelem első és második vérig című filmeket?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kecskeméten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban forgatták a Szerelem első és második vérig című filmeket?';
-- Q 57 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben játszódik a Dirty Dancing című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1960-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben játszódik a Dirty Dancing című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1963-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben játszódik a Dirty Dancing című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1972-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben játszódik a Dirty Dancing című film?';
-- Q 58 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben hangzott el az Unchained Melody című szám?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ghost', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben hangzott el az Unchained Melody című szám?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dirty Dancing', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben hangzott el az Unchained Melody című szám?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Országúti diszkó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben hangzott el az Unchained Melody című szám?';
-- Q 59 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány éves volt augusztus 18-án Robert Redford?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '79', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves volt augusztus 18-án Robert Redford?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '80', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves volt augusztus 18-án Robert Redford?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '85', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves volt augusztus 18-án Robert Redford?';
-- Q 60 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke van Robert Redfordnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány gyermeke van Robert Redfordnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kettő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány gyermeke van Robert Redfordnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány gyermeke van Robert Redfordnak?';
COMMIT;
BEGIN;
-- Q 61 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a foglalkozása Szinetár Miklósnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sportoló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a foglalkozása Szinetár Miklósnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rendező', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a foglalkozása Szinetár Miklósnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'színész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a foglalkozása Szinetár Miklósnak?';
-- Q 62 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben játszódik a Szárnyas fejvadász című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2019-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben játszódik a Szárnyas fejvadász című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2020-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben játszódik a Szárnyas fejvadász című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2013-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben játszódik a Szárnyas fejvadász című film?';
-- Q 63 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem játszott Harisson Ford?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Paranoia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Harisson Ford?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atomcsapda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Harisson Ford?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gettómilliomos', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Harisson Ford?';
-- Q 64 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tévévetélkedő szolgál alapjául a Gettómilliomos című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Leggyengébb láncszem', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik tévévetélkedő szolgál alapjául a Gettómilliomos című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Legyen Ön is milliomos!', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik tévévetélkedő szolgál alapjául a Gettómilliomos című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egy szó - mint száz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik tévévetélkedő szolgál alapjául a Gettómilliomos című filmnek?';
-- Q 65 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik háború idején játszódik az Apokalipszis most című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vietnami háború', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik háború idején játszódik az Apokalipszis most című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'második világháború', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik háború idején játszódik az Apokalipszis most című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'százéves háború', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik háború idején játszódik az Apokalipszis most című film?';
-- Q 66 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Pontosan hány évig tartott a százéves háború?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '116', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Pontosan hány évig tartott a százéves háború?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '104', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Pontosan hány évig tartott a százéves háború?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '110', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Pontosan hány évig tartott a százéves háború?';
-- Q 67 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány Oscar-díjat nyert a 12 év rabszolgaság című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert a 12 év rabszolgaság című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert a 12 év rabszolgaság című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert a 12 év rabszolgaság című film?';
-- Q 68 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Az Argo-akció című film főszereplője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'John Goodman', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Az Argo-akció című film főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ben Affleck', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Az Argo-akció című film főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alan Arkin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Az Argo-akció című film főszereplője?';
-- Q 69 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be az Armageddon című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1998-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az Armageddon című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1999-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az Armageddon című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2003-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az Armageddon című filmet?';
-- Q 70 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem játszott Bruce Willis?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Avatar', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Bruce Willis?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Az utolsó cserkész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Bruce Willis?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Drágán add az életed!', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Bruce Willis?';
COMMIT;
BEGIN;
-- Q 71 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki rendezte az Avatar című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'James Cameron', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte az Avatar című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Francis Ford Coppola', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte az Avatar című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'John Hughes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte az Avatar című filmet?';
-- Q 72 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a főszereplője a Terminátor című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arnold Schwarzenegger', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a Terminátor című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sylvester Stallone', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a Terminátor című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jean-Claude Van Damme', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a Terminátor című filmnek?';
-- Q 73 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen nemzetiségű Jean-Claude Van Damme?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'belga', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen nemzetiségű Jean-Claude Van Damme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'svéd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen nemzetiségű Jean-Claude Van Damme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'amerikai', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen nemzetiségű Jean-Claude Van Damme?';
-- Q 74 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városunkban található a Vörösmarty Színház?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Székesfehérvár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városunkban található a Vörösmarty Színház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Budapest', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városunkban található a Vörösmarty Színház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városunkban található a Vörösmarty Színház?';
-- Q 75 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat Dumbó, Walt Disney rajzfilmjében?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kiselefánt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Dumbó, Walt Disney rajzfilmjében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gólya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Dumbó, Walt Disney rajzfilmjében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'varjú', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Dumbó, Walt Disney rajzfilmjében?';
-- Q 76 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Walt Disney első filmalkotása?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hófehérke és a hét törpe', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Walt Disney első filmalkotása?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hamupipőke', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Walt Disney első filmalkotása?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bambi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Walt Disney első filmalkotása?';
-- Q 77 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik animációs film folytatása a Szenilla nyomában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Némó nyomában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik animációs film folytatása a Szenilla nyomában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Agymanók', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik animációs film folytatása a Szenilla nyomában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jégvarázs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik animációs film folytatása a Szenilla nyomában?';
-- Q 78 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik mese alapján készült a Jégvarázs című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Hókirálynő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik mese alapján készült a Jégvarázs című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A rút kiskacsa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik mese alapján készült a Jégvarázs című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A kis gyufaárus lány', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik mese alapján készült a Jégvarázs című film?';
-- Q 79 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Walt Disney rajzfilm szereplője Hook kapitány?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pán Péter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Walt Disney rajzfilm szereplője Hook kapitány?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robin Hood', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Walt Disney rajzfilm szereplője Hook kapitány?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alice csodaországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Walt Disney rajzfilm szereplője Hook kapitány?';
-- Q 80 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen fajtájú kutya Susi, a Susi és Tekergő című rajzfilmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'spániel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen fajtájú kutya Susi, a Susi és Tekergő című rajzfilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'skót terrier', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen fajtájú kutya Susi, a Susi és Tekergő című rajzfilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csivava', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen fajtájú kutya Susi, a Susi és Tekergő című rajzfilmben?';
COMMIT;
BEGIN;
-- Q 81 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be az Aladdin című rajzfilmet Magyarországon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1993-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az Aladdin című rajzfilmet Magyarországon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1995-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az Aladdin című rajzfilmet Magyarországon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1998-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az Aladdin című rajzfilmet Magyarországon?';
-- Q 82 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve Az oroszlánkirály című rajzfim főszereplőjének?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szimba', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve Az oroszlánkirály című rajzfim főszereplőjének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zordon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve Az oroszlánkirály című rajzfim főszereplőjének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerafina', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve Az oroszlánkirály című rajzfim főszereplőjének?';
-- Q 83 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik erdőben játszódik a Micimackó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Százholdas Pagonyban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik erdőben játszódik a Micimackó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ezerholdas Vadonban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik erdőben játszódik a Micimackó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Száznapos Pagonyban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik erdőben játszódik a Micimackó?';
-- Q 84 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik név becézéséből ered a Micimackó név?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Emília', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik név becézéséből ered a Micimackó név?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Enikő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik név becézéséből ered a Micimackó név?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Emese', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik név becézéséből ered a Micimackó név?';
-- Q 85 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki rendezte A szakasz című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oliver Stone', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte A szakasz című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George Lucas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte A szakasz című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ridley Scott', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte A szakasz című filmet?';
-- Q 86 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány Oscar-díjat nyert a Titanic című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '11', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert a Titanic című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert a Titanic című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert a Titanic című film?';
-- Q 87 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor készült a A bolygó neve: Halál című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1986-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor készült a A bolygó neve: Halál című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1988-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor készült a A bolygó neve: Halál című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1978-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor készült a A bolygó neve: Halál című film?';
-- Q 88 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be Az oroszlánkirály című rajzfilmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1994-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be Az oroszlánkirály című rajzfilmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1996-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be Az oroszlánkirály című rajzfilmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1992-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be Az oroszlánkirály című rajzfilmet?';
-- Q 89 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színház tagja volt Csepregi Éva?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ruttkai Éva Színház', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színház tagja volt Csepregi Éva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Erkel Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színház tagja volt Csepregi Éva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madách Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színház tagja volt Csepregi Éva?';
-- Q 90 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játssza a címszereplőt a Hegylakó cím filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Christopher Lambert', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza a címszereplőt a Hegylakó cím filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sean Connery', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza a címszereplőt a Hegylakó cím filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robert De Niro', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza a címszereplőt a Hegylakó cím filmben?';
COMMIT;
BEGIN;
-- Q 91 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik fesztivál nagydíját nyerte el a Saula fia című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cannes-i fesztivál', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik fesztivál nagydíját nyerte el a Saula fia című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '21. Szarajevói filmfesztivál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik fesztivál nagydíját nyerte el a Saula fia című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'stockholmi nemzetközi filmfesztivál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik fesztivál nagydíját nyerte el a Saula fia című film?';
-- Q 92 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros Oscar-díjas színésznő Meryl Streep?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'háromszoros', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszoros Oscar-díjas színésznő Meryl Streep?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négyszeres', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszoros Oscar-díjas színésznő Meryl Streep?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétszeres', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszoros Oscar-díjas színésznő Meryl Streep?';
-- Q 93 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be A szarvasvadász című amerikai filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1978-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be A szarvasvadász című amerikai filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1988-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be A szarvasvadász című amerikai filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1975-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be A szarvasvadász című amerikai filmet?';
-- Q 94 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a férfi főszereplője a Gravitáció című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George Clooney', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a férfi főszereplője a Gravitáció című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ben Affleck', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a férfi főszereplője a Gravitáció című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Adrien Brody', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a férfi főszereplője a Gravitáció című filmnek?';
-- Q 95 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki rendezte az Annie Hall című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Woody Allen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte az Annie Hall című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Francis Ford Coppola', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte az Annie Hall című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bryan Singer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte az Annie Hall című filmet?';
-- Q 96 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem játszott Robert Pattinson?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ocean’s Thirteen – A játszma folytatódik', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Robert Pattinson?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cosmopolis', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Robert Pattinson?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Harry Potter és a Tűz Serlege', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Robert Pattinson?';
-- Q 97 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színész játssza K. ügynököt a Men in Black című vígjátékban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tommy Lee Jones', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színész játssza K. ügynököt a Men in Black című vígjátékban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tony Shalhoub', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színész játssza K. ügynököt a Men in Black című vígjátékban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rip Torn', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színész játssza K. ügynököt a Men in Black című vígjátékban?';
-- Q 98 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor alapították a Monty Python-csoportot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1969-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor alapították a Monty Python-csoportot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1975-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor alapították a Monty Python-csoportot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1986-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor alapították a Monty Python-csoportot?';
-- Q 99 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen származású Sherlock Holmes?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'skót', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen származású Sherlock Holmes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'svéd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen származású Sherlock Holmes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ír', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen származású Sherlock Holmes?';
-- Q 100 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be Magyarországon a Macskarisztokraták című rajzfilmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1994-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be Magyarországon a Macskarisztokraták című rajzfilmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1996-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be Magyarországon a Macskarisztokraták című rajzfilmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1988-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be Magyarországon a Macskarisztokraták című rajzfilmet?';
COMMIT;
BEGIN;
-- Q 101 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy hívják a fiút, aki mackóvá változott, a Mackótestvér című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kenai', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy hívják a fiút, aki mackóvá változott, a Mackótestvér című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Koda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy hívják a fiút, aki mackóvá változott, a Mackótestvér című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Denahi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy hívják a fiút, aki mackóvá változott, a Mackótestvér című filmben?';
-- Q 102 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a Verdák című filmben a főszereplő autónak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Villám McQueen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a Verdák című filmben a főszereplő autónak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sally Carrera', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a Verdák című filmben a főszereplő autónak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Doc Hudson', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a Verdák című filmben a főszereplő autónak?';
-- Q 103 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen halfajta Szenilla, a Szenilla nyomában című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'doktorhal', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen halfajta Szenilla, a Szenilla nyomában című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bohóchal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen halfajta Szenilla, a Szenilla nyomában című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gömbhal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen halfajta Szenilla, a Szenilla nyomában című filmben?';
-- Q 104 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik TV-filmben nem szerepelt Cserhalmi György?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szomszédok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik TV-filmben nem szerepelt Cserhalmi György?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kisváros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik TV-filmben nem szerepelt Cserhalmi György?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rózsa Sándor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik TV-filmben nem szerepelt Cserhalmi György?';
-- Q 105 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be az Indul a bakterház című vígjátékot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1980-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az Indul a bakterház című vígjátékot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1986-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az Indul a bakterház című vígjátékot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1978-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az Indul a bakterház című vígjátékot?';
-- Q 106 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Sose halunk meg című filmvígjáték betétdala?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagy utazás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Sose halunk meg című filmvígjáték betétdala?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vigyázz rám', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Sose halunk meg című filmvígjáték betétdala?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olyan szépek voltunk', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Sose halunk meg című filmvígjáték betétdala?';
-- Q 107 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy hívták Vuk nagybátyját a rajzfilmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Karak', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy hívták Vuk nagybátyját a rajzfilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kag', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy hívták Vuk nagybátyját a rajzfilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kobak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy hívták Vuk nagybátyját a rajzfilmben?';
-- Q 108 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik településen forgatták A legényanya című fekete-fehér vígjátékot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dágon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik településen forgatták A legényanya című fekete-fehér vígjátékot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tardoson', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik településen forgatták A legényanya című fekete-fehér vígjátékot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vértesszőlősön', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik településen forgatták A legényanya című fekete-fehér vígjátékot?';
-- Q 109 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évet töltött Robinson Crusoe egy szigeten?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '28', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évet töltött Robinson Crusoe egy szigeten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '42', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évet töltött Robinson Crusoe egy szigeten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '13', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évet töltött Robinson Crusoe egy szigeten?';
-- Q 110 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a férje Földes Eszter színésznőnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lovasi András', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a férje Földes Eszter színésznőnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Simon Kornél', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a férje Földes Eszter színésznőnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kamarás Iván', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a férje Földes Eszter színésznőnek?';
COMMIT;
BEGIN;
-- Q 111 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban született Kamarás Iván?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécs', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban született Kamarás Iván?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Miskolc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban született Kamarás Iván?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szekszárd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban született Kamarás Iván?';
-- Q 112 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy hívták Paula fiatalkori udvarlóját, a Mézga család című rajzfilmsorozatban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hufnágel Pisti', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy hívták Paula fiatalkori udvarlóját, a Mézga család című rajzfilmsorozatban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Döbrögi Dániel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy hívták Paula fiatalkori udvarlóját, a Mézga család című rajzfilmsorozatban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Buga Jóska', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy hívták Paula fiatalkori udvarlóját, a Mézga család című rajzfilmsorozatban?';
-- Q 113 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a főszereplője az Indul a bakterház című vígjátéknak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Regős Bendegúz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a főszereplője az Indul a bakterház című vígjátéknak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tordai Imi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a főszereplője az Indul a bakterház című vígjátéknak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gyagyás Tódi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a főszereplője az Indul a bakterház című vígjátéknak?';
-- Q 114 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az születéskori vezetékneve Bujtor Istvánnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Frenreisz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az születéskori vezetékneve Bujtor Istvánnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gundel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az születéskori vezetékneve Bujtor Istvánnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagynemesi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az születéskori vezetékneve Bujtor Istvánnak?';
-- Q 115 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik rajzfilmbe szerepelnek dinoszauruszok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Frédi és Béni', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik rajzfilmbe szerepelnek dinoszauruszok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mézga család', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik rajzfilmbe szerepelnek dinoszauruszok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Frakk', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik rajzfilmbe szerepelnek dinoszauruszok?';
-- Q 116 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszoros Oscar-díjas Barbra Streisand?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétszeres', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszoros Oscar-díjas Barbra Streisand?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'háromszoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszoros Oscar-díjas Barbra Streisand?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ötszörös', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszoros Oscar-díjas Barbra Streisand?';
-- Q 117 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor adták át először "A Nemzet Színésze" címet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor adták át először "A Nemzet Színésze" címet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2002-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor adták át először "A Nemzet Színésze" címet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1997-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor adták át először "A Nemzet Színésze" címet?';
-- Q 118 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, '2010-ben ki kapta meg "A Nemzet Színésze" díjat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Haumann Péter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2010-ben ki kapta meg "A Nemzet Színésze" díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bodrogi Gyula', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2010-ben ki kapta meg "A Nemzet Színésze" díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tordy Géza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2010-ben ki kapta meg "A Nemzet Színésze" díjat?';
-- Q 119 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az Üvegtigris a filmvígjátékban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'büfékocsi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az Üvegtigris a filmvígjátékban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'üvegszobor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az Üvegtigris a filmvígjátékban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'macska neve', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az Üvegtigris a filmvígjátékban?';
-- Q 120 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játszotta a főszerepet a Made in Hungaria című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szabó Kimmel Tamás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta a főszerepet a Made in Hungaria című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Simon Kornél', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta a főszerepet a Made in Hungaria című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csányi Sándor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta a főszerepet a Made in Hungaria című filmben?';
COMMIT;
BEGIN;
-- Q 121 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színház tagja Schell Judit?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Thália Színház', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színház tagja Schell Judit?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vígszínház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színház tagja Schell Judit?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madách Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színház tagja Schell Judit?';
-- Q 122 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tévéfilmben nem játszott Ulmann Mónika?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kisváros', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik tévéfilmben nem játszott Ulmann Mónika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szomszédok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik tévéfilmben nem játszott Ulmann Mónika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Barátok közt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik tévéfilmben nem játszott Ulmann Mónika?';
-- Q 123 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik játékfilmben nem játszott Szerednyei Béla?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egy szerelem három éjszakája', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik játékfilmben nem játszott Szerednyei Béla?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kútfejek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik játékfilmben nem játszott Szerednyei Béla?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egy bolond százat csinál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik játékfilmben nem játszott Szerednyei Béla?';
-- Q 124 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játssza Ramirezt a Hegylakó című amerikai filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sean Connery', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza Ramirezt a Hegylakó című amerikai filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robert de Niro', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza Ramirezt a Hegylakó című amerikai filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bruce Willis', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza Ramirezt a Hegylakó című amerikai filmben?';
-- Q 125 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben játszik jegyárust Sandra Bullock?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aludj csak - én álmodom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszik jegyárust Sandra Bullock?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerelmi bájital', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszik jegyárust Sandra Bullock?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Két hét múlva örökké', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszik jegyárust Sandra Bullock?';
-- Q 126 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a címe a Nagy Imre életéről készült filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A temetetlen halott', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a címe a Nagy Imre életéről készült filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sorstalanság', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a címe a Nagy Imre életéről készült filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Saul fia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a címe a Nagy Imre életéről készült filmnek?';
-- Q 127 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játszotta Harry Pottert a filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Daniel Radcliffe', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Harry Pottert a filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rupert Grint', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Harry Pottert a filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mark Williams', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Harry Pottert a filmben?';
-- Q 128 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kiket neveznek muglinak a Harry Potter című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a hétköznapi embereket', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiket neveznek muglinak a Harry Potter című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a varázslókat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiket neveznek muglinak a Harry Potter című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a boszorkányokat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiket neveznek muglinak a Harry Potter című filmben?';
-- Q 129 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke született Harry Potternek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány gyermeke született Harry Potternek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány gyermeke született Harry Potternek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány gyermeke született Harry Potternek?';
-- Q 130 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem szerepel a Harry Potterben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zsákos Frodó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem szerepel a Harry Potterben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Véres Báró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem szerepel a Harry Potterben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pufók Fráter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem szerepel a Harry Potterben?';
COMMIT;
BEGIN;
-- Q 131 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a labdajáték neve amit űz Harry Potter?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kviddics', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a labdajáték neve amit űz Harry Potter?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kvaddics', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a labdajáték neve amit űz Harry Potter?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'karavics', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a labdajáték neve amit űz Harry Potter?';
-- Q 132 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki alakította Zsákos Frodót A Gyűrűk Urában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Elijah Wood', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakította Zsákos Frodót A Gyűrűk Urában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ian McKellen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakította Zsákos Frodót A Gyűrűk Urában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Orlando Bloom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakította Zsákos Frodót A Gyűrűk Urában?';
-- Q 133 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kik a hobbitok A Gyűrűk Urában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'félszerzetek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kik a hobbitok A Gyűrűk Urában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mágusok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kik a hobbitok A Gyűrűk Urában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'törpök', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kik a hobbitok A Gyűrűk Urában?';
-- Q 134 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem a Gyűrűk Ura szereplője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Voldemort', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem a Gyűrűk Ura szereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aragorn', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem a Gyűrűk Ura szereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gandalf', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem a Gyűrűk Ura szereplője?';
-- Q 135 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem szerepelt Jason Statham?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagyfiúk', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem szerepelt Jason Statham?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Az olasz meló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem szerepelt Jason Statham?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A szállító', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem szerepelt Jason Statham?';
-- Q 136 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik művészeti ágban jeleskedik Sylvester Stallone?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'festészet', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik művészeti ágban jeleskedik Sylvester Stallone?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szobrászat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik művészeti ágban jeleskedik Sylvester Stallone?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'iparművészet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik művészeti ágban jeleskedik Sylvester Stallone?';
-- Q 137 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a női főszereplője a Csokoládé című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Juliette Binoche', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a női főszereplője a Csokoládé című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Julia Roberts', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a női főszereplője a Csokoládé című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sandra Bullock', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a női főszereplője a Csokoládé című filmnek?';
-- Q 138 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat a főszereplője a Lecsó című animációs filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'patkány', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat a főszereplője a Lecsó című animációs filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyúl', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat a főszereplője a Lecsó című animációs filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hörcsög', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat a főszereplője a Lecsó című animációs filmnek?';
-- Q 139 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik TV-filmben szerepelt Garas Dezső?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Életképek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik TV-filmben szerepelt Garas Dezső?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szomszédok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik TV-filmben szerepelt Garas Dezső?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kisváros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik TV-filmben szerepelt Garas Dezső?';
-- Q 140 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik TV filmben játszott Szulák Andrea?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Linda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik TV filmben játszott Szulák Andrea?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szomszédok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik TV filmben játszott Szulák Andrea?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kisváros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik TV filmben játszott Szulák Andrea?';
COMMIT;
BEGIN;
-- Q 141 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színész játssza Linda apját, a Linda című filmsorozatban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bodrogi Gyula', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színész játssza Linda apját, a Linda című filmsorozatban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Harsányi Gábor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színész játssza Linda apját, a Linda című filmsorozatban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balázs Péter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színész játssza Linda apját, a Linda című filmsorozatban?';
-- Q 142 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játssza a rádióst a Jó reggelt, Vietnam! című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robin Williams', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza a rádióst a Jó reggelt, Vietnam! című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kevin Costner', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza a rádióst a Jó reggelt, Vietnam! című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robert de Niro', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza a rádióst a Jó reggelt, Vietnam! című filmben?';
-- Q 143 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be a Híd a Kwai folyón című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1957-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Híd a Kwai folyón című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1967-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Híd a Kwai folyón című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1973-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Híd a Kwai folyón című filmet?';
-- Q 144 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány Oscar-díjat nyert A bárányok hallgatnak című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert A bárányok hallgatnak című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert A bárányok hallgatnak című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert A bárányok hallgatnak című film?';
-- Q 145 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai színésznőről neveztek el kisbolygót?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jodie Foster', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai színésznőről neveztek el kisbolygót?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Natalie Portman', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai színésznőről neveztek el kisbolygót?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Meryl Streep', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai színésznőről neveztek el kisbolygót?';
-- Q 146 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai színésznő cukorbeteg?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Halle Berry', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai színésznő cukorbeteg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sharon Stone', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai színésznő cukorbeteg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Raquel Welch', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai színésznő cukorbeteg?';
-- Q 147 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen származású Charlize Theron színésznő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dél-afrikai', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen származású Charlize Theron színésznő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angliai', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen származású Charlize Theron színésznő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'svéd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen származású Charlize Theron színésznő?';
-- Q 148 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Kate Hudson, szintén színésznő édesanyja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Goldie Hawn', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Kate Hudson, szintén színésznő édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Faye Dunaway', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Kate Hudson, szintén színésznő édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jane Fonda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Kate Hudson, szintén színésznő édesanyja?';
-- Q 149 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játssza Szabó Károlyt a Szabadság, szerelem című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fenyő Iván', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza Szabó Károlyt a Szabadság, szerelem című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csányi Sándor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza Szabó Károlyt a Szabadság, szerelem című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Simon Kornél', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza Szabó Károlyt a Szabadság, szerelem című filmben?';
-- Q 150 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik magyar film játszódik az 56-os forrdalom alatt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szamárköhögés', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik magyar film játszódik az 56-os forrdalom alatt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kontroll', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik magyar film játszódik az 56-os forrdalom alatt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Argo', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik magyar film játszódik az 56-os forrdalom alatt?';
COMMIT;
BEGIN;
-- Q 151 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor született Connor MacLeod, a Hegylakó filmek címszereplője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1518. január 1-jén', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor született Connor MacLeod, a Hegylakó filmek címszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1821. január 1-jén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor született Connor MacLeod, a Hegylakó filmek címszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1678. január 1-jén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor született Connor MacLeod, a Hegylakó filmek címszereplője?';
-- Q 152 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évesen hunyt el Marilyn Monroe?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '36', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évesen hunyt el Marilyn Monroe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '43', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évesen hunyt el Marilyn Monroe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '28', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évesen hunyt el Marilyn Monroe?';
-- Q 153 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke született Charlie Chaplinnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány gyermeke született Charlie Chaplinnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány gyermeke született Charlie Chaplinnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány gyermeke született Charlie Chaplinnek?';
-- Q 154 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol született Jack Lemmon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'liftben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol született Jack Lemmon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'taxiban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol született Jack Lemmon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'otthon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol született Jack Lemmon?';
-- Q 155 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem játszott Walter Matthau?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Van aki forrón szereti', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Walter Matthau?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A szomszéd nője mindig zöldebb', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Walter Matthau?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dennis a komisz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Walter Matthau?';
-- Q 156 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben lett Eszenyi Enikő a Halhatatlanok Társulatának örökös tagja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2013-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben lett Eszenyi Enikő a Halhatatlanok Társulatának örökös tagja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben lett Eszenyi Enikő a Halhatatlanok Társulatának örökös tagja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2009-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben lett Eszenyi Enikő a Halhatatlanok Társulatának örökös tagja?';
-- Q 157 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik film játszódik Las Vegasban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Másnaposok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film játszódik Las Vegasban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagyfiúk', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film játszódik Las Vegasban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerikai pite', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film játszódik Las Vegasban?';
-- Q 158 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem szerepel az Elvált nők klubja című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Meryl Streep', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem szerepel az Elvált nők klubja című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Diane Keaton', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem szerepel az Elvált nők klubja című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Goldie Hawn', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem szerepel az Elvált nők klubja című filmben?';
-- Q 159 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem játszott Növényi Norbert?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sose halunk meg', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Növényi Norbert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Magyar vándor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Növényi Norbert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Papírkutyák', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Növényi Norbert?';
-- Q 160 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játszotta Álmos szerepét a Magyar vándor című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gesztesi Károly', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Álmos szerepét a Magyar vándor című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csuja Imre', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Álmos szerepét a Magyar vándor című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Scherer Péter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Álmos szerepét a Magyar vándor című filmben?';
COMMIT;
BEGIN;
-- Q 161 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor alapították a Jászai Mari-díjat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1953-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor alapították a Jászai Mari-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1983-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor alapították a Jászai Mari-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1967-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor alapították a Jászai Mari-díjat?';
-- Q 162 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kit alakít Antal Nimród a Machete című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'testőrt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit alakít Antal Nimród a Machete című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'orvost', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit alakít Antal Nimród a Machete című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mesterlövészt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit alakít Antal Nimród a Machete című filmben?';
-- Q 163 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kiknek az életét dolgozta fel a Kontroll című magyar film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'metróellenőrök', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiknek az életét dolgozta fel a Kontroll című magyar film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'metróvezetők', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiknek az életét dolgozta fel a Kontroll című magyar film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kalauzok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiknek az életét dolgozta fel a Kontroll című magyar film?';
-- Q 164 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a főszereplője a Kontroll című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csányi Sándor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a Kontroll című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hujber Ferenc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a Kontroll című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fenyő Iván', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a Kontroll című filmnek?';
-- Q 165 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy hívták a nyugdíjba készülő parkőrt az Égigérő fű című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Poldi bácsi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy hívták a nyugdíjba készülő parkőrt az Égigérő fű című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Toldi bácsi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy hívták a nyugdíjba készülő parkőrt az Égigérő fű című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Géza bácsi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy hívták a nyugdíjba készülő parkőrt az Égigérő fű című filmben?';
-- Q 166 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik TV-filmben nem játszott Détár Enikő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szomszédok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik TV-filmben nem játszott Détár Enikő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nyolc évszak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik TV-filmben nem játszott Détár Enikő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Linda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik TV-filmben nem játszott Détár Enikő?';
-- Q 167 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik magyar filmben szerepelt Józsa Imre, Jászai-Mari díjas színművész?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Magyar vándor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik magyar filmben szerepelt Józsa Imre, Jászai-Mari díjas színművész?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Üvegtigris', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik magyar filmben szerepelt Józsa Imre, Jászai-Mari díjas színművész?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sose halunk meg', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik magyar filmben szerepelt Józsa Imre, Jászai-Mari díjas színművész?';
-- Q 168 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színház tagja volt Józsa Imre?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'József Attila Színház', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színház tagja volt Józsa Imre?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madách Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színház tagja volt Józsa Imre?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Turay Ida Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színház tagja volt Józsa Imre?';
-- Q 169 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Minek a rövidítése a MÜPA?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Művészetek palotája', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Minek a rövidítése a MÜPA?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Művészetek színháza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Minek a rövidítése a MÜPA?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Műsorok tárháza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Minek a rövidítése a MÜPA?';
-- Q 170 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színház igazgatója Nemcsák Károly?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'József Attila Színház', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színház igazgatója Nemcsák Károly?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Thália Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színház igazgatója Nemcsák Károly?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vígszínház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színház igazgatója Nemcsák Károly?';
COMMIT;
BEGIN;
-- Q 171 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen fajtájú kutyák a főszereplői a 101 kiskutya című rajzfilmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dalmata', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen fajtájú kutyák a főszereplői a 101 kiskutya című rajzfilmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'labrador', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen fajtájú kutyák a főszereplői a 101 kiskutya című rajzfilmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vizsla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen fajtájú kutyák a főszereplői a 101 kiskutya című rajzfilmnek?';
-- Q 172 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen nemzetiségű Greta Garbo színésznő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'svéd', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen nemzetiségű Greta Garbo színésznő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen nemzetiségű Greta Garbo színésznő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen nemzetiségű Greta Garbo színésznő?';
-- Q 173 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben játszik Natalie Portman balerinát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fekete hattyú', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszik Natalie Portman balerinát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hideghegy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszik Natalie Portman balerinát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Thor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszik Natalie Portman balerinát?';
-- Q 174 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben mutatták be a Trainspotting című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1996-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben mutatták be a Trainspotting című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben mutatták be a Trainspotting című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1987-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben mutatták be a Trainspotting című filmet?';
-- Q 175 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban játszódott a Ponyvaregény című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Los Angelesben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban játszódott a Ponyvaregény című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'San Diegoban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban játszódott a Ponyvaregény című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'San Franciscoban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban játszódott a Ponyvaregény című film?';
-- Q 176 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent magyarul a Mission: Impossible?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lehetetlen küldetés', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mit jelent magyarul a Mission: Impossible?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'megmagyarázhatatlan jelenségek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mit jelent magyarul a Mission: Impossible?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tökéletes katona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mit jelent magyarul a Mission: Impossible?';
-- Q 177 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a producere és a főszereplője is Mission: Impossible című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom Cruise', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a producere és a főszereplője is Mission: Impossible című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brad Pitt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a producere és a főszereplője is Mission: Impossible című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ben Affleck', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a producere és a főszereplője is Mission: Impossible című filmnek?';
-- Q 178 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben játszik titkos ügynököt Tom Cruise?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kéjjel-nappal', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszik titkos ügynököt Tom Cruise?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A holnap határa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszik titkos ügynököt Tom Cruise?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Világok harca', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszik titkos ügynököt Tom Cruise?';
-- Q 179 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a Volt egyszer egy Vadnyugat című film zeneszerzője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ennio Morricone', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a Volt egyszer egy Vadnyugat című film zeneszerzője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nino Rota', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a Volt egyszer egy Vadnyugat című film zeneszerzője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'John Williams', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a Volt egyszer egy Vadnyugat című film zeneszerzője?';
-- Q 180 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színésznő játszotta Bonnie-t a Bonnie és Clyde című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Faye Dunaway', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színésznő játszotta Bonnie-t a Bonnie és Clyde című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Meryl Streep', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színésznő játszotta Bonnie-t a Bonnie és Clyde című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Diane Keaton', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színésznő játszotta Bonnie-t a Bonnie és Clyde című filmben?';
COMMIT;
BEGIN;
-- Q 181 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszor volt férjnél Diane Keaton, amerikai színésznő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egyszer sem', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszor volt férjnél Diane Keaton, amerikai színésznő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kétszer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszor volt férjnél Diane Keaton, amerikai színésznő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ötször', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszor volt férjnél Diane Keaton, amerikai színésznő?';
-- Q 182 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik film szól a Watergate-botrányról?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Az elnök emberei', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film szól a Watergate-botrányról?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Az elnök végveszélyben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film szól a Watergate-botrányról?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Az elnök különgépe', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film szól a Watergate-botrányról?';
-- Q 183 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Fedák Sári színésznő, író férje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Molnár Ferenc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Fedák Sári színésznő, író férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jókai Mór', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Fedák Sári színésznő, író férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Babits Mihály', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Fedák Sári színésznő, író férje?';
-- Q 184 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol laknak a Tini Nindzsa Teknőcök?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csatornarendszerben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol laknak a Tini Nindzsa Teknőcök?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tengerben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol laknak a Tini Nindzsa Teknőcök?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'barlangban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol laknak a Tini Nindzsa Teknőcök?';
-- Q 185 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játszotta Wesselényi Miklóst "A Hídember" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cserhalmi György', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Wesselényi Miklóst "A Hídember" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eperjes Károly', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Wesselényi Miklóst "A Hídember" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sinkó László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Wesselényi Miklóst "A Hídember" című filmben?';
-- Q 186 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Tv-filmben játszott Csongrádi Kata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robog az úthenger', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Tv-filmben játszott Csongrádi Kata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Família Kft', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Tv-filmben játszott Csongrádi Kata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Álombolt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Tv-filmben játszott Csongrádi Kata?';
-- Q 187 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki az Elrabolva című film főszereplője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Liam Neeson', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki az Elrabolva című film főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hugh Grant', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki az Elrabolva című film főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Colin Firth', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki az Elrabolva című film főszereplője?';
-- Q 188 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik regényben szerepel Valkay tanár úr?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Légy jó mindhalálig', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik regényben szerepel Valkay tanár úr?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Abigél', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik regényben szerepel Valkay tanár úr?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egri csillagok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik regényben szerepel Valkay tanár úr?';
-- Q 189 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol forgatták a Herkules című amerikai kalandfilmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Magyarországon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol forgatták a Herkules című amerikai kalandfilmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol forgatták a Herkules című amerikai kalandfilmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanadában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol forgatták a Herkules című amerikai kalandfilmet?';
-- Q 190 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játszotta Vitay Georginát az Abigél című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerencsi Éva', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Vitay Georginát az Abigél című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bánfalvy Ágnes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Vitay Georginát az Abigél című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egri Kati', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Vitay Georginát az Abigél című filmben?';
COMMIT;
BEGIN;
-- Q 191 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban él Pán Péter?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sohaországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik országban él Pán Péter?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hetedhét országban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik országban él Pán Péter?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Meseországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik országban él Pán Péter?';
-- Q 192 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik film zenéjét nem Guido és Maurizio de Angelis testvérpár szerezte?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Volt egyszer egy vadnyugat', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film zenéjét nem Guido és Maurizio de Angelis testvérpár szerezte?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sandokan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film zenéjét nem Guido és Maurizio de Angelis testvérpár szerezte?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zorro', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film zenéjét nem Guido és Maurizio de Angelis testvérpár szerezte?';
-- Q 193 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a főszereplője " A Jó, a Rossz és a Csúf" című olasz westernfilmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Clint Eastwood', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője " A Jó, a Rossz és a Csúf" című olasz westernfilmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robert de Niro', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője " A Jó, a Rossz és a Csúf" című olasz westernfilmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alain Delon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője " A Jó, a Rossz és a Csúf" című olasz westernfilmnek?';
-- Q 194 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be a Vissza a jövőbe című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1985-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Vissza a jövőbe című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1989-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Vissza a jövőbe című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Vissza a jövőbe című filmet?';
-- Q 195 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Mészáros Márta filmrendező férje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jancsó Miklós', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Mészáros Márta filmrendező férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hernádi Gyula', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Mészáros Márta filmrendező férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szikora János', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Mészáros Márta filmrendező férje?';
-- Q 196 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színész nem alakította még James Bondot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom Hanks', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színész nem alakította még James Bondot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sean Connery', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színész nem alakította még James Bondot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Daniel Craig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színész nem alakította még James Bondot?';
-- Q 197 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány Oscar-díjat nyert a Gladiátor című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert a Gladiátor című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert a Gladiátor című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Oscar-díjat nyert a Gladiátor című film?';
-- Q 198 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játssza a főszerepet a Mátrix című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Keanu Reeves', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza a főszerepet a Mátrix című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jeff Daniels', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza a főszerepet a Mátrix című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom Cruise', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza a főszerepet a Mátrix című filmben?';
-- Q 199 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Disney rajzfilmben szerepel Jázmin hercegnő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aladdin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Disney rajzfilmben szerepel Jázmin hercegnő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pocahontas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Disney rajzfilmben szerepel Jázmin hercegnő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mulan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Disney rajzfilmben szerepel Jázmin hercegnő?';
-- Q 200 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik film játszódott Los Angelesben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ponyvaregény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film játszódott Los Angelesben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aranyoskám', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film játszódott Los Angelesben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tökéletes gyilkosság', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film játszódott Los Angelesben?';
COMMIT;
BEGIN;
-- Q 201 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek a balettje "A diótörő"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csajkovszkij', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a balettje "A diótörő"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mozart', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a balettje "A diótörő"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Beethoven', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a balettje "A diótörő"?';
-- Q 202 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány név szerepel a Hollywoodi hírességek sétányán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'több mint 2000', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány név szerepel a Hollywoodi hírességek sétányán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'több mint 10000', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány név szerepel a Hollywoodi hírességek sétányán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'több mint 50000', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány név szerepel a Hollywoodi hírességek sétányán?';
-- Q 203 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen színű Shrek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöld', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen színű Shrek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sárga', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen színű Shrek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'piros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen színű Shrek?';
-- Q 204 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi James Bond másik neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '007-es ügynök', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi James Bond másik neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'beépített ügynök', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi James Bond másik neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '123-as ügynök', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi James Bond másik neve?';
-- Q 205 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a neve az elefántkölyöknek "A dzsungel könyvében"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Picur', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a neve az elefántkölyöknek "A dzsungel könyvében"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pici', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a neve az elefántkölyöknek "A dzsungel könyvében"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fáncsi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a neve az elefántkölyöknek "A dzsungel könyvében"?';
-- Q 206 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor nyerte meg Gábor Zsazsa a Miss Hungary címet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1936-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor nyerte meg Gábor Zsazsa a Miss Hungary címet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1945-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor nyerte meg Gábor Zsazsa a Miss Hungary címet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1976-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor nyerte meg Gábor Zsazsa a Miss Hungary címet?';
-- Q 207 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor játszódik A diótörő című balett?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Karácsonykor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor játszódik A diótörő című balett?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Húsvétkor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor játszódik A diótörő című balett?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szilveszterkor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor játszódik A diótörő című balett?';
-- Q 208 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Jean-Paul Belmondo beceneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bébel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Jean-Paul Belmondo beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Belko', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Jean-Paul Belmondo beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bobo', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Jean-Paul Belmondo beceneve?';
-- Q 209 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Tv-filmben játszott Johnny Cash?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Columbo', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Tv-filmben játszott Johnny Cash?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Derrick', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Tv-filmben játszott Johnny Cash?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sherlock és Watson', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik Tv-filmben játszott Johnny Cash?';
-- Q 210 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kit neveztek "a Színészkirálynak"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Latinovits Zoltánt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit neveztek "a Színészkirálynak"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bessenyei Ferencet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit neveztek "a Színészkirálynak"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sinkovits Imrét', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit neveztek "a Színészkirálynak"?';
COMMIT;
BEGIN;
-- Q 211 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki rendezte a Jurassik Park című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Steven Spielberg', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte a Jurassik Park című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Francis Ford Coppola', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte a Jurassik Park című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George Lucas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte a Jurassik Park című filmet?';
-- Q 212 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai filmet forgatták 2000-ben Budapesten?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kémjátszma', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai filmet forgatták 2000-ben Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Blöff', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai filmet forgatták 2000-ben Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Trója', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai filmet forgatták 2000-ben Budapesten?';
-- Q 213 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány éves korában szerepelt először Ariana Grande a Broadway-en?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '15', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves korában szerepelt először Ariana Grande a Broadway-en?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '17', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves korában szerepelt először Ariana Grande a Broadway-en?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves korában szerepelt először Ariana Grande a Broadway-en?';
-- Q 214 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki rendezte a Csinibaba című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tímár Péter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte a Csinibaba című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jancsó Miklós', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte a Csinibaba című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Antal Nimród', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte a Csinibaba című filmet?';
-- Q 215 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a hóember neve a Jégvarázs című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaf', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a hóember neve a Jégvarázs című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olga', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a hóember neve a Jégvarázs című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ottó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a hóember neve a Jégvarázs című filmben?';
-- Q 216 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem játszott Brad Pitt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Apokalipszis most', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Brad Pitt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hetedik', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Brad Pitt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12 év rabszolgaság', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Brad Pitt?';
-- Q 217 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány éves korában hunyt el Gábor Zsazsa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '99', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves korában hunyt el Gábor Zsazsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '88', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves korában hunyt el Gábor Zsazsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '77', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves korában hunyt el Gábor Zsazsa?';
-- Q 218 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben készült a Szerelem első vérig című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1985-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben készült a Szerelem első vérig című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1987-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben készült a Szerelem első vérig című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1981-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben készült a Szerelem első vérig című film?';
-- Q 219 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játszotta Feri, az apa szerepét a Szamárköhögés című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Garas Dezső', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Feri, az apa szerepét a Szamárköhögés című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eperjes Károly', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Feri, az apa szerepét a Szamárköhögés című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rudolf Péter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játszotta Feri, az apa szerepét a Szamárköhögés című filmben?';
-- Q 220 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Jégvarázs című film eredeti címe?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Frozen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Jégvarázs című film eredeti címe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Magic', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Jégvarázs című film eredeti címe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ice-ice', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Jégvarázs című film eredeti címe?';
COMMIT;
BEGIN;
-- Q 221 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor kezdődik az Igazából szerelem című film története?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5 héttel karácsony előtt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor kezdődik az Igazából szerelem című film története?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8 héttel karácsony előtt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor kezdődik az Igazából szerelem című film története?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2 héttel szilveszter előtt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor kezdődik az Igazából szerelem című film története?';
-- Q 222 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a "Reszkessetek betörők" című film eredeti címe?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Home alone', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a "Reszkessetek betörők" című film eredeti címe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Home sweet home', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a "Reszkessetek betörők" című film eredeti címe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Holiday home', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a "Reszkessetek betörők" című film eredeti címe?';
-- Q 223 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány éves Kevin a "Reszkessetek betörők" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves Kevin a "Reszkessetek betörők" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves Kevin a "Reszkessetek betörők" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves Kevin a "Reszkessetek betörők" című filmben?';
-- Q 224 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a Grincs című film főszereplője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jim Carrey', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Grincs című film főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brad Pitt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Grincs című film főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Keanu Reeves', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Grincs című film főszereplője?';
-- Q 225 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Grincs kutyájának a neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Max', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Grincs kutyájának a neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bobby', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Grincs kutyájának a neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rex', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Grincs kutyájának a neve?';
-- Q 226 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Polar Express végállomása az animációs filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Északi-sark', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Polar Express végállomása az animációs filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Déli-sark', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Polar Express végállomása az animációs filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztrália', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Polar Express végállomása az animációs filmben?';
-- Q 227 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi terveztek karácsonykor a Krank szülők a Kelekótya karácsony című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'trópusi utazást', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi terveztek karácsonykor a Krank szülők a Kelekótya karácsony című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'TV nézést', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi terveztek karácsonykor a Krank szülők a Kelekótya karácsony című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'házibulit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi terveztek karácsonykor a Krank szülők a Kelekótya karácsony című filmben?';
-- Q 228 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a rénszarvas neve a Jégvarázs című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sven', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a rénszarvas neve a Jégvarázs című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csillag', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a rénszarvas neve a Jégvarázs című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Villám', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a rénszarvas neve a Jégvarázs című filmben?';
-- Q 229 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be a Szaffi című rajzfilmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1984-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Szaffi című rajzfilmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1986-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Szaffi című rajzfilmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1998-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Szaffi című rajzfilmet?';
-- Q 230 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a kleptomániás a "Káosz karácsonyra" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Emma', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a kleptomániás a "Káosz karácsonyra" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Charlotte', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a kleptomániás a "Káosz karácsonyra" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eleanor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a kleptomániás a "Káosz karácsonyra" című filmben?';
COMMIT;
BEGIN;
-- Q 231 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik pap életét dolgozza fel a "Legyetek jók, ha tudtok" című olasz film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Néri Szent Fülöp', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik pap életét dolgozza fel a "Legyetek jók, ha tudtok" című olasz film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lellisi Szent Kamill', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik pap életét dolgozza fel a "Legyetek jók, ha tudtok" című olasz film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bosco Szent János', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik pap életét dolgozza fel a "Legyetek jók, ha tudtok" című olasz film?';
-- Q 232 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik években játszódik a "Legyetek jók ha tudtok" című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1500-as', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik években játszódik a "Legyetek jók ha tudtok" című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1600-as', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik években játszódik a "Legyetek jók ha tudtok" című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1700-as', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik években játszódik a "Legyetek jók ha tudtok" című film?';
-- Q 233 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat Manfréd a Jégkorszak című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gyapjas mamut', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Manfréd a Jégkorszak című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lajhár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Manfréd a Jégkorszak című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'földimalacímű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Manfréd a Jégkorszak című filmben?';
-- Q 234 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben vált ismertté Carrie Fisher?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csillagok háborúja', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben vált ismertté Carrie Fisher?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Harry és Sally', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben vált ismertté Carrie Fisher?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hannah és nővérei', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben vált ismertté Carrie Fisher?';
-- Q 235 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek az életét mutatja be "A Hídember" című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Széchenyi István', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az életét mutatja be "A Hídember" című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kossuth Lajos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az életét mutatja be "A Hídember" című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ferenc József', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az életét mutatja be "A Hídember" című film?';
-- Q 236 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a Tini Nindzsa Teknőcök vezetője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Leonardo', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Tini Nindzsa Teknőcök vezetője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Raffaello', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Tini Nindzsa Teknőcök vezetője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Donatello', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Tini Nindzsa Teknőcök vezetője?';
-- Q 237 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek a neve nem szerepel a Hollywoodi hírességek sétányán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tolnay Klári', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a neve nem szerepel a Hollywoodi hírességek sétányán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lugosi Béla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a neve nem szerepel a Hollywoodi hírességek sétányán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gábor Zsazsa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a neve nem szerepel a Hollywoodi hírességek sétányán?';
-- Q 238 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játssza Simon bá-t a Csinibaba című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gálvölgyi János', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza Simon bá-t a Csinibaba című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Reviczky Gábor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza Simon bá-t a Csinibaba című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Galla Miklós', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza Simon bá-t a Csinibaba című filmben?';
-- Q 239 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be a Csinibaba című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1997-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Csinibaba című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1998-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Csinibaba című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a Csinibaba című filmet?';
-- Q 240 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány éves korában hunyt el Körmendi János?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '80', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves korában hunyt el Körmendi János?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '70', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves korában hunyt el Körmendi János?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '60', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves korában hunyt el Körmendi János?';
COMMIT;
BEGIN;
-- Q 241 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Mr. Beant alakító színész neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rowan Atkinson', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Mr. Beant alakító színész neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ben Miller', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Mr. Beant alakító színész neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alan Rickman', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Mr. Beant alakító színész neve?';
-- Q 242 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be először a Magyar Állami Operaházban "A diótörőt"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1927-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be először a Magyar Állami Operaházban "A diótörőt"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1938-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be először a Magyar Állami Operaházban "A diótörőt"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1953-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be először a Magyar Állami Operaházban "A diótörőt"?';
-- Q 243 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki kapta a Story különdíját a 2017-es Story Gálán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Demjén Ferenc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki kapta a Story különdíját a 2017-es Story Gálán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balázs Fecó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki kapta a Story különdíját a 2017-es Story Gálán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Presser Gábor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki kapta a Story különdíját a 2017-es Story Gálán?';
-- Q 244 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nyerte a 2017-es Grammy-díj átadón a legjobb albumért járó díjat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Adele', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nyerte a 2017-es Grammy-díj átadón a legjobb albumért járó díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Beyoncé', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nyerte a 2017-es Grammy-díj átadón a legjobb albumért járó díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Justin Bieber', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nyerte a 2017-es Grammy-díj átadón a legjobb albumért járó díjat?';
-- Q 245 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a 2012-ben bemutatott James Bond film címe?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Skyfall', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a 2012-ben bemutatott James Bond film címe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Casino Royale', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a 2012-ben bemutatott James Bond film címe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aranyszem', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a 2012-ben bemutatott James Bond film címe?';
-- Q 246 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben játszott Megan Fox?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Transformers', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott Megan Fox?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pókember 3.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott Megan Fox?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ébredő sötétség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott Megan Fox?';
-- Q 247 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Alfonzó eredeti neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Markos József', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Alfonzó eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nádas József', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Alfonzó eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Markos Sándor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Alfonzó eredeti neve?';
-- Q 248 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Miki egér eredeti neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mortimer', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Miki egér eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Minnie', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Miki egér eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mikrobi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Miki egér eredeti neve?';
-- Q 249 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmfesztivál fődíja az Arany Medve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Berlini Nemzetközi Filmfesztivál', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmfesztivál fődíja az Arany Medve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cannes-i fesztivál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmfesztivál fődíja az Arany Medve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Locarnói Nemzetközi Filmfesztivál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmfesztivál fődíja az Arany Medve?';
-- Q 250 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek az alkotása nyerte az Arany Medve díjat a 67. Berlini Nemzetközi Filmfesztiválon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Enyedi Ildikó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az alkotása nyerte az Arany Medve díjat a 67. Berlini Nemzetközi Filmfesztiválon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mészáros Márta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az alkotása nyerte az Arany Medve díjat a 67. Berlini Nemzetközi Filmfesztiválon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Milos Forman', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az alkotása nyerte az Arany Medve díjat a 67. Berlini Nemzetközi Filmfesztiválon?';
COMMIT;
BEGIN;
-- Q 251 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kiről nevezte el Ian Fleming, a brit szuperkémet James Bondot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy ornitológusról', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiről nevezte el Ian Fleming, a brit szuperkémet James Bondot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy rendezőről', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiről nevezte el Ian Fleming, a brit szuperkémet James Bondot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy sportolóról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiről nevezte el Ian Fleming, a brit szuperkémet James Bondot?';
-- Q 252 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hanyadik Oscar-díjátó lesz 2017. február 26-án?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '89.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hanyadik Oscar-díjátó lesz 2017. február 26-án?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '90.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hanyadik Oscar-díjátó lesz 2017. február 26-án?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '93.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hanyadik Oscar-díjátó lesz 2017. február 26-án?';
-- Q 253 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben játszott Cameron Diaz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Míg a jackpot el nem választ', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott Cameron Diaz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gladiátor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott Cameron Diaz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Wyatt Earp', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott Cameron Diaz?';
-- Q 254 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Honthy Hanna eredeti keresztneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hajnalka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Honthy Hanna eredeti keresztneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Helén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Honthy Hanna eredeti keresztneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hermina', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt Honthy Hanna eredeti keresztneve?';
-- Q 255 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány Osca-díjra jelölték a Kaliforniai álom című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '14', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Osca-díjra jelölték a Kaliforniai álom című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Osca-díjra jelölték a Kaliforniai álom című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány Osca-díjra jelölték a Kaliforniai álom című filmet?';
-- Q 256 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Bodrogi Gyula melyik évben lett a Nemzet Színésze?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2007-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Bodrogi Gyula melyik évben lett a Nemzet Színésze?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2006-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Bodrogi Gyula melyik évben lett a Nemzet Színésze?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2011-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Bodrogi Gyula melyik évben lett a Nemzet Színésze?';
-- Q 257 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a Budapesti Nemzeti Színház jelenlegi igazgatója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vidnyánszky Attila', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Budapesti Nemzeti Színház jelenlegi igazgatója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alföldi Róbert', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Budapesti Nemzeti Színház jelenlegi igazgatója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jordán Tamás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Budapesti Nemzeti Színház jelenlegi igazgatója?';
-- Q 258 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik film nyerte a legjobb filmért járó Oscar díjat a 89. Oscar-díjátadón?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Holdfény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film nyerte a legjobb filmért járó Oscar díjat a 89. Oscar-díjátadón?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kaliforniai álom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film nyerte a legjobb filmért járó Oscar díjat a 89. Oscar-díjátadón?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oroszlán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film nyerte a legjobb filmért járó Oscar díjat a 89. Oscar-díjátadón?';
-- Q 259 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a magyar film címe, mely megnyerte a legjobb rövidfilmért járó Oscar-díjat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mindenki', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a magyar film címe, mely megnyerte a legjobb rövidfilmért járó Oscar-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Senki', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a magyar film címe, mely megnyerte a legjobb rövidfilmért járó Oscar-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Utazás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a magyar film címe, mely megnyerte a legjobb rövidfilmért járó Oscar-díjat?';
-- Q 260 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik animációs film nyert a 89. Oscar-díjátadón?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zootropolis-Állati nagy balhé', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik animációs film nyert a 89. Oscar-díjátadón?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A vörös teknős', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik animációs film nyert a 89. Oscar-díjátadón?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vaiana', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik animációs film nyert a 89. Oscar-díjátadón?';
COMMIT;
BEGIN;
-- Q 261 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Karlovy Vary-i Nemzetközi Filmfesztivál fődíja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kristály Glóbusz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Karlovy Vary-i Nemzetközi Filmfesztivál fődíja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arany Pálma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Karlovy Vary-i Nemzetközi Filmfesztivál fődíja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kristály Medve', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Karlovy Vary-i Nemzetközi Filmfesztivál fődíja?';
-- Q 262 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évesen hunyt el James Dean?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '24', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évesen hunyt el James Dean?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évesen hunyt el James Dean?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '32', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évesen hunyt el James Dean?';
-- Q 263 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve Micimackó gazdájának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Róbert Gida', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve Micimackó gazdájának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Norbert Suta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve Micimackó gazdájának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Róbert Gúnár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve Micimackó gazdájának?';
-- Q 264 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki kapott életműdíjat a 42. César-gálán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jean-Paul Belmondo', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki kapott életműdíjat a 42. César-gálán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gerard Depardieu', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki kapott életműdíjat a 42. César-gálán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alain Delon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki kapott életműdíjat a 42. César-gálán?';
-- Q 265 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évesen szerepelt az E.T. című filmben Drew Barrymore?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évesen szerepelt az E.T. című filmben Drew Barrymore?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '9', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évesen szerepelt az E.T. című filmben Drew Barrymore?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évesen szerepelt az E.T. című filmben Drew Barrymore?';
-- Q 266 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem szerepelt Kern András?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Valami Amerika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem szerepelt Kern András?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A miniszter félrelép', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem szerepelt Kern András?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Meseautó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem szerepelt Kern András?';
-- Q 267 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki kapta 2017-ben a Páger-gyűrűt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eszenyi Enikő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki kapta 2017-ben a Páger-gyűrűt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Udvaros Dorottya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki kapta 2017-ben a Páger-gyűrűt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kulka János', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki kapta 2017-ben a Páger-gyűrűt?';
-- Q 268 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek az Oscar-díjas kisfilmje a "Mindenki"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Deák Kristóf', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az Oscar-díjas kisfilmje a "Mindenki"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Reisz Gábor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az Oscar-díjas kisfilmje a "Mindenki"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kőszegi Tamás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az Oscar-díjas kisfilmje a "Mindenki"?';
-- Q 269 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen virágról énekelt a gyerekkórus az Oscar-díjas "Mindenki" című kisfilmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bodzavirágról', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen virágról énekelt a gyerekkórus az Oscar-díjas "Mindenki" című kisfilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csillagvirágról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen virágról énekelt a gyerekkórus az Oscar-díjas "Mindenki" című kisfilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'orgonavirágról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen virágról énekelt a gyerekkórus az Oscar-díjas "Mindenki" című kisfilmben?';
-- Q 270 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik játékfilm nyert a 2017-es Magyar Filmhéten?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A martfűi rém', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik játékfilm nyert a 2017-es Magyar Filmhéten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gondolj rám', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik játékfilm nyert a 2017-es Magyar Filmhéten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tiszta szívvel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik játékfilm nyert a 2017-es Magyar Filmhéten?';
COMMIT;
BEGIN;
-- Q 271 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben szerepelt Jakupcsek Gabriella?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zsiguli', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben szerepelt Jakupcsek Gabriella?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sztracsatella', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben szerepelt Jakupcsek Gabriella?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kútfejek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben szerepelt Jakupcsek Gabriella?';
-- Q 272 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki alakította Kardos doktort a Hamis a baba című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kern András', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakította Kardos doktort a Hamis a baba című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Raksányi Gellért', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakította Kardos doktort a Hamis a baba című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kerekes József', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakította Kardos doktort a Hamis a baba című filmben?';
-- Q 273 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen szakmát tanult eredetileg Gálvölgyi János?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fényképész', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen szakmát tanult eredetileg Gálvölgyi János?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'orvos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen szakmát tanult eredetileg Gálvölgyi János?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'optikus', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen szakmát tanult eredetileg Gálvölgyi János?';
-- Q 274 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a Jack Reacher című film főszereplője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom Cruise', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Jack Reacher című film főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kevin Bacon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Jack Reacher című film főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cuba Gooding Jr.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Jack Reacher című film főszereplője?';
-- Q 275 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol játszódik "A mi kis falunk" című vígjátéksorozat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pajkaszegen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik "A mi kis falunk" című vígjátéksorozat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Leányfalun', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik "A mi kis falunk" című vígjátéksorozat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ököritófülpösön', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik "A mi kis falunk" című vígjátéksorozat?';
-- Q 276 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Honnan származik a zumba tánc?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kolumbiából', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Honnan származik a zumba tánc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Argentínából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Honnan származik a zumba tánc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mexikóból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Honnan származik a zumba tánc?';
-- Q 277 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a teljes neve Gabennak az Üvegtigris című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kecskeméti Ottó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a teljes neve Gabennak az Üvegtigris című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zsíros Ferenc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a teljes neve Gabennak az Üvegtigris című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kántor Géza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a teljes neve Gabennak az Üvegtigris című filmben?';
-- Q 278 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Honnan ered az oroszlántánc?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kínából', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Honnan ered az oroszlántánc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolországból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Honnan ered az oroszlántánc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kubából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Honnan ered az oroszlántánc?';
-- Q 279 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem játszott Hujber Ferenc?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kontroll', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Hujber Ferenc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Valami Amerika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Hujber Ferenc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hacktion', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Hujber Ferenc?';
-- Q 280 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmfesztivál díja az Arany Oroszlán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'velencei', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmfesztivál díja az Arany Oroszlán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'locarnói', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmfesztivál díja az Arany Oroszlán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cannes-i', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmfesztivál díja az Arany Oroszlán?';
COMMIT;
BEGIN;
-- Q 281 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki után kapta Leonardo DiCaprio a keresztnevét?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Leonardo da Vinci', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki után kapta Leonardo DiCaprio a keresztnevét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Leonardo Jardim', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki után kapta Leonardo DiCaprio a keresztnevét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Leonard Cohen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki után kapta Leonardo DiCaprio a keresztnevét?';
-- Q 282 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban nincs Nemzeti Színház?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Székesfehérvár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban nincs Nemzeti Színház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban nincs Nemzeti Színház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szeged', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban nincs Nemzeti Színház?';
-- Q 283 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem az idén március 15-én kapott Kossuth-díjat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mácsai Pál', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem az idén március 15-én kapott Kossuth-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Frenreisz Károly', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem az idén március 15-én kapott Kossuth-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tahi Tóth László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem az idén március 15-én kapott Kossuth-díjat?';
-- Q 284 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a Madách Színház jelenlegi igazgatója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szirtes Tamás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Madách Színház jelenlegi igazgatója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kerényi Imre', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Madách Színház jelenlegi igazgatója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Székhelyi József', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Madách Színház jelenlegi igazgatója?';
-- Q 285 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány napot töltött el Pi Patel egy mentőcsónakban a "Pi élete" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '227', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány napot töltött el Pi Patel egy mentőcsónakban a "Pi élete" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '123', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány napot töltött el Pi Patel egy mentőcsónakban a "Pi élete" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '234', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány napot töltött el Pi Patel egy mentőcsónakban a "Pi élete" című filmben?';
-- Q 286 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a Pókembernek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Peter Parker', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a Pókembernek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Norman Osborn', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a Pókembernek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robbie Robertson', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a Pókembernek?';
-- Q 287 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a foglalkozása Ray Ferrier-nek a "Világok harca" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kikötői munkás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a foglalkozása Ray Ferrier-nek a "Világok harca" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'autószerelő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a foglalkozása Ray Ferrier-nek a "Világok harca" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'állatgondozó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a foglalkozása Ray Ferrier-nek a "Világok harca" című filmben?';
-- Q 288 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem volt Bond-lány?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jodie Foster', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem volt Bond-lány?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sophie Marceau', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem volt Bond-lány?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ursula Andress', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem volt Bond-lány?';
-- Q 289 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, '1988-ben melyik film kapott Oscar-díjat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Esőember', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='1988-ben melyik film kapott Oscar-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Veszedelmes viszonyok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='1988-ben melyik film kapott Oscar-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Farkasokkal táncoló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='1988-ben melyik film kapott Oscar-díjat?';
-- Q 290 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt "A rettenthetetlen" című film rendezője és főszereplője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mel Gibson', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt "A rettenthetetlen" című film rendezője és főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom Cruise', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt "A rettenthetetlen" című film rendezője és főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ryan Gosling', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt "A rettenthetetlen" című film rendezője és főszereplője?';
COMMIT;
BEGIN;
-- Q 291 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Farkas Gábor "foglalkozása" a Kaméleon című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'házasságszédelgő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Farkas Gábor "foglalkozása" a Kaméleon című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bankrabló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Farkas Gábor "foglalkozása" a Kaméleon című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'orvvadász', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Farkas Gábor "foglalkozása" a Kaméleon című filmben?';
-- Q 292 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik James Bond filmben játszott Madonna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Halj meg máskor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik James Bond filmben játszott Madonna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aranyszem', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik James Bond filmben játszott Madonna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Skyfall', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik James Bond filmben játszott Madonna?';
-- Q 293 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik állat hangján szólalt meg Ben Stiller a Madagaszkár című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oroszlán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik állat hangján szólalt meg Ben Stiller a Madagaszkár című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zebra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik állat hangján szólalt meg Ben Stiller a Madagaszkár című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zsiráf', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik állat hangján szólalt meg Ben Stiller a Madagaszkár című filmben?';
-- Q 294 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai színész az ENSZ békenagykövete?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George Clooney', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai színész az ENSZ békenagykövete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mel Gibson', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai színész az ENSZ békenagykövete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brad Pitt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai színész az ENSZ békenagykövete?';
-- Q 295 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem játszik a Chicago című musicalfilmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jennifer Aniston', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem játszik a Chicago című musicalfilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Renée Zellweger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem játszik a Chicago című musicalfilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lucy Liu', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem játszik a Chicago című musicalfilmben?';
-- Q 296 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a kedvenc étele Gombóc Artúrnak, Pom Pom meséiben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csokoládé', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a kedvenc étele Gombóc Artúrnak, Pom Pom meséiben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hamburger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a kedvenc étele Gombóc Artúrnak, Pom Pom meséiben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pizza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a kedvenc étele Gombóc Artúrnak, Pom Pom meséiben?';
-- Q 297 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a "Drágán add az életed!" című film főszereplője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bruce Willis', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a "Drágán add az életed!" című film főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom Hanks', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a "Drágán add az életed!" című film főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alan Baldwin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a "Drágán add az életed!" című film főszereplője?';
-- Q 298 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az eredeti neve Bud Spencernek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Carlo Pedersoli', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az eredeti neve Bud Spencernek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Carlo Amato', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az eredeti neve Bud Spencernek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mario Girotti', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az eredeti neve Bud Spencernek?';
-- Q 299 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színésznő kapta az első Psota Irén-díjat 2017.03.24-én?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hegyi Barbara', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színésznő kapta az első Psota Irén-díjat 2017.03.24-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eszenyi Enikő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színésznő kapta az első Psota Irén-díjat 2017.03.24-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hűvösvölgyi Ildikó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színésznő kapta az első Psota Irén-díjat 2017.03.24-én?';
-- Q 300 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol játszódik a "Thomas a gőzmozdony" című rajzfilmsorozat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sodor szigetén', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a "Thomas a gőzmozdony" című rajzfilmsorozat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Futrinka utcában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a "Thomas a gőzmozdony" című rajzfilmsorozat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kakukkiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a "Thomas a gőzmozdony" című rajzfilmsorozat?';
COMMIT;
BEGIN;
-- Q 301 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány törp él Aprajafalván a "Hupikék törpikék" című rajzfilmsorozatban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '111', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány törp él Aprajafalván a "Hupikék törpikék" című rajzfilmsorozatban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '89', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány törp él Aprajafalván a "Hupikék törpikék" című rajzfilmsorozatban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '75', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány törp él Aprajafalván a "Hupikék törpikék" című rajzfilmsorozatban?';
-- Q 302 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kit választottak a Nemzet Színészének 03.27-én?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csomós Marit', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit választottak a Nemzet Színészének 03.27-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pogány Juditot', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit választottak a Nemzet Színészének 03.27-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Venczel Verát', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit választottak a Nemzet Színészének 03.27-én?';
-- Q 303 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a rendezője az "Avatar" című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'James Cameron', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a rendezője az "Avatar" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Steven Spielberg', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a rendezője az "Avatar" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'David Lynch', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a rendezője az "Avatar" című filmnek?';
-- Q 304 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik fekete-fehér magyar filmvígjáték szereplője Schneider Mátyás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hyppolit - a lakáj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik fekete-fehér magyar filmvígjáték szereplője Schneider Mátyás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lila ákác', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik fekete-fehér magyar filmvígjáték szereplője Schneider Mátyás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Márciusi mese', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik fekete-fehér magyar filmvígjáték szereplője Schneider Mátyás?';
-- Q 305 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen fajtájú kutya Jerry Lee, a"Kutyám, Jerry Lee"című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'német juhász', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen fajtájú kutya Jerry Lee, a"Kutyám, Jerry Lee"című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bernáthegyi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen fajtájú kutya Jerry Lee, a"Kutyám, Jerry Lee"című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'beagle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen fajtájú kutya Jerry Lee, a"Kutyám, Jerry Lee"című filmben?';
-- Q 306 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a bemutatója "A Pál utcai fiúk" című musicalnek a Vígszinházban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016. november 5-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor volt a bemutatója "A Pál utcai fiúk" című musicalnek a Vígszinházban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2017. január 1-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor volt a bemutatója "A Pál utcai fiúk" című musicalnek a Vígszinházban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016. december 12-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor volt a bemutatója "A Pál utcai fiúk" című musicalnek a Vígszinházban?';
-- Q 307 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek a mondása volt? "Mindenütt jó, de a legjobb sehol!"'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fülig Jimmy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a mondása volt? "Mindenütt jó, de a legjobb sehol!"';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Piszkos Fred', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a mondása volt? "Mindenütt jó, de a legjobb sehol!"';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Regős Bendegúz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a mondása volt? "Mindenütt jó, de a legjobb sehol!"';
-- Q 308 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem Star Wars szereplő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gandalf', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem Star Wars szereplő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Han Solo', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem Star Wars szereplő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csubakka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem Star Wars szereplő?';
-- Q 309 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat Sid a Jégkorszak című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lajhár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Sid a Jégkorszak című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tigris', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Sid a Jégkorszak című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'viziló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Sid a Jégkorszak című filmben?';
-- Q 310 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki alakítja a filmvásznon Rocky Balboát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sylvester Stallone', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja a filmvásznon Rocky Balboát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arnold Swarzenegger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja a filmvásznon Rocky Balboát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jean-Claude Van Damme', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja a filmvásznon Rocky Balboát?';
COMMIT;
BEGIN;
-- Q 311 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen származású Lucy Liu színésznő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kínai', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen származású Lucy Liu színésznő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'japán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen származású Lucy Liu színésznő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vietnámi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen származású Lucy Liu színésznő?';
-- Q 312 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat Kowalski a Madagaszkár című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pingvin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Kowalski a Madagaszkár című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csimpánz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Kowalski a Madagaszkár című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'viziló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Kowalski a Madagaszkár című filmben?';
-- Q 313 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai énekesnő a főszereplője a "Több mint testőr "című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Whitney Houston', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai énekesnő a főszereplője a "Több mint testőr "című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aretha Franklin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai énekesnő a főszereplője a "Több mint testőr "című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mariah Carey', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai énekesnő a főszereplője a "Több mint testőr "című filmnek?';
-- Q 314 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a női főszereplője "A szépség és a szörnyeteg" című film 2017-es adaptációjának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Emma Watson', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a női főszereplője "A szépség és a szörnyeteg" című film 2017-es adaptációjának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Emma Stone', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a női főszereplője "A szépség és a szörnyeteg" című film 2017-es adaptációjának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Emma Roberts', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a női főszereplője "A szépség és a szörnyeteg" című film 2017-es adaptációjának?';
-- Q 315 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai színész felesége volt Cindy Crawford szupermodell?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Richard Gere', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai színész felesége volt Cindy Crawford szupermodell?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Colin Firth', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai színész felesége volt Cindy Crawford szupermodell?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bruce Willis', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai színész felesége volt Cindy Crawford szupermodell?';
-- Q 316 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen gyárban játszódik az "Egészséges erotika" című fekete-fehér film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'láda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen gyárban játszódik az "Egészséges erotika" című fekete-fehér film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'papír', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen gyárban játszódik az "Egészséges erotika" című fekete-fehér film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kábel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen gyárban játszódik az "Egészséges erotika" című fekete-fehér film?';
-- Q 317 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban született Arnold Schwarzenegger?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztriában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik országban született Arnold Schwarzenegger?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanadában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik országban született Arnold Schwarzenegger?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik országban született Arnold Schwarzenegger?';
-- Q 318 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színésznővel játszik Hugh Grant a "Két hét múlva örökké" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sandra Bullock', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színésznővel játszik Hugh Grant a "Két hét múlva örökké" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jennifer Aniston', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színésznővel játszik Hugh Grant a "Két hét múlva örökké" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Julia Roberts', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színésznővel játszik Hugh Grant a "Két hét múlva örökké" című filmben?';
-- Q 319 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki alakítja a "Trónok harca" című sorozatban Havas Jont?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kit Harington', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja a "Trónok harca" című sorozatban Havas Jont?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alfie Allen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja a "Trónok harca" című sorozatban Havas Jont?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ian Galen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja a "Trónok harca" című sorozatban Havas Jont?';
-- Q 320 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent magyarul Mr. Bean neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bab úr', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mit jelent magyarul Mr. Bean neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Medve úr', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mit jelent magyarul Mr. Bean neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bébi úr', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mit jelent magyarul Mr. Bean neve?';
COMMIT;
BEGIN;
-- Q 321 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor készült az "Amerikai pite" című vígjáték első része?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1999-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor készült az "Amerikai pite" című vígjáték első része?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1997-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor készült az "Amerikai pite" című vígjáték első része?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1996-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor készült az "Amerikai pite" című vígjáték első része?';
-- Q 322 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A színészeten kívűl még mivel foglalkozik Steven Seagal?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'harcművészettel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='A színészeten kívűl még mivel foglalkozik Steven Seagal?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'labdarúgással', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='A színészeten kívűl még mivel foglalkozik Steven Seagal?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sakkozik', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='A színészeten kívűl még mivel foglalkozik Steven Seagal?';
-- Q 323 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Winnetou nevének jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Égő Víz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Winnetou nevének jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fehér Atya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Winnetou nevének jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lángoló Erdő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Winnetou nevének jelentése?';
-- Q 324 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A Pi élete című filmben milyen állat társaságában tölti el Pi, a 227 napot a Csendes-óceánon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bengáli tigrissel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='A Pi élete című filmben milyen állat társaságában tölti el Pi, a 227 napot a Csendes-óceánon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mosómedvével', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='A Pi élete című filmben milyen állat társaságában tölti el Pi, a 227 napot a Csendes-óceánon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ázsiai oroszlánnal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='A Pi élete című filmben milyen állat társaságában tölti el Pi, a 227 napot a Csendes-óceánon?';
-- Q 325 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be az 50 első randi című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2004-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az 50 első randi című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2006-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az 50 első randi című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2007-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be az 50 első randi című filmet?';
-- Q 326 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai városban él Rocky Balboa a Rocky című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Philadelphiában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai városban él Rocky Balboa a Rocky című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Los Angelesben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai városban él Rocky Balboa a Rocky című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New Orleansban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik amerikai városban él Rocky Balboa a Rocky című filmben?';
-- Q 327 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki alakítja Halmos Aladárt a Meseautó című film 2000-ben bemutatott adaptációjában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bajor Imre', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja Halmos Aladárt a Meseautó című film 2000-ben bemutatott adaptációjában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kern András', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja Halmos Aladárt a Meseautó című film 2000-ben bemutatott adaptációjában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Stohl András', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja Halmos Aladárt a Meseautó című film 2000-ben bemutatott adaptációjában?';
-- Q 328 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat Marty a Madagaszkár című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zebra', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Marty a Madagaszkár című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oroszlán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Marty a Madagaszkár című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zsiráf', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Marty a Madagaszkár című filmben?';
-- Q 329 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen gyümölcs tűnik fel "A Keresztapa" című film mindhárom részében?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'narancs', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen gyümölcs tűnik fel "A Keresztapa" című film mindhárom részében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'banán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen gyümölcs tűnik fel "A Keresztapa" című film mindhárom részében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mangó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen gyümölcs tűnik fel "A Keresztapa" című film mindhárom részében?';
-- Q 330 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a főszereplője a Kellemes Húsvéti Ünnepeket! című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jean-Paul Belmondo', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a Kellemes Húsvéti Ünnepeket! című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alain Delon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a Kellemes Húsvéti Ünnepeket! című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jean Reno', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a Kellemes Húsvéti Ünnepeket! című filmnek?';
COMMIT;
BEGIN;
-- Q 331 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a címe a Jégkorszak húsvéti részének?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Húsvéti küldetés', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a címe a Jégkorszak húsvéti részének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Húsvéti tojások', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a címe a Jégkorszak húsvéti részének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Húsvéti kihívás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a címe a Jégkorszak húsvéti részének?';
-- Q 332 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Kate Hudson színésznő édesanyja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Goldie Hawn', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Kate Hudson színésznő édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Meryl Streep', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Kate Hudson színésznő édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Diane Keaton', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Kate Hudson színésznő édesanyja?';
-- Q 333 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Indiana Jones megformálója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Harrison Ford', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Indiana Jones megformálója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Richard Gere', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Indiana Jones megformálója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom Hanks', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Indiana Jones megformálója?';
-- Q 334 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a magyar szinkronhangja Benny Hillnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gálvölgyi János', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a magyar szinkronhangja Benny Hillnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bodrogi Gyula', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a magyar szinkronhangja Benny Hillnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bajor Imre', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt a magyar szinkronhangja Benny Hillnek?';
-- Q 335 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki alakította Supermant a filmvásznon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Christopher Reeve', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakította Supermant a filmvásznon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gene Hackman', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakította Supermant a filmvásznon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Michael Keaton', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakította Supermant a filmvásznon?';
-- Q 336 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a szolnoki színház neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szigligeti Színház', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a szolnoki színház neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vörösmarty Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a szolnoki színház neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Katona József Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a szolnoki színház neve?';
-- Q 337 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmstúdió logója az ordító oroszlán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Metro-Goldwyn-Mayer', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmstúdió logója az ordító oroszlán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Columbia Pictures', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmstúdió logója az ordító oroszlán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'DreamWorks', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmstúdió logója az ordító oroszlán?';
-- Q 338 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Batman polgári neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bruce Wayne', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Batman polgári neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jack Napier', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Batman polgári neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Carl Grissom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Batman polgári neve?';
-- Q 339 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a rendezője és főszereplője az Annie Hall című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Woody Allen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a rendezője és főszereplője az Annie Hall című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mel Gibson', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a rendezője és főszereplője az Annie Hall című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jack Nicholson', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a rendezője és főszereplője az Annie Hall című filmnek?';
-- Q 340 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem Hamupipőke mostohatestvére?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alice', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem Hamupipőke mostohatestvére?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Drizella', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem Hamupipőke mostohatestvére?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Anasztázia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem Hamupipőke mostohatestvére?';
COMMIT;
BEGIN;
-- Q 341 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem játszott Nagy Ervin?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Valami Amerika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Nagy Ervin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kaméleon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Nagy Ervin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ámbár tanár úr', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Nagy Ervin?';
-- Q 342 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kit alakít Jennifer Lopez az Anakonda című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rendezőt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit alakít Jennifer Lopez az Anakonda című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ügynököt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit alakít Jennifer Lopez az Anakonda című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tanárt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit alakít Jennifer Lopez az Anakonda című filmben?';
-- Q 343 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik budapesti színház nyitotta meg kapuit 1896. május 1-én?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vígszínház', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik budapesti színház nyitotta meg kapuit 1896. május 1-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nemzeti színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik budapesti színház nyitotta meg kapuit 1896. május 1-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madách Színház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik budapesti színház nyitotta meg kapuit 1896. május 1-én?';
-- Q 344 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a főszereplője a "Csocsó, avagy éljen május elseje!" című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Koltay Róbert', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a "Csocsó, avagy éljen május elseje!" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kulka János', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a "Csocsó, avagy éljen május elseje!" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rudolf Péter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a "Csocsó, avagy éljen május elseje!" című filmnek?';
-- Q 345 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik rockoperában szerepelt Usztics Mátyás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sztárcsinálók', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik rockoperában szerepelt Usztics Mátyás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Honfoglalás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik rockoperában szerepelt Usztics Mátyás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'István a király', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik rockoperában szerepelt Usztics Mátyás?';
-- Q 346 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a férfi főszereplője a "Mi kell a nőnek" című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mel Gibson', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a férfi főszereplője a "Mi kell a nőnek" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom Hanks', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a férfi főszereplője a "Mi kell a nőnek" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bruce Willis', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a férfi főszereplője a "Mi kell a nőnek" című filmnek?';
-- Q 347 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki alakította Lara Croftot a filmvásznon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Angelina Jolie', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakította Lara Croftot a filmvásznon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jennifer Lawrence', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakította Lara Croftot a filmvásznon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Halle Berry', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakította Lara Croftot a filmvásznon?';
-- Q 348 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmsorozat szereplője R2-D2?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Star Wars', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmsorozat szereplője R2-D2?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Gyűrűk Ura', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmsorozat szereplője R2-D2?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Star Trek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmsorozat szereplője R2-D2?';
-- Q 349 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik faluban forgatták a Brazilok című filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Acsán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik faluban forgatták a Brazilok című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kocsordon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik faluban forgatták a Brazilok című filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csécsén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik faluban forgatták a Brazilok című filmet?';
-- Q 350 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a foglalkozása a "Drágán add az életed!" című film főszereplőjének?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rendőrnyomozó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a foglalkozása a "Drágán add az életed!" című film főszereplőjének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sebész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a foglalkozása a "Drágán add az életed!" című film főszereplőjének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ügynök', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a foglalkozása a "Drágán add az életed!" című film főszereplőjének?';
COMMIT;
BEGIN;
-- Q 351 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kit alakít George Clooney a Pénzes cápa című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'műsorvezetőt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit alakít George Clooney a Pénzes cápa című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ügynököt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit alakít George Clooney a Pénzes cápa című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'állatidomárt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit alakít George Clooney a Pénzes cápa című filmben?';
-- Q 352 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kit alakít Vin Diesel a Halálos iramban 8. című akciófilmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dominic Torettot', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit alakít Vin Diesel a Halálos iramban 8. című akciófilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Luke Hobbst', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit alakít Vin Diesel a Halálos iramban 8. című akciófilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tej Parkert', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kit alakít Vin Diesel a Halálos iramban 8. című akciófilmben?';
-- Q 353 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik király a főszereplője a Gyalog galopp című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Artúr király', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik király a főszereplője a Gyalog galopp című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Edward király', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik király a főszereplője a Gyalog galopp című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vilmos király', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik király a főszereplője a Gyalog galopp című filmnek?';
-- Q 354 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik rajzfilmhős mondta? "Mi a hézag hapsikám?"'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tapsi Hapsi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik rajzfilmhős mondta? "Mi a hézag hapsikám?"';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dodó Kacsa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik rajzfilmhős mondta? "Mi a hézag hapsikám?"';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dagobert bácsi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik rajzfilmhős mondta? "Mi a hézag hapsikám?"';
-- Q 355 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Donald kacsa nagybátyja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dagobert bácsi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Donald kacsa nagybátyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Doofy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Donald kacsa nagybátyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dodo kacsa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Donald kacsa nagybátyja?';
-- Q 356 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt az első magyar musical?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egy szerelem három éjszakája', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt az első magyar musical?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Képzelt riport egy amerikai popfesztiválról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt az első magyar musical?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sztárcsinálók', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt az első magyar musical?';
-- Q 357 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt az első világhírű Disney film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hófehérke és a hét törpe', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt az első világhírű Disney film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pinokkió', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt az első világhírű Disney film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hamupipőke', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt az első világhírű Disney film?';
-- Q 358 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a főszereplője a Ponyvaregény című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'John Travolta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a Ponyvaregény című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arnold Schwarzenegger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a Ponyvaregény című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Denzel Washington', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a Ponyvaregény című filmnek?';
-- Q 359 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik mese szereplői Radírpók és Festéktüsszentő Hapci Benő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pom-pom meséi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik mese szereplői Radírpók és Festéktüsszentő Hapci Benő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Futrinka utca', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik mese szereplői Radírpók és Festéktüsszentő Hapci Benő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Frakk a macskák réme', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik mese szereplői Radírpók és Festéktüsszentő Hapci Benő?';
-- Q 360 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor választották a Nemzet Színészévé Haumann Pétert?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor választották a Nemzet Színészévé Haumann Pétert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2015-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor választották a Nemzet Színészévé Haumann Pétert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2014-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor választották a Nemzet Színészévé Haumann Pétert?';
COMMIT;
BEGIN;
-- Q 361 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt az X-akták szállóigéje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Az igazság odaát van.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt az X-akták szállóigéje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A segítség odaát van.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt az X-akták szállóigéje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A szabadság odaát van.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt az X-akták szállóigéje?';
-- Q 362 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hanyadik cannes-i filmfesztivál kezdődött május 17-én?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '70.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hanyadik cannes-i filmfesztivál kezdődött május 17-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '72.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hanyadik cannes-i filmfesztivál kezdődött május 17-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '68.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hanyadik cannes-i filmfesztivál kezdődött május 17-én?';
-- Q 363 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a hableánynak "A kis hableány" című rajzfilmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ariel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a hableánynak "A kis hableány" című rajzfilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bella', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a hableánynak "A kis hableány" című rajzfilmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Adella', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a neve a hableánynak "A kis hableány" című rajzfilmben?';
-- Q 364 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a végzettsége Adam Sandlernek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bölcsész', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a végzettsége Adam Sandlernek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vegyész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a végzettsége Adam Sandlernek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jogász', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a végzettsége Adam Sandlernek?';
-- Q 365 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek a műveiben szerepel Fülig Jimmy?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rejtő Jenő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a műveiben szerepel Fülig Jimmy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Karinthy Frigyes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a műveiben szerepel Fülig Jimmy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csáth Géza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a műveiben szerepel Fülig Jimmy?';
-- Q 366 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik öt számmal lett telitalálata Andrásnak a "Valami Amerika" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1 2 3 4 5', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik öt számmal lett telitalálata Andrásnak a "Valami Amerika" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10 20 30 40 50', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik öt számmal lett telitalálata Andrásnak a "Valami Amerika" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12 22 32 42 52', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik öt számmal lett telitalálata Andrásnak a "Valami Amerika" című filmben?';
-- Q 367 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Roger Moore partnere a "Minden lében két kanál" című sorozatban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tony Curtis', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Roger Moore partnere a "Minden lében két kanál" című sorozatban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jean-Claude Van Damme', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Roger Moore partnere a "Minden lében két kanál" című sorozatban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Christopher Walken', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Roger Moore partnere a "Minden lében két kanál" című sorozatban?';
-- Q 368 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik együttes dalai hangzanak el a Mamma Mia! című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Abba', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dalai hangzanak el a Mamma Mia! című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Beatles', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dalai hangzanak el a Mamma Mia! című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bee Gees', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dalai hangzanak el a Mamma Mia! című filmben?';
-- Q 369 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik magyar énekesnő dala hangzik el "Az angol beteg" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sebestyén Márta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik magyar énekesnő dala hangzik el "Az angol beteg" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Péter-Szabó Szilvia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik magyar énekesnő dala hangzik el "Az angol beteg" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szalóki Ági', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik magyar énekesnő dala hangzik el "Az angol beteg" című filmben?';
-- Q 370 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színésznő kapta a 70. cannes-i filmfesztivál különdíját?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nicole Kidman', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színésznő kapta a 70. cannes-i filmfesztivál különdíját?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jennifer Aniston', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színésznő kapta a 70. cannes-i filmfesztivál különdíját?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Angelina Jolie', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik színésznő kapta a 70. cannes-i filmfesztivál különdíját?';
COMMIT;
BEGIN;
-- Q 371 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mióta játssza Daniel Craig, James Bond szerepét?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2006 óta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mióta játssza Daniel Craig, James Bond szerepét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2008 óta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mióta játssza Daniel Craig, James Bond szerepét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2002 óta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mióta játssza Daniel Craig, James Bond szerepét?';
-- Q 372 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmhez komponált zenét Vangelis?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szárnyas fejvadász', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmhez komponált zenét Vangelis?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Avatar', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmhez komponált zenét Vangelis?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hegylakó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmhez komponált zenét Vangelis?';
-- Q 373 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy folytatódik a gyerekdal? "Hull a szilva a fáról..."'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'most jövök a tanyáról', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a gyerekdal? "Hull a szilva a fáról..."';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'most jövök a babámtól', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a gyerekdal? "Hull a szilva a fáról..."';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'most jövök a padlásról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a gyerekdal? "Hull a szilva a fáról..."';
-- Q 374 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen rokoni kapcsolatban áll Csepregi Éva, zenekarának dobosával?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen rokoni kapcsolatban áll Csepregi Éva, zenekarának dobosával?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'unokaöccse', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen rokoni kapcsolatban áll Csepregi Éva, zenekarának dobosával?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'testvére', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen rokoni kapcsolatban áll Csepregi Éva, zenekarának dobosával?';
-- Q 375 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki jelenleg a Sugarloaf együttes énekese?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nkuya Sonia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki jelenleg a Sugarloaf együttes énekese?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dér Heni', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki jelenleg a Sugarloaf együttes énekese?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gubik Petra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki jelenleg a Sugarloaf együttes énekese?';
-- Q 376 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik együttes tagjai Bauxit és Tokyo?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Belga', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes tagjai Bauxit és Tokyo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Children of Distance', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes tagjai Bauxit és Tokyo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New Level Empire', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes tagjai Bauxit és Tokyo?';
-- Q 377 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszor lépett fel Magyarországon Jean-Michel Jarre?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hatszor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszor lépett fel Magyarországon Jean-Michel Jarre?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'háromszor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszor lépett fel Magyarországon Jean-Michel Jarre?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyolcszor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hányszor lépett fel Magyarországon Jean-Michel Jarre?';
-- Q 378 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik zeneszerző műve a Nászinduló?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mendelssohn', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik zeneszerző műve a Nászinduló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mozart', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik zeneszerző műve a Nászinduló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Monteverdi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik zeneszerző műve a Nászinduló?';
-- Q 379 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik hangszer művésze Havasi Balázs?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zongora', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik hangszer művésze Havasi Balázs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hegedű', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik hangszer művésze Havasi Balázs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagybőgő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik hangszer művésze Havasi Balázs?';
-- Q 380 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt az egyetlen operája Beethovennek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fidelio', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt az egyetlen operája Beethovennek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tosca', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt az egyetlen operája Beethovennek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Don Carlos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt az egyetlen operája Beethovennek?';
COMMIT;
BEGIN;
-- Q 381 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki énekli a Kincsem című film betétdalát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rúzsa Magdi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki énekli a Kincsem című film betétdalát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tóth Gabi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki énekli a Kincsem című film betétdalát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Wolf Kati', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki énekli a Kincsem című film betétdalát?';
-- Q 382 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a basszuskulcs?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zenei kulcs', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a basszuskulcs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'káromkodószó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a basszuskulcs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a menyország kulcsa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a basszuskulcs?';
-- Q 383 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek az operája a Rigoletto?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Verdi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az operája a Rigoletto?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Puccini', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az operája a Rigoletto?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mozart', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az operája a Rigoletto?';
-- Q 384 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik énekes dala az "Ölelj meg újra"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ákos', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekes dala az "Ölelj meg újra"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Caramel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekes dala az "Ölelj meg újra"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ByeAlex', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekes dala az "Ölelj meg újra"?';
-- Q 385 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen nemzetiségű Jean-Michel Jarre zenész?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'francia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen nemzetiségű Jean-Michel Jarre zenész?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'olasz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen nemzetiségű Jean-Michel Jarre zenész?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'svájci', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen nemzetiségű Jean-Michel Jarre zenész?';
-- Q 386 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen térről énekel Kern András?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lövölde', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen térről énekel Kern András?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bosnyák', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen térről énekel Kern András?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Örs vezér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen térről énekel Kern András?';
-- Q 387 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik együttes énekel Don Quijote-ról?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Neoton Família', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes énekel Don Quijote-ról?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Első Emelet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes énekel Don Quijote-ról?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hungária', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes énekel Don Quijote-ról?';
-- Q 388 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy folyatódik a Magna Cum Laude dala? "Színezd újra, színezd újra.."'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Az életet ha megfakulna.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folyatódik a Magna Cum Laude dala? "Színezd újra, színezd újra.."';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A felhőket ha beborulna.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folyatódik a Magna Cum Laude dala? "Színezd újra, színezd újra.."';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Az álmokat ha kifakulna.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folyatódik a Magna Cum Laude dala? "Színezd újra, színezd újra.."';
-- Q 389 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik együttes tagja volt Péter Szabó Szilvia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'NOX', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes tagja volt Péter Szabó Szilvia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'FOX', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes tagja volt Péter Szabó Szilvia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'BOX', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes tagja volt Péter Szabó Szilvia?';
-- Q 390 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem egy fiúegyüttes volt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fresh', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem egy fiúegyüttes volt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Shygys', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem egy fiúegyüttes volt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Picasso Branch', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem egy fiúegyüttes volt?';
COMMIT;
BEGIN;
-- Q 391 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik hangszer virtuóza a kínai Yo-Yo Ma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'cselló', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik hangszer virtuóza a kínai Yo-Yo Ma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hárfa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik hangszer virtuóza a kínai Yo-Yo Ma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zongora', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik hangszer virtuóza a kínai Yo-Yo Ma?';
-- Q 392 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen zenét játszik a Csík zenekar?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'magyar népzenét', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen zenét játszik a Csík zenekar?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'blues zenét', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen zenét játszik a Csík zenekar?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'country zenét', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen zenét játszik a Csík zenekar?';
-- Q 393 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik énekesnek nincs Hello című száma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cyndi Lauper', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekesnek nincs Hello című száma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lionel Richie', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekesnek nincs Hello című száma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Adele', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekesnek nincs Hello című száma?';
-- Q 394 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a beceneve a Hooligans együttes frontemberének?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csipa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a beceneve a Hooligans együttes frontemberének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Maci', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a beceneve a Hooligans együttes frontemberének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cipő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a beceneve a Hooligans együttes frontemberének?';
-- Q 395 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évada volt eddig a magyar X faktornak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évada volt eddig a magyar X faktornak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évada volt eddig a magyar X faktornak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány évada volt eddig a magyar X faktornak?';
-- Q 396 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy folytatódik az Omega sláger?" a régi csibészek..."'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nem ismernek engem meg.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik az Omega sláger?" a régi csibészek..."';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mindig tovább engednek.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik az Omega sláger?" a régi csibészek..."';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'otthagytak és elmentek.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik az Omega sláger?" a régi csibészek..."';
-- Q 397 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek a vígoperája a Don Pasquale?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Donizetti', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a vígoperája a Don Pasquale?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Verdi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a vígoperája a Don Pasquale?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Puccini', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a vígoperája a Don Pasquale?';
-- Q 398 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor alakult meg a Rapülők együttes?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1992-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor alakult meg a Rapülők együttes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1999-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor alakult meg a Rapülők együttes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1996-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor alakult meg a Rapülők együttes?';
-- Q 399 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik énekesnő dala a Rohan az idő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Koncz Zsuzsa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekesnő dala a Rohan az idő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cserháti Zsuzsa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekesnő dala a Rohan az idő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kovács Kati', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekesnő dala a Rohan az idő?';
-- Q 400 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Freedie Mercury születéskori neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Farrokh Bulsara', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Freedie Mercury születéskori neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'John Deacon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Freedie Mercury születéskori neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eddie Van Halen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Freedie Mercury születéskori neve?';
COMMIT;
BEGIN;
-- Q 401 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Falusi Marianna társa a Pa-Dö-Dő együttesben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lang Györgyi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Falusi Marianna társa a Pa-Dö-Dő együttesben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szulák Andi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Falusi Marianna társa a Pa-Dö-Dő együttesben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dér Heni', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki Falusi Marianna társa a Pa-Dö-Dő együttesben?';
-- Q 402 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki jelenleg a P-mobil együttes vezetője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Schuster Lóránt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki jelenleg a P-mobil együttes vezetője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vikidál Gyula', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki jelenleg a P-mobil együttes vezetője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sárvári Vilmos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki jelenleg a P-mobil együttes vezetője?';
-- Q 403 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy folytatódik az EDDA sláger? "A kör közepén állok..."'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'körbevesznek jó barátok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik az EDDA sláger? "A kör közepén állok..."';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'éles késsel rám vadásztok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik az EDDA sláger? "A kör közepén állok..."';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egyszer majd odébbállok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik az EDDA sláger? "A kör közepén állok..."';
-- Q 404 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a Tankcsapda együttes énekese?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lukács László', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Tankcsapda együttes énekese?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sidlovits Gábor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Tankcsapda együttes énekese?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fejes Tamás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Tankcsapda együttes énekese?';
-- Q 405 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem énekelt a We Are the World című dalban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Prince', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem énekelt a We Are the World című dalban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tina Turner', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem énekelt a We Are the World című dalban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lionel Richie', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem énekelt a We Are the World című dalban?';
-- Q 406 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány éves korában hunyt el Elvis Presley?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '42', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves korában hunyt el Elvis Presley?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '56', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves korában hunyt el Elvis Presley?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '68', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány éves korában hunyt el Elvis Presley?';
-- Q 407 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kik a V-Tech együttes tagjai?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kefír és Szamóca', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kik a V-Tech együttes tagjai?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Joghurt és Málna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kik a V-Tech együttes tagjai?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Túró és Mazsola', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kik a V-Tech együttes tagjai?';
-- Q 408 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Dopeman valódi neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pityinger László', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Dopeman valódi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kozák László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Dopeman valódi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Széki Attila', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Dopeman valódi neve?';
-- Q 409 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik együttes dala a "Gyere őrült"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Edda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dala a "Gyere őrült"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'P-Mobil', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dala a "Gyere őrült"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Piramis', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dala a "Gyere őrült"?';
-- Q 410 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik együttes dalai a Kicsi gesztenye és a Tiltott perc?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'TNT', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dalai a Kicsi gesztenye és a Tiltott perc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kozmix', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dalai a Kicsi gesztenye és a Tiltott perc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kerozin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dalai a Kicsi gesztenye és a Tiltott perc?';
COMMIT;
BEGIN;
-- Q 411 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki énekelte az "Egy szál harangvirág" című dalt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szécsi Pál', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki énekelte az "Egy szál harangvirág" című dalt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Máté Péter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki énekelte az "Egy szál harangvirág" című dalt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Poór Péter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki énekelte az "Egy szál harangvirág" című dalt?';
-- Q 412 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik együttes frontembere volt Mark Knopfler?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dire Straits', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes frontembere volt Mark Knopfler?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aerosmith', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes frontembere volt Mark Knopfler?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'The Doors', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes frontembere volt Mark Knopfler?';
-- Q 413 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy folytatódik a Májusköszöntő dal? " Itt van május elseje,...."'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Énekszó és tánc köszöntse!', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a Májusköszöntő dal? " Itt van május elseje,...."';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szállj csak zeneszó ének!', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a Májusköszöntő dal? " Itt van május elseje,...."';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ébresszed a magyar népet!', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a Májusköszöntő dal? " Itt van május elseje,...."';
-- Q 414 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol alakult meg a Hooligans együttes?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerencsen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol alakult meg a Hooligans együttes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kaposváron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol alakult meg a Hooligans együttes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kőszegen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol alakult meg a Hooligans együttes?';
-- Q 415 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik együttes tagja Rendben Man?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Punnany Massif', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes tagja Rendben Man?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Halott Pénz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes tagja Rendben Man?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Quimby', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes tagja Rendben Man?';
-- Q 416 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik együttes énekel sárga zsiguliról?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vad Fruttik', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes énekel sárga zsiguliról?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Punnany Massif', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes énekel sárga zsiguliról?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Halott Pénz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes énekel sárga zsiguliról?';
-- Q 417 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem volt a Jackson 5 tagja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Janet Jackson', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem volt a Jackson 5 tagja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jermaine Jackson', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem volt a Jackson 5 tagja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Michael Jackson', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem volt a Jackson 5 tagja?';
-- Q 418 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy folytatódik a Hungária dal? " Gyere, gyere Juli,... "'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lesz egy remek buli', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a Hungária dal? " Gyere, gyere Juli,... "';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lecsúszott a bugyi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a Hungária dal? " Gyere, gyere Juli,... "';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ez lesz ám a tuti', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a Hungária dal? " Gyere, gyere Juli,... "';
-- Q 419 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Honnan származik Rúzsa Magdi?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vajdaságból', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Honnan származik Rúzsa Magdi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Erdélyből', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Honnan származik Rúzsa Magdi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kárpátaljáról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Honnan származik Rúzsa Magdi?';
-- Q 420 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a borbély neve Rossini: A sevillai borbély című operájában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Figaro', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a borbély neve Rossini: A sevillai borbély című operájában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fiorello', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a borbély neve Rossini: A sevillai borbély című operájában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fidelio', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a borbély neve Rossini: A sevillai borbély című operájában?';
COMMIT;
BEGIN;
-- Q 421 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik együttes dala a "Lámpát ha gyújtok"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Quimby', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dala a "Lámpát ha gyújtok"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Honeybeast', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dala a "Lámpát ha gyújtok"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kiscsillag', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dala a "Lámpát ha gyújtok"?';
-- Q 422 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy rockegyüttes neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '30Y', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik egy rockegyüttes neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '60X', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik egy rockegyüttes neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '40Z', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik egy rockegyüttes neve?';
-- Q 423 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki alapította a Hiperkarma együttest?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bérczesi Róbert', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alapította a Hiperkarma együttest?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hámori Benedek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alapította a Hiperkarma együttest?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Varga László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alapította a Hiperkarma együttest?';
-- Q 424 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik zeneszerző nem tartozik a bécsi klasszikusok közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vivaldi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik zeneszerző nem tartozik a bécsi klasszikusok közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Beethoven', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik zeneszerző nem tartozik a bécsi klasszikusok közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Haydn', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik zeneszerző nem tartozik a bécsi klasszikusok közé?';
-- Q 425 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ruhadarab egy együttes neve is?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bikini', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik ruhadarab egy együttes neve is?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szoknya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik ruhadarab egy együttes neve is?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sapka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik ruhadarab egy együttes neve is?';
-- Q 426 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a Margaret Island énekesnője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lábas Viki', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Margaret Island énekesnője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tarján Zsófia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Margaret Island énekesnője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pásztor Anna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Margaret Island énekesnője?';
-- Q 427 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek a dala volt a Children?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robert Miles', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a dala volt a Children?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jean-Michel Jarre', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a dala volt a Children?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'David Guetta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a dala volt a Children?';
-- Q 428 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik együttes dala "Ha volna két életem"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Piramis', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dala "Ha volna két életem"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'LGT', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dala "Ha volna két életem"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Illés', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dala "Ha volna két életem"?';
-- Q 429 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek az operája a Szerelmi bájital?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Donizetti', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az operája a Szerelmi bájital?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Puccini', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az operája a Szerelmi bájital?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Verdi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az operája a Szerelmi bájital?';
-- Q 430 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik együttes dala az Emese?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kispál és a borz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dala az Emese?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pál utcai fiúk', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dala az Emese?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kiscsillag', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttes dala az Emese?';
COMMIT;
BEGIN;
-- Q 431 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, '1974-ben melyik együttes nyerte meg az Eurovízios Dalfesztivált?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ABBA', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='1974-ben melyik együttes nyerte meg az Eurovízios Dalfesztivált?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ottawan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='1974-ben melyik együttes nyerte meg az Eurovízios Dalfesztivált?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Boney-M', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='1974-ben melyik együttes nyerte meg az Eurovízios Dalfesztivált?';
-- Q 432 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy folytatódik a Punnany M. sláger? "Nem kérlek légy enyém örökké"'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mégis hozzád szól dalom', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a Punnany M. sláger? "Nem kérlek légy enyém örökké"';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úgysem élhetünk örökké', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a Punnany M. sláger? "Nem kérlek légy enyém örökké"';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy percig lennék oltalom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a Punnany M. sláger? "Nem kérlek légy enyém örökké"';
-- Q 433 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Pápai Joci hanyadik helyen végzett a 62. Eurovíziós Dalfesztiválon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Pápai Joci hanyadik helyen végzett a 62. Eurovíziós Dalfesztiválon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Pápai Joci hanyadik helyen végzett a 62. Eurovíziós Dalfesztiválon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '18.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Pápai Joci hanyadik helyen végzett a 62. Eurovíziós Dalfesztiválon?';
-- Q 434 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek az első nagylemeze a Tubular Bells?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mike Oldfield', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az első nagylemeze a Tubular Bells?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jean-Michel Jarre', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az első nagylemeze a Tubular Bells?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ed Sheeran', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek az első nagylemeze a Tubular Bells?';
-- Q 435 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány tagból áll a Halott Pénz nevű zenekar?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány tagból áll a Halott Pénz nevű zenekar?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány tagból áll a Halott Pénz nevű zenekar?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány tagból áll a Halott Pénz nevű zenekar?';
-- Q 436 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország énekese nyerte a 62. Eurovíziós Dalfesztivált?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Portugália', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik ország énekese nyerte a 62. Eurovíziós Dalfesztivált?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bulgária', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik ország énekese nyerte a 62. Eurovíziós Dalfesztivált?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik ország énekese nyerte a 62. Eurovíziós Dalfesztivált?';
-- Q 437 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a Magashegyi Underground énekese?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bocskor Bíborka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Magashegyi Underground énekese?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kozma Orsi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Magashegyi Underground énekese?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dér Heni', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a Magashegyi Underground énekese?';
-- Q 438 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Kóbor János énekes beceneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mecky', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Kóbor János énekes beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Próféta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Kóbor János énekes beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Elefánt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Kóbor János énekes beceneve?';
-- Q 439 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen nemzetiségű Enya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ír', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen nemzetiségű Enya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'norvég', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen nemzetiségű Enya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen nemzetiségű Enya?';
-- Q 440 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, '2017-ben melyik napon adják át a Petőfi Zenei Díjakat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'június 26-án', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2017-ben melyik napon adják át a Petőfi Zenei Díjakat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'június 27-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2017-ben melyik napon adják át a Petőfi Zenei Díjakat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'június 30-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2017-ben melyik napon adják át a Petőfi Zenei Díjakat?';
COMMIT;
BEGIN;
-- Q 441 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, '2017-ben mikor kezdődik a Sziget Fesztivál?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'aug. 9-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2017-ben mikor kezdődik a Sziget Fesztivál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'aug. 13-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2017-ben mikor kezdődik a Sziget Fesztivál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'aug. 16-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2017-ben mikor kezdődik a Sziget Fesztivál?';
-- Q 442 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban alakult a Punnany Massif zenekar?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécsen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban alakult a Punnany Massif zenekar?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sopronban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban alakult a Punnany Massif zenekar?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dunaújvárosban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik városban alakult a Punnany Massif zenekar?';
-- Q 443 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol született Freddie Mercury?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zanzibárban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol született Freddie Mercury?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kenyában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol született Freddie Mercury?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mongóliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol született Freddie Mercury?';
-- Q 444 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Horus polgári neve a Children of Distance együttesből?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Somogyi Péter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Horus polgári neve a Children of Distance együttesből?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nyári Roland', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Horus polgári neve a Children of Distance együttesből?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ács Róbert', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Horus polgári neve a Children of Distance együttesből?';
-- Q 445 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor alakult meg a Magna Cum Laude zenekar?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1999-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor alakult meg a Magna Cum Laude zenekar?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2002-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor alakult meg a Magna Cum Laude zenekar?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1987-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor alakult meg a Magna Cum Laude zenekar?';
-- Q 446 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hangszeren játszik Edvin Marton?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hegedűn', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen hangszeren játszik Edvin Marton?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zongorán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen hangszeren játszik Edvin Marton?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagybőgőn', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen hangszeren játszik Edvin Marton?';
-- Q 447 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hogy folytatódik a Wellhello slágere? "Apu, vedd meg nekem a..."'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'várost', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a Wellhello slágere? "Apu, vedd meg nekem a..."';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lángost', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a Wellhello slágere? "Apu, vedd meg nekem a..."';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'táltost', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hogy folytatódik a Wellhello slágere? "Apu, vedd meg nekem a..."';
-- Q 448 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik külföldi együttes lép fel május 22-én a Groupama Arénában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Depeche Mode', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik külföldi együttes lép fel május 22-én a Groupama Arénában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Metallica', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik külföldi együttes lép fel május 22-én a Groupama Arénában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'The Doors', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik külföldi együttes lép fel május 22-én a Groupama Arénában?';
-- Q 449 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol alakult meg a Depeche Mode együttes?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Angliában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol alakult meg a Depeche Mode együttes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanadában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol alakult meg a Depeche Mode együttes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New Yorkban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol alakult meg a Depeche Mode együttes?';
-- Q 450 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor lesz a Nagyszínpad tehetségkutató döntője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'május 27-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor lesz a Nagyszínpad tehetségkutató döntője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'május 28-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor lesz a Nagyszínpad tehetségkutató döntője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'június 3-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor lesz a Nagyszínpad tehetségkutató döntője?';
COMMIT;
BEGIN;
-- Q 451 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol alakult meg az Első Emelet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy strandon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol alakult meg az Első Emelet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy étteremben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol alakult meg az Első Emelet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy fodrászüzletben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol alakult meg az Első Emelet?';
-- Q 452 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor hunyt el Cserháti Zsuzsa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2003-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor hunyt el Cserháti Zsuzsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2005-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor hunyt el Cserháti Zsuzsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor hunyt el Cserháti Zsuzsa?';
-- Q 453 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik együttest hívták a magyar Scooternek is?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kozmix', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttest hívták a magyar Scooternek is?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Happy Gang', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttest hívták a magyar Scooternek is?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'TNT', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik együttest hívták a magyar Scooternek is?';
-- Q 454 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, '2016-ban ki képviselte hazánkat az Eurovíziós Dalfesztiválon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Freddie', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2016-ban ki képviselte hazánkat az Eurovíziós Dalfesztiválon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kállay-Saunders András', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2016-ban ki képviselte hazánkat az Eurovíziós Dalfesztiválon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Wolf Kati', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2016-ban ki képviselte hazánkat az Eurovíziós Dalfesztiválon?';
-- Q 455 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik zenekar nyerte a Nagyszínpad tehetségkutatót?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lóci játszik', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik zenekar nyerte a Nagyszínpad tehetségkutatót?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Konyha', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik zenekar nyerte a Nagyszínpad tehetségkutatót?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dope Calypso', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik zenekar nyerte a Nagyszínpad tehetségkutatót?';
-- Q 456 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik bolygón született Superman?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Krypton bolygón', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik bolygón született Superman?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Xenon bolygón', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik bolygón született Superman?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Terbium bolygón', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik bolygón született Superman?';
-- Q 457 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem játszott Kern András?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Valami Amerika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Kern András?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A miniszter félrelép', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Kern András?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Meseautó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Kern András?';
-- Q 458 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem "A Gyűrűk Ura" trilógia része?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A herceg kamrája', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem "A Gyűrűk Ura" trilógia része?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A király visszatér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem "A Gyűrűk Ura" trilógia része?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A két torony', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem "A Gyűrűk Ura" trilógia része?';
-- Q 459 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a neve Harry baglyának a Harry Potterben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hedvig', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a neve Harry baglyának a Harry Potterben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ludvig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a neve Harry baglyának a Harry Potterben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Uhu', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a neve Harry baglyának a Harry Potterben?';
-- Q 460 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be a mozikban a Trollok című animációs filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2016-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a mozikban a Trollok című animációs filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a mozikban a Trollok című animációs filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2014-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a mozikban a Trollok című animációs filmet?';
COMMIT;
BEGIN;
-- Q 461 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játssza a Télapót a "Télapu" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tim Allen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza a Télapót a "Télapu" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom Hanks', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza a Télapót a "Télapu" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alan Rickman', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza a Télapót a "Télapu" című filmben?';
-- Q 462 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben hunyt el Garas Dezső?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2011-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben hunyt el Garas Dezső?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2012-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben hunyt el Garas Dezső?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2009-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik évben hunyt el Garas Dezső?';
-- Q 463 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a főszereplője az 57-es utas című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Wesley Snipes', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője az 57-es utas című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tommy Lee Jones', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője az 57-es utas című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ryan Reynolds', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője az 57-es utas című filmnek?';
-- Q 464 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Batu kán a"Magyar vándor"című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csuja Imre', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Batu kán a"Magyar vándor"című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gesztesi Károly', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Batu kán a"Magyar vándor"című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Józsa Imre', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Batu kán a"Magyar vándor"című filmben?';
-- Q 465 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik énekesnő játszik az alábbiak közül az "Álomutazó" című mesemusicalbe?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zséda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekesnő játszik az alábbiak közül az "Álomutazó" című mesemusicalbe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Wolf Kati', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekesnő játszik az alábbiak közül az "Álomutazó" című mesemusicalbe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Király Linda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekesnő játszik az alábbiak közül az "Álomutazó" című mesemusicalbe?';
-- Q 466 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki rendezte "A bolygó neve: Halál" című akció horror filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'James Cameron', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte "A bolygó neve: Halál" című akció horror filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George Lucas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte "A bolygó neve: Halál" című akció horror filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Steven Spielberg', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki rendezte "A bolygó neve: Halál" című akció horror filmet?';
-- Q 467 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem Walt Disney alkotás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spongyabob kockanadrág', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem Walt Disney alkotás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hófehérke és a hét törpe', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem Walt Disney alkotás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A dzsungel könyve', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem Walt Disney alkotás?';
-- Q 468 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem alakította soha James Bondot a filmvásznon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robin Williams', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem alakította soha James Bondot a filmvásznon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Daniel Craig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem alakította soha James Bondot a filmvásznon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sean Connery', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem alakította soha James Bondot a filmvásznon?';
-- Q 469 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kiről kapta nevét a budapesti színészmúzeum?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bajor Giziről', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiről kapta nevét a budapesti színészmúzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ruttkai Éváról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiről kapta nevét a budapesti színészmúzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jászai Mariról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiről kapta nevét a budapesti színészmúzeum?';
-- Q 470 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kinek a balettje a "A diótörő"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csajkovszkij', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a balettje a "A diótörő"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Verdi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a balettje a "A diótörő"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mozart', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kinek a balettje a "A diótörő"?';
COMMIT;
BEGIN;
-- Q 471 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen kutyafajtákról szól a "101 kiskutya" című rajzfilm?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'dalmatákról', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen kutyafajtákról szól a "101 kiskutya" című rajzfilm?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'komondorokról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen kutyafajtákról szól a "101 kiskutya" című rajzfilm?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vizslákról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen kutyafajtákról szól a "101 kiskutya" című rajzfilm?';
-- Q 472 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem Andrew Lloyd Webber musicalje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Valahol Európában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem Andrew Lloyd Webber musicalje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jézus Krisztus szupersztár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem Andrew Lloyd Webber musicalje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Az operaház fantomja', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik nem Andrew Lloyd Webber musicalje?';
-- Q 473 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt 2000-ben "A Nemzet Színésze"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Törőcsik Mari', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt 2000-ben "A Nemzet Színésze"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Máthé Erzsi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt 2000-ben "A Nemzet Színésze"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Molnár Piroska', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt 2000-ben "A Nemzet Színésze"?';
-- Q 474 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a főszereplője a "Reszkessetek betörők" című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Macaulay Culkin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a "Reszkessetek betörők" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Freddie Highmore', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a "Reszkessetek betörők" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Harry Melling', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a "Reszkessetek betörők" című filmnek?';
-- Q 475 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki alakítja a miniszterelnököt az "Igazából szerelem" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hugh Grant', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja a miniszterelnököt az "Igazából szerelem" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alan Rickman', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja a miniszterelnököt az "Igazából szerelem" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Colin Firth', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja a miniszterelnököt az "Igazából szerelem" című filmben?';
-- Q 476 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a főszereplője az "Aglaja" című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ónodi Eszter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője az "Aglaja" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dobó Kata', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője az "Aglaja" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gryllus Dorka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője az "Aglaja" című filmnek?';
-- Q 477 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik mű szereplője Gandalf?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gyűrűk Ura', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik mű szereplője Gandalf?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Harry Potter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik mű szereplője Gandalf?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Trónok harca', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik mű szereplője Gandalf?';
-- Q 478 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol játszódik a "My Fair Lady" filmmusical?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a "My Fair Lady" filmmusical?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a "My Fair Lady" filmmusical?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Los Angelesben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a "My Fair Lady" filmmusical?';
-- Q 479 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Golden Globe-díj magyar elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arany Glóbusz-díj', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Golden Globe-díj magyar elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arany Pálma-díj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Golden Globe-díj magyar elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arany Medve-díj', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a Golden Globe-díj magyar elnevezése?';
-- Q 480 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a főszereplője a 2016-ban bemutatott " A hét mesterlövész" című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Denzel Washington', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a 2016-ban bemutatott " A hét mesterlövész" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bruce Willis', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a 2016-ban bemutatott " A hét mesterlövész" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robert De Niro', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a 2016-ban bemutatott " A hét mesterlövész" című filmnek?';
COMMIT;
BEGIN;
-- Q 481 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a rendezője és főszereplője a Zoolander 2 című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ben Stiller', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a rendezője és főszereplője a Zoolander 2 című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vince Vaughn', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a rendezője és főszereplője a Zoolander 2 című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tom Hanks', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a rendezője és főszereplője a Zoolander 2 című filmnek?';
-- Q 482 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a főszereplője a "Bridget Jones naplója" című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Renée Zellweger', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a "Bridget Jones naplója" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Catherine Zeta-Jones', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a "Bridget Jones naplója" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Reese Witherspoon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője a "Bridget Jones naplója" című filmnek?';
-- Q 483 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a főszereplője "A miniszter félrelép" című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kern András', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője "A miniszter félrelép" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kulka János', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője "A miniszter félrelép" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Stohl András', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a főszereplője "A miniszter félrelép" című filmnek?';
-- Q 484 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a zebra neve a "Madagaszkár" című animációs filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Marty', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a zebra neve a "Madagaszkár" című animációs filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alex', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a zebra neve a "Madagaszkár" című animációs filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kowalski', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi a zebra neve a "Madagaszkár" című animációs filmben?';
-- Q 485 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik film folytatása a Hannibál című thriller?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A bárányok hallgatnak', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film folytatása a Hannibál című thriller?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A rettenthetetlen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film folytatása a Hannibál című thriller?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A keresztapa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film folytatása a Hannibál című thriller?';
-- Q 486 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik musicalt írta Szikora Róbert?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Macskafogó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik musicalt írta Szikora Róbert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Játékkészítő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik musicalt írta Szikora Róbert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Diótörő és Egérkirály', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik musicalt írta Szikora Róbert?';
-- Q 487 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor mutatták be a "Casablanca" című fekete-fehér filmet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1942-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a "Casablanca" című fekete-fehér filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1957-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a "Casablanca" című fekete-fehér filmet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1986-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor mutatták be a "Casablanca" című fekete-fehér filmet?';
-- Q 488 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol játszódik a "Testről és lélekről" című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vágóhídon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a "Testről és lélekről" című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'börtönben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a "Testről és lélekről" című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kollégiumban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol játszódik a "Testről és lélekről" című film?';
-- Q 489 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki játssza Lali szerepét az "Üvegtigris" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rudolf Péter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza Lali szerepét az "Üvegtigris" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Scherer Péter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza Lali szerepét az "Üvegtigris" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kálloy Molnár Péter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki játssza Lali szerepét az "Üvegtigris" című filmben?';
-- Q 490 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a foglalkozása Rocky Balboának a "Rocky" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'pénzbehajtó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a foglalkozása Rocky Balboának a "Rocky" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'asztalos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a foglalkozása Rocky Balboának a "Rocky" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'étteremvezető', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi volt a foglalkozása Rocky Balboának a "Rocky" című filmben?';
COMMIT;
BEGIN;
-- Q 491 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány év telt el a "Szex és New York: A film" két része között?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kettő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány év telt el a "Szex és New York: A film" két része között?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tíz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány év telt el a "Szex és New York: A film" két része között?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány év telt el a "Szex és New York: A film" két része között?';
-- Q 492 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem szerepel az "Óz a csodák csodája" című meseregényben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sárkány', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem szerepel az "Óz a csodák csodája" című meseregényben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bádogember', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem szerepel az "Óz a csodák csodája" című meseregényben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'madárijesztő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem szerepel az "Óz a csodák csodája" című meseregényben?';
-- Q 493 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a "Mátrix" című film főszereplője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Keanu Reeves', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a "Mátrix" című film főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George Clooney', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a "Mátrix" című film főszereplője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bradley Cooper', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki a "Mátrix" című film főszereplője?';
-- Q 494 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem szerepelt "A piszkos tizenkettő" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ed Harris', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem szerepelt "A piszkos tizenkettő" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lee Marvin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem szerepelt "A piszkos tizenkettő" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Donald Sutherland', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki nem szerepelt "A piszkos tizenkettő" című filmben?';
-- Q 495 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki alakítja Dr. Ryan Stone-t a "Gravitáció" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sandra Bullock', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja Dr. Ryan Stone-t a "Gravitáció" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Angelina Jolie', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja Dr. Ryan Stone-t a "Gravitáció" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jennifer Aniston', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki alakítja Dr. Ryan Stone-t a "Gravitáció" című filmben?';
-- Q 496 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Garfield megalkotója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jim Davis', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Garfield megalkotója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Guy Davis', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Garfield megalkotója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jim Lee', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Ki volt Garfield megalkotója?';
-- Q 497 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik énekesnő az egyik főszereplője a "Díva" című amerikai zenés filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cher', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekesnő az egyik főszereplője a "Díva" című amerikai zenés filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madonna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekesnő az egyik főszereplője a "Díva" című amerikai zenés filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Beyonce', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik énekesnő az egyik főszereplője a "Díva" című amerikai zenés filmnek?';
-- Q 498 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben játszott még Robert Pattinson az Alkonyaton kívűl?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Harry Potter és a Tűz Serlege', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott még Robert Pattinson az Alkonyaton kívűl?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Gyűrűk Ura', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott még Robert Pattinson az Alkonyaton kívűl?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Narnia Krónikái', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben játszott még Robert Pattinson az Alkonyaton kívűl?';
-- Q 499 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik film kapta 2013-ban a legjobb filmnek járó Oscar-díjat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12 év rabszolgaság', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film kapta 2013-ban a legjobb filmnek járó Oscar-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gravitáció', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film kapta 2013-ban a legjobb filmnek járó Oscar-díjat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Wall Street farkasa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik film kapta 2013-ban a legjobb filmnek járó Oscar-díjat?';
-- Q 500 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik animációs film szereplője Bing Bong?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Agymanók', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik animációs film szereplője Bing Bong?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gru', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik animációs film szereplője Bing Bong?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Toy Story', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik animációs film szereplője Bing Bong?';
COMMIT;
BEGIN;
-- Q 501 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem szerepelt Audrey Hepburn?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Casablanca', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem szerepelt Audrey Hepburn?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'My Fair Lady', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem szerepelt Audrey Hepburn?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Római vakáció', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem szerepelt Audrey Hepburn?';
-- Q 502 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent magyarul a "Cirque du Solei" ?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Nap Cirkusza', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mit jelent magyarul a "Cirque du Solei" ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Föld Cirkusza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mit jelent magyarul a "Cirque du Solei" ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A Hold Cirkusza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mit jelent magyarul a "Cirque du Solei" ?';
-- Q 503 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az óriáspanda neve a Kung Fu Panda című animációs filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Po', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az óriáspanda neve a Kung Fu Panda című animációs filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Go', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az óriáspanda neve a Kung Fu Panda című animációs filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Do', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az óriáspanda neve a Kung Fu Panda című animációs filmben?';
-- Q 504 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, '2018-ban mikor rendezik meg az Oscar-gálát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'március 4-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2018-ban mikor rendezik meg az Oscar-gálát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'február 22-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2018-ban mikor rendezik meg az Oscar-gálát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'március 15-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='2018-ban mikor rendezik meg az Oscar-gálát?';
-- Q 505 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmben nem játszott Jennifer Aniston?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gravitáció', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Jennifer Aniston?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Családi üzelmek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Jennifer Aniston?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kellékfeleség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmben nem játszott Jennifer Aniston?';
-- Q 506 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kiről mintázta Koltai Róbert, Gyuszi bácsi szerepét a "Sose halunk meg" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagybátyjáról', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiről mintázta Koltai Róbert, Gyuszi bácsi szerepét a "Sose halunk meg" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'édesapjáról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiről mintázta Koltai Róbert, Gyuszi bácsi szerepét a "Sose halunk meg" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagyapjáról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Kiről mintázta Koltai Róbert, Gyuszi bácsi szerepét a "Sose halunk meg" című filmben?';
-- Q 507 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az orangután neve "A dzsungel könyvében" ?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lajcsi király', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az orangután neve "A dzsungel könyvében" ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Winifred', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az orangután neve "A dzsungel könyvében" ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Akela', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi az orangután neve "A dzsungel könyvében" ?';
-- Q 508 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány része van "A Karib-tenger kalózai" című filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány része van "A Karib-tenger kalózai" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány része van "A Karib-tenger kalózai" című filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hét', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hány része van "A Karib-tenger kalózai" című filmnek?';
-- Q 509 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik filmet nem Mel Gibson rendezte?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Világok harca', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmet nem Mel Gibson rendezte?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A rettenthetetlen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmet nem Mel Gibson rendezte?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A fegyvertelen katona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Melyik filmet nem Mel Gibson rendezte?';
-- Q 510 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Amerika Kapitány valódi neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Steve Rogers', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Amerika Kapitány valódi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jack Kirby', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Amerika Kapitány valódi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Joe Simon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mi Amerika Kapitány valódi neve?';
COMMIT;
BEGIN;
-- Q 511 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor készült a "Valami Amerika 2." című film?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2008-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor készült a "Valami Amerika 2." című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor készült a "Valami Amerika 2." című film?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2012-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Mikor készült a "Valami Amerika 2." című film?';
-- Q 512 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat Diego, a "Jégkorszak" című filmben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kardfogú tigris', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Diego, a "Jégkorszak" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oposszum', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Diego, a "Jégkorszak" című filmben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'lajhár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Milyen állat Diego, a "Jégkorszak" című filmben?';
-- Q 513 in film_szinhaz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol kerül megrendezésre a 90. Oscar-gála?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Los Angelesben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol kerül megrendezésre a 90. Oscar-gála?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New Yorkban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol kerül megrendezésre a 90. Oscar-gála?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'San Franciscoban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='film_szinhaz' AND q.text='Hol kerül megrendezésre a 90. Oscar-gála?';
COMMIT;
