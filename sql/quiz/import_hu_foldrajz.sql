-- import_hu_foldrajz.sql (generated)
INSERT INTO languages (code, name) VALUES ('hu','Magyar') ON CONFLICT (code) DO NOTHING;
-- Topic: foldrajz
INSERT INTO topics (language_id, name_hu, name_translated, slug)
SELECT l.id, 'földrajz', 'földrajz', 'foldrajz'
FROM languages l WHERE l.code='hu'
ON CONFLICT (slug) DO NOTHING;
BEGIN;
-- Q 1 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország fővárosa Helsinki?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Finnország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Helsinki?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svédország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Helsinki?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Portugália', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Helsinki?';
-- Q 2 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Balaton?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '77 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Balaton?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '88 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Balaton?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '120 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Balaton?';
-- Q 3 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Magyarország második legnagyobb tava?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Velencei-tó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Magyarország második legnagyobb tava?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fertő-tó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Magyarország második legnagyobb tava?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tisza-tó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Magyarország második legnagyobb tava?';
-- Q 4 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Nógrád vármegye székhelye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Salgótarján', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Nógrád vármegye székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balassagyarmat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Nógrád vármegye székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tatabánya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Nógrád vármegye székhelye?';
-- Q 5 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hozzávetőlegesen mennyi a Föld népessége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7 milliárd fő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hozzávetőlegesen mennyi a Föld népessége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5 milliárd fő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hozzávetőlegesen mennyi a Föld népessége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10 milliárd fő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hozzávetőlegesen mennyi a Föld népessége?';
-- Q 6 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország fővárosa Dublin?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Írország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Dublin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Izland', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Dublin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'India', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Dublin?';
-- Q 7 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány km a távolság Szolnok és Budapest között?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '97 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km a távolság Szolnok és Budapest között?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '88 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km a távolság Szolnok és Budapest között?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '78 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km a távolság Szolnok és Budapest között?';
-- Q 8 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik államban van Dallas?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Texas', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik államban van Dallas?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'California', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik államban van Dallas?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kansas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik államban van Dallas?';
-- Q 9 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található Budapesten a Halászbástya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a budai várban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található Budapesten a Halászbástya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a Gellért-hegyen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található Budapesten a Halászbástya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a Hősök terén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található Budapesten a Halászbástya?';
-- Q 10 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik város nevezetessége a Big Ben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'London', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város nevezetessége a Big Ben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város nevezetessége a Big Ben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Milánó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város nevezetessége a Big Ben?';
COMMIT;
BEGIN;
-- Q 11 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Magyarországi megyében van Sásd?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Baranya', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarországi megyében van Sásd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Békés', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarországi megyében van Sásd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bács-Kiskun', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarországi megyében van Sásd?';
-- Q 12 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Honnan ered a Duna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a Fekete erdőből', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Honnan ered a Duna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ukrajnából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Honnan ered a Duna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovákiából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Honnan ered a Duna?';
-- Q 13 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Litvánia fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vilnius', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Litvánia fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Riga', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Litvánia fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tallin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Litvánia fővárosa?';
-- Q 14 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Honnan indul a Balaton átúszás?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Révfülöpről', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Honnan indul a Balaton átúszás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonboglárról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Honnan indul a Balaton átúszás?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tihanyból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Honnan indul a Balaton átúszás?';
-- Q 15 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Kalifornia állam székhelye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sacramento', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Kalifornia állam székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atlanta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Kalifornia állam székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Boston', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Kalifornia állam székhelye?';
-- Q 16 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a Föld leghosszabb folyója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amazonas', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld leghosszabb folyója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nílus', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld leghosszabb folyója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mississippi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld leghosszabb folyója?';
-- Q 17 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem tartozik a világ hét csodája közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Noé bárkája', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem tartozik a világ hét csodája közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szemiramisz függőkertje', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem tartozik a világ hét csodája közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'rodoszi kolosszus', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem tartozik a világ hét csodája közé?';
-- Q 18 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a Morvamezei-csata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1278-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor volt a Morvamezei-csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1345-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor volt a Morvamezei-csata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1256-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor volt a Morvamezei-csata?';
-- Q 19 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány km-re van egymástól Tatabánya és Nyíregyháza?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '301 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km-re van egymástól Tatabánya és Nyíregyháza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '234 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km-re van egymástól Tatabánya és Nyíregyháza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '401 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km-re van egymástól Tatabánya és Nyíregyháza?';
-- Q 20 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik magyar város nevezetessége a Dzsámi?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécs', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik magyar város nevezetessége a Dzsámi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kecskemét', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik magyar város nevezetessége a Dzsámi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szeged', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik magyar város nevezetessége a Dzsámi?';
COMMIT;
BEGIN;
-- Q 21 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Norvégia fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oslo', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Norvégia fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lisszabon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Norvégia fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bern', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Norvégia fővárosa?';
-- Q 22 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt az Aranybulla?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'királyi okirat', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt az Aranybulla?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'aranylánc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt az Aranybulla?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'királyi palást', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt az Aranybulla?';
-- Q 23 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Csanádapáca?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Békés', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Csanádapáca?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csongrád', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Csanádapáca?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Heves', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Csanádapáca?';
-- Q 24 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány m magas a Kékes?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1014 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány m magas a Kékes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '976 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány m magas a Kékes?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1006 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány m magas a Kékes?';
-- Q 25 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a Nyugatrómai Birodalom bukása?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '476', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor volt a Nyugatrómai Birodalom bukása?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '466', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor volt a Nyugatrómai Birodalom bukása?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '436', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor volt a Nyugatrómai Birodalom bukása?';
-- Q 26 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Bulgária fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Burgasz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Bulgária fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szófia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Bulgária fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Várna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Bulgária fővárosa?';
-- Q 27 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik magyar város jelképe a Tűztorony?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sopron', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik magyar város jelképe a Tűztorony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Győr', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik magyar város jelképe a Tűztorony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik magyar város jelképe a Tűztorony?';
-- Q 28 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem szikes tó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balaton', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem szikes tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fertő-tó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem szikes tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Velencei-tó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem szikes tó?';
-- Q 29 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van Bora Bora szigete?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'az Égei-tengeren', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Bora Bora szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Francia Polinéziában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Bora Bora szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a Karib-tengeren', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Bora Bora szigete?';
-- Q 30 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen az éghajlata Caracasnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'trópusi szavanna', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen az éghajlata Caracasnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'óceáni', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen az éghajlata Caracasnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'száraz sivatagi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen az éghajlata Caracasnak?';
COMMIT;
BEGIN;
-- Q 31 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik óceánban vannak a Seychelle-szigetek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiai', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik óceánban vannak a Seychelle-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atlanti', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik óceánban vannak a Seychelle-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csendes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik óceánban vannak a Seychelle-szigetek?';
-- Q 32 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány szövetségi államból áll az USA?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány szövetségi államból áll az USA?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '40', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány szövetségi államból áll az USA?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '60', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány szövetségi államból áll az USA?';
-- Q 33 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország fővárosa Maputo?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nicaragua', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Maputo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mozambik', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Maputo?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zambia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Maputo?';
-- Q 34 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Kanada államformája?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szövetségi köztársaság', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Kanada államformája?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'alkotmányos monarchia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Kanada államformája?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'parlamentális monarchia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Kanada államformája?';
-- Q 35 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol torkollik a Tiszába a Maros?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szegednél', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol torkollik a Tiszába a Maros?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Makónál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol torkollik a Tiszába a Maros?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aradnál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol torkollik a Tiszába a Maros?';
-- Q 36 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány megyéből áll Magyarország?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '19', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány megyéből áll Magyarország?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány megyéből áll Magyarország?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '21', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány megyéből áll Magyarország?';
-- Q 37 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A Föld felszínének hány %-át foglalja el az Atlanti-óceán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='A Föld felszínének hány %-át foglalja el az Atlanti-óceán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '30', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='A Föld felszínének hány %-át foglalja el az Atlanti-óceán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='A Föld felszínének hány %-át foglalja el az Atlanti-óceán?';
-- Q 38 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország fővárosa Hanoi?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vietnam', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Hanoi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Japán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Hanoi?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pakisztán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Hanoi?';
-- Q 39 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mekkora a Balaton legnagyobb mélysége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '22.6 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mekkora a Balaton legnagyobb mélysége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '15 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mekkora a Balaton legnagyobb mélysége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12.5 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mekkora a Balaton legnagyobb mélysége?';
-- Q 40 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Velencei-tó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10.8 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Velencei-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '15 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Velencei-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6.7 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Velencei-tó?';
COMMIT;
BEGIN;
-- Q 41 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van a Golden Gate híd?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Las Vegasban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Golden Gate híd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New Orleansban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Golden Gate híd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'San Franciscoban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Golden Gate híd?';
-- Q 42 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi Zalaegerszeg és Budapest távolsága?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '224 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mennyi Zalaegerszeg és Budapest távolsága?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '260 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mennyi Zalaegerszeg és Budapest távolsága?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '345 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mennyi Zalaegerszeg és Budapest távolsága?';
-- Q 43 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Lillafüred melyik város része?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Lillafüred melyik város része?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Miskolc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Lillafüred melyik város része?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nyíregyháza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Lillafüred melyik város része?';
-- Q 44 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Denver, melyik amerikai állam székhelye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arizona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Denver, melyik amerikai állam székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Florida', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Denver, melyik amerikai állam székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Colorado', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Denver, melyik amerikai állam székhelye?';
-- Q 45 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik téren van Budapesten a Mátyás templom?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mátyás téren', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik téren van Budapesten a Mátyás templom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szabadság téren', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik téren van Budapesten a Mátyás templom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szentháromság téren', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik téren van Budapesten a Mátyás templom?';
-- Q 46 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a világ legnagyobb kávétermelő országa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kolumbia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a világ legnagyobb kávétermelő országa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vietnam', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a világ legnagyobb kávétermelő országa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazília', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a világ legnagyobb kávétermelő országa?';
-- Q 47 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van Tasmania szigete?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Tasmania szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Tasmania szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztráliában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Tasmania szigete?';
-- Q 48 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik fővárosban látható a Petronas-ikertorony?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Katmanduban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik fővárosban látható a Petronas-ikertorony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kuala Lumpurban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik fővárosban látható a Petronas-ikertorony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Damaszkuszban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik fővárosban látható a Petronas-ikertorony?';
-- Q 49 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a keszthelyi kastélynak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Festetics-kastély', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve a keszthelyi kastélynak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Esterházy-kastély', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve a keszthelyi kastélynak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Grassalkovich-kastély', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve a keszthelyi kastélynak?';
-- Q 50 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Csomolungma hegy másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'K2', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Csomolungma hegy másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mount Everest', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Csomolungma hegy másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kilimandzsáró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Csomolungma hegy másik elnevezése?';
COMMIT;
BEGIN;
-- Q 51 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány méter magas a Csomolungma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '9016 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter magas a Csomolungma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8848 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter magas a Csomolungma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8765 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter magas a Csomolungma?';
-- Q 52 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor született I. Napoleon császár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1769. augusztus 15-én', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor született I. Napoleon császár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1767. augusztus 18-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor született I. Napoleon császár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1798. augusztus 1-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor született I. Napoleon császár?';
-- Q 53 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van Machu Picchu, az egykori Inka Birodalom romvárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Venezuelában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Machu Picchu, az egykori Inka Birodalom romvárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Argentínában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Machu Picchu, az egykori Inka Birodalom romvárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Peruban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Machu Picchu, az egykori Inka Birodalom romvárosa?';
-- Q 54 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent magyarul Buenos Aires?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szép kilátás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent magyarul Buenos Aires?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jó szelek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent magyarul Buenos Aires?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagy erdők', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent magyarul Buenos Aires?';
-- Q 55 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Álmos fejedelem fia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Taksony', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki volt Álmos fejedelem fia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Géza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki volt Álmos fejedelem fia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Árpád', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki volt Álmos fejedelem fia?';
-- Q 56 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit a jelent a Mont Blanc?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csodás hegy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit a jelent a Mont Blanc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fehér hegy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit a jelent a Mont Blanc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'magas hegy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit a jelent a Mont Blanc?';
-- Q 57 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány m magas a Pilis?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '848 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány m magas a Pilis?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '756 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány m magas a Pilis?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '654 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány m magas a Pilis?';
-- Q 58 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Komárom-Esztergom vármegye székhelye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Komárom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Komárom-Esztergom vármegye székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tatabánya', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Komárom-Esztergom vármegye székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Esztergom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Komárom-Esztergom vármegye székhelye?';
-- Q 59 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen magas a Kőris-hegy?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '654 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a Kőris-hegy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '850 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a Kőris-hegy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '709 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a Kőris-hegy?';
-- Q 60 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Rio de Janeiro jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'január óceánja', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Rio de Janeiro jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'január folyója', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Rio de Janeiro jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'májusi eső', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Rio de Janeiro jelentése?';
COMMIT;
BEGIN;
-- Q 61 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Kőszeg?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vas', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Kőszeg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csongrád', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Kőszeg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Heves', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Kőszeg?';
-- Q 62 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Heves-megyében hány város található?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '11', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Heves-megyében hány város található?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '21', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Heves-megyében hány város található?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '15', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Heves-megyében hány város található?';
-- Q 63 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Mississippi folyó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4070 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Mississippi folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5670 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Mississippi folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6890 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Mississippi folyó?';
-- Q 64 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Kanada fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ottawa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Kanada fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Toronto', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Kanada fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vancouver', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Kanada fővárosa?';
-- Q 65 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országon nem folyik keresztül az Amazonas folyó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Argentína', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országon nem folyik keresztül az Amazonas folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kolumbia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országon nem folyik keresztül az Amazonas folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazília', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országon nem folyik keresztül az Amazonas folyó?';
-- Q 66 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tó nem az amerikai Nagy-tavak közé tartozik?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Guatavita-tó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tó nem az amerikai Nagy-tavak közé tartozik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Felső-tó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tó nem az amerikai Nagy-tavak közé tartozik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ontario-tó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tó nem az amerikai Nagy-tavak közé tartozik?';
-- Q 67 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Michigan-tó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '494 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Michigan-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '564 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Michigan-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '422 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Michigan-tó?';
-- Q 68 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik város polgármestere Borkai Zsolt, olimpiai bajnok tornász?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Győr', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város polgármestere Borkai Zsolt, olimpiai bajnok tornász?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város polgármestere Borkai Zsolt, olimpiai bajnok tornász?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sopron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város polgármestere Borkai Zsolt, olimpiai bajnok tornász?';
-- Q 69 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Uruguay fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jereván', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Uruguay fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Katmandu', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Uruguay fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Montevideo', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Uruguay fővárosa?';
-- Q 70 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen széles a Gibraltári-szoros?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '25 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen széles a Gibraltári-szoros?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '28 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen széles a Gibraltári-szoros?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '14 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen széles a Gibraltári-szoros?';
COMMIT;
BEGIN;
-- Q 71 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik az Európai Unió legkisebb tagállama?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Málta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik az Európai Unió legkisebb tagállama?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ciprus', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik az Európai Unió legkisebb tagállama?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Litvánia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik az Európai Unió legkisebb tagállama?';
-- Q 72 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Győr legjelentősebb folyója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mosoni-Duna', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Győr legjelentősebb folyója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bodrog', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Győr legjelentősebb folyója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hernád', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Győr legjelentősebb folyója?';
-- Q 73 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kik ellen harcoltak a magyarok a Muhi csatában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'törökök', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Kik ellen harcoltak a magyarok a Muhi csatában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tatárok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Kik ellen harcoltak a magyarok a Muhi csatában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oszmánok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Kik ellen harcoltak a magyarok a Muhi csatában?';
-- Q 74 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen építészeti stílusban épült a Magyar Állami Operaház?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szecessziós', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen építészeti stílusban épült a Magyar Állami Operaház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'neoreneszánsz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen építészeti stílusban épült a Magyar Állami Operaház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'klasszicista', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen építészeti stílusban épült a Magyar Állami Operaház?';
-- Q 75 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki jelenleg Svédország királya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XVI. Károly Gusztáv', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki jelenleg Svédország királya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'X. Károly Gusztáv', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki jelenleg Svédország királya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XII. Gusztáv Károly', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki jelenleg Svédország királya?';
-- Q 76 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi a legnagyobb mélysége az Atlanti-óceánnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8250 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mennyi a legnagyobb mélysége az Atlanti-óceánnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8380 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mennyi a legnagyobb mélysége az Atlanti-óceánnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7643 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mennyi a legnagyobb mélysége az Atlanti-óceánnak?';
-- Q 77 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban rendezik a Virágkarnevált?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tatabányán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban rendezik a Virágkarnevált?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nyíregyházán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban rendezik a Virágkarnevált?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Debrecenben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban rendezik a Virágkarnevált?';
-- Q 78 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országon nem halad keresztül a Duna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országon nem halad keresztül a Duna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerbia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országon nem halad keresztül a Duna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Románia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országon nem halad keresztül a Duna?';
-- Q 79 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyénkben található Dunapataj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Békés megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyénkben található Dunapataj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bács-Kiskun megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyénkben található Dunapataj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tolna megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyénkben található Dunapataj?';
-- Q 80 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik város volt 2009-ben az Év Települése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hódmezővásárhely', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város volt 2009-ben az Év Települése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kaposvár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város volt 2009-ben az Év Települése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kőszeg', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város volt 2009-ben az Év Települése?';
COMMIT;
BEGIN;
-- Q 81 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik folyó szeli ketté Csongrád megyét?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tisza', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó szeli ketté Csongrád megyét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Duna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó szeli ketté Csongrád megyét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Maros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó szeli ketté Csongrád megyét?';
-- Q 82 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Csongrád vármegye legdélibb települése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kübekháza', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Csongrád vármegye legdélibb települése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pitvaros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Csongrád vármegye legdélibb települése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Deszk', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Csongrád vármegye legdélibb települése?';
-- Q 83 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Siófok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Somogy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Siófok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zala', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Siófok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Veszprém', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Siófok?';
-- Q 84 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Sió-csatorna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '98 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Sió-csatorna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '120 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Sió-csatorna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '150 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Sió-csatorna?';
-- Q 85 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Esztergom partnervárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szekszárd', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Esztergom partnervárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szentes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Esztergom partnervárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szeged', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Esztergom partnervárosa?';
-- Q 86 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Nemzeti Park része a Káli-medence?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balaton-felvidéki', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Nemzeti Park része a Káli-medence?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bükki', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Nemzeti Park része a Káli-medence?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kiskunsági', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Nemzeti Park része a Káli-medence?';
-- Q 87 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik volt hazánk első nemzeti parkja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hortobágyi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik volt hazánk első nemzeti parkja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aggteleki', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik volt hazánk első nemzeti parkja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Őrségi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik volt hazánk első nemzeti parkja?';
-- Q 88 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor alapították az Őrségi Nemzeti Parkot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2003-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor alapították az Őrségi Nemzeti Parkot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2002-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor alapították az Őrségi Nemzeti Parkot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2000-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor alapították az Őrségi Nemzeti Parkot?';
-- Q 89 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a Dunakanyar védőszentje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent Hedvig', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki a Dunakanyar védőszentje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent Katalin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki a Dunakanyar védőszentje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szent Erzsébet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki a Dunakanyar védőszentje?';
-- Q 90 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van Havasalföld?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Romániában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Havasalföld?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovákiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Havasalföld?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztriában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Havasalföld?';
COMMIT;
BEGIN;
-- Q 91 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik folyó Magyarország és Horvátország határfolyója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dráva', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó Magyarország és Horvátország határfolyója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Száva', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó Magyarország és Horvátország határfolyója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rába', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó Magyarország és Horvátország határfolyója?';
-- Q 92 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tengerben fekszik Jamaica?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Karib-tenger', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tengerben fekszik Jamaica?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fekete-tenger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tengerben fekszik Jamaica?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Földközi-tenger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tengerben fekszik Jamaica?';
-- Q 93 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tenger nem tartozik a Hét tenger közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Márvány-tenger', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger nem tartozik a Hét tenger közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Adriai-tenger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger nem tartozik a Hét tenger közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kaszpi-tenger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger nem tartozik a Hét tenger közé?';
-- Q 94 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van a Márvány-tenger?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Törökországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Márvány-tenger?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Márvány-tenger?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Márvány-tenger?';
-- Q 95 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Montenegro fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Podgorica', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Montenegro fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zágráb', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Montenegro fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szarajevó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Montenegro fővárosa?';
-- Q 96 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai város része Hollywood?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Los Angeles', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai város része Hollywood?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'San Francisco', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai város része Hollywood?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New York', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai város része Hollywood?';
-- Q 97 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai államban van a Grand Canyon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arizonában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van a Grand Canyon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alaszkában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van a Grand Canyon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alamabában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van a Grand Canyon?';
-- Q 98 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Grand Canyon jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagy szurdok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Grand Canyon jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagy árok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Grand Canyon jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagy völgy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Grand Canyon jelentése?';
-- Q 99 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mettől-meddig tartott az első világháború?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1914-18-ig', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mettől-meddig tartott az első világháború?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1814-18-ig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mettől-meddig tartott az első világháború?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1950-56-ig', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mettől-meddig tartott az első világháború?';
-- Q 100 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van Montreal?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanadában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Montreal?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Montreal?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Montreal?';
COMMIT;
BEGIN;
-- Q 101 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország szigete Szicília?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország szigete Szicília?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország szigete Szicília?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svédország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország szigete Szicília?';
-- Q 102 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi San Marino hivatalos nyelve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'olasz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi San Marino hivatalos nyelve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi San Marino hivatalos nyelve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'francia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi San Marino hivatalos nyelve?';
-- Q 103 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem vulkán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Murano', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem vulkán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Etna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem vulkán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vezúv', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem vulkán?';
-- Q 104 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Malayzia fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kuala Lumpur', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Malayzia fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Manila', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Malayzia fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Casablanca', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Malayzia fővárosa?';
-- Q 105 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van Casablanca?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Marokkóban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Casablanca?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mexikóban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Casablanca?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mozambikban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Casablanca?';
-- Q 106 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Győr-Moson-Sopron vármegye székhelye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Győr', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Győr-Moson-Sopron vármegye székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sopron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Győr-Moson-Sopron vármegye székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mosonmagyaróvár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Győr-Moson-Sopron vármegye székhelye?';
-- Q 107 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik várost nevezik a nyugat királynőjének?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szombathelyt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik várost nevezik a nyugat királynőjének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sopront', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik várost nevezik a nyugat királynőjének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kőszeget', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik várost nevezik a nyugat királynőjének?';
-- Q 108 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kőszeg várát ki védte 1532-ben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jurisics Miklós', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Kőszeg várát ki védte 1532-ben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zrínyi Miklós', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Kőszeg várát ki védte 1532-ben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dobó István', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Kőszeg várát ki védte 1532-ben?';
-- Q 109 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány km-re van Debrecentől Hajdúszoboszló?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '22 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km-re van Debrecentől Hajdúszoboszló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km-re van Debrecentől Hajdúszoboszló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '45 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km-re van Debrecentől Hajdúszoboszló?';
-- Q 110 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor jött létre a Hortobágyi Nemzeti Park?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1973-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor jött létre a Hortobágyi Nemzeti Park?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1975-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor jött létre a Hortobágyi Nemzeti Park?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1986-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor jött létre a Hortobágyi Nemzeti Park?';
COMMIT;
BEGIN;
-- Q 111 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik város az UNESCO központja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizs', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város az UNESCO központja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Róma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város az UNESCO központja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brüsszel', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város az UNESCO központja?';
-- Q 112 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Baktérítő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a Föld egyik szélességi köre', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Baktérítő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'baktériumfajta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Baktérítő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csillagjegy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Baktérítő?';
-- Q 113 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a Föld leghosszabb szélességi köre?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyenlítő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld leghosszabb szélességi köre?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ráktérítő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld leghosszabb szélességi köre?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Baktérítő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld leghosszabb szélességi köre?';
-- Q 114 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országon nem halad keresztül az Egyenlítő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Argentína', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országon nem halad keresztül az Egyenlítő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kenya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országon nem halad keresztül az Egyenlítő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indonézia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országon nem halad keresztül az Egyenlítő?';
-- Q 115 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinenshez tartozik Egyenlítői-Guinea?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinenshez tartozik Egyenlítői-Guinea?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinenshez tartozik Egyenlítői-Guinea?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinenshez tartozik Egyenlítői-Guinea?';
-- Q 116 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országhoz tartoznak a Galápagos-szigetek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ecuadorhoz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartoznak a Galápagos-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Peruhoz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartoznak a Galápagos-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kolumbiához', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartoznak a Galápagos-szigetek?';
-- Q 117 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány nagyobb szigetből állnak a Galápagos-szigetek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '14', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány nagyobb szigetből állnak a Galápagos-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány nagyobb szigetből állnak a Galápagos-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány nagyobb szigetből állnak a Galápagos-szigetek?';
-- Q 118 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van a Titicaca-tó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Titicaca-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észak-Amerikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Titicaca-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Titicaca-tó?';
-- Q 119 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszor nagyobb a Balatonnál a Titicaca-tó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '13x', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hányszor nagyobb a Balatonnál a Titicaca-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10x', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hányszor nagyobb a Balatonnál a Titicaca-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '15x', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hányszor nagyobb a Balatonnál a Titicaca-tó?';
-- Q 120 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a világ legmagasabban fekvő városa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'La Paz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a világ legmagasabban fekvő városa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sucre', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a világ legmagasabban fekvő városa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lima', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a világ legmagasabban fekvő városa?';
COMMIT;
BEGIN;
-- Q 121 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Portugália egyetlen szomszédja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Portugália egyetlen szomszédja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Portugália egyetlen szomszédja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Marokkó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Portugália egyetlen szomszédja?';
-- Q 122 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi választja el Spanyolországot Marokkótól?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gibraltári-szoros', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi választja el Spanyolországot Marokkótól?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Magellán-szoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi választja el Spanyolországot Marokkótól?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bering-szoros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi választja el Spanyolországot Marokkótól?';
-- Q 123 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány km széles a Gibraltári-szoros?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '14 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km széles a Gibraltári-szoros?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km széles a Gibraltári-szoros?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '16 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km széles a Gibraltári-szoros?';
-- Q 124 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miként emlegetik Finnországot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '„Az ezer tó országaként”', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Miként emlegetik Finnországot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"Az ezer öböl országaként"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Miként emlegetik Finnországot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"A száz tó országaként"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Miként emlegetik Finnországot?';
-- Q 125 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország megyéje Finnmark?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Norvégia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország megyéje Finnmark?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Finnország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország megyéje Finnmark?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svédország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország megyéje Finnmark?';
-- Q 126 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tenger mellett fekszik Lettország?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balti-tenger', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger mellett fekszik Lettország?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fekete-tenger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger mellett fekszik Lettország?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Adriai-tenger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger mellett fekszik Lettország?';
-- Q 127 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország városa Krakkó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lengyelország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország városa Krakkó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Finnország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország városa Krakkó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csehország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország városa Krakkó?';
-- Q 128 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Szlovákia fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pozsony', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Szlovákia fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagyszombat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Szlovákia fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kassa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Szlovákia fővárosa?';
-- Q 129 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Sixtus-kápolna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vatikánban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Sixtus-kápolna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rómában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Sixtus-kápolna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Sixtus-kápolna?';
-- Q 130 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a Föld leghosszabb hegysége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Andok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld leghosszabb hegysége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Himalája', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld leghosszabb hegysége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tien-san', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld leghosszabb hegysége?';
COMMIT;
BEGIN;
-- Q 131 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a Tien-San hegység?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Közép-Ázsiában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Tien-San hegység?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Tien-San hegység?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Tien-San hegység?';
-- Q 132 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a Sziklás-hegység legmagasabb csúcsának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mount Elbert', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve a Sziklás-hegység legmagasabb csúcsának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mount Everest', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve a Sziklás-hegység legmagasabb csúcsának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mount Blanc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve a Sziklás-hegység legmagasabb csúcsának?';
-- Q 133 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik földrész hegylánca az Alpok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Európa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik földrész hegylánca az Alpok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik földrész hegylánca az Alpok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észak-Amerika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik földrész hegylánca az Alpok?';
-- Q 134 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van a Yellowstone Nemzeti Park?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'USA-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Yellowstone Nemzeti Park?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanadában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Yellowstone Nemzeti Park?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Argentínában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Yellowstone Nemzeti Park?';
-- Q 135 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Európa legnagyobb vulkánja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Etna', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Európa legnagyobb vulkánja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vezúv', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Európa legnagyobb vulkánja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vulcano', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Európa legnagyobb vulkánja?';
-- Q 136 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Hollókő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nógrád megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Hollókő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Békés megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Hollókő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vas megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Hollókő?';
-- Q 137 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik hegy tetején van a Citadella?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gellért-hegy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegy tetején van a Citadella?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Széchenyi-hegy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegy tetején van a Citadella?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'János-hegy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegy tetején van a Citadella?';
-- Q 138 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a gleccser?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hóból alakult jégtömeg', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a gleccser?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jégből alakult árvíz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a gleccser?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vízesés', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a gleccser?';
-- Q 139 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Budai-hegység legmagasabb pontja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagy-Kopasz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Budai-hegység legmagasabb pontja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kis-Kopasz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Budai-hegység legmagasabb pontja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kutya-hegy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Budai-hegység legmagasabb pontja?';
-- Q 140 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány méter magas a János-hegy?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '527 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter magas a János-hegy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '657 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter magas a János-hegy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '876 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter magas a János-hegy?';
COMMIT;
BEGIN;
-- Q 141 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Normafa régi neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Viharbükk', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Normafa régi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ezüstfa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Normafa régi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szelesfa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Normafa régi neve?';
-- Q 142 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hanyadik kerületben van a Rózsadomb Budapesten?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. kerületben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hanyadik kerületben van a Rózsadomb Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. kerületben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hanyadik kerületben van a Rózsadomb Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'VIII. kerületben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hanyadik kerületben van a Rózsadomb Budapesten?';
-- Q 143 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a Föld legnagyobb szigete?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Grönland', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld legnagyobb szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Új-Guinea', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld legnagyobb szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madagaszkár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld legnagyobb szigete?';
-- Q 144 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban található Szumátra szigete?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indonéziában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban található Szumátra szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban található Szumátra szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jordániában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban található Szumátra szigete?';
-- Q 145 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Nepál fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Katmandu', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Nepál fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Doha', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Nepál fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Manila', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Nepál fővárosa?';
-- Q 146 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik félszigeten fekszik Egyiptom?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sínai-félszigeten', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik félszigeten fekszik Egyiptom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hindusztáni-félszigeten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik félszigeten fekszik Egyiptom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arab-félszigeten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik félszigeten fekszik Egyiptom?';
-- Q 147 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a Föld legnagyobb sivataga?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szahara', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld legnagyobb sivataga?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Góbi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld legnagyobb sivataga?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kalahári', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld legnagyobb sivataga?';
-- Q 148 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány piramisból állnak a Gízai piramisok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány piramisból állnak a Gízai piramisok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány piramisból állnak a Gízai piramisok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány piramisból állnak a Gízai piramisok?';
-- Q 149 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A gízai nagy Szfinx milyen testű lényt ábrázol?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oroszlán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='A gízai nagy Szfinx milyen testű lényt ábrázol?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='A gízai nagy Szfinx milyen testű lényt ábrázol?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bölény', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='A gízai nagy Szfinx milyen testű lényt ábrázol?';
-- Q 150 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Labrador félszigete melyik országban van?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanadában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Labrador félszigete melyik országban van?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyesült Államokban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Labrador félszigete melyik országban van?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Labrador félszigete melyik országban van?';
COMMIT;
BEGIN;
-- Q 151 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik óceánban helyezkedik el Kamcsatka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csendes-óceánban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik óceánban helyezkedik el Kamcsatka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atlanti-óceánban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik óceánban helyezkedik el Kamcsatka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiai-óceánban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik óceánban helyezkedik el Kamcsatka?';
-- Q 152 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az Andok legmagasabb pontja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aconcagua', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi az Andok legmagasabb pontja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mahendragiri', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi az Andok legmagasabb pontja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csomolungma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi az Andok legmagasabb pontja?';
-- Q 153 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országot nevezték el Jézus Krisztusról?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'El Salvadort', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országot nevezték el Jézus Krisztusról?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ecuadort', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országot nevezték el Jézus Krisztusról?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Chilét', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országot nevezték el Jézus Krisztusról?';
-- Q 154 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány ország található a Nagy-Antillák szigetein?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány ország található a Nagy-Antillák szigetein?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány ország található a Nagy-Antillák szigetein?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány ország található a Nagy-Antillák szigetein?';
-- Q 155 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinens partjainál van a Nagy-korallzátony?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztrália', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinens partjainál van a Nagy-korallzátony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinens partjainál van a Nagy-korallzátony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinens partjainál van a Nagy-korallzátony?';
-- Q 156 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Baranya vármegye székhelye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécs', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Baranya vármegye székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mohács', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Baranya vármegye székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Siklós', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Baranya vármegye székhelye?';
-- Q 157 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Hatvan?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Heves', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Hatvan?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fejér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Hatvan?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Somogy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Hatvan?';
-- Q 158 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Deseda-tó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kaposváron', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Deseda-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szekszárdon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Deseda-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dombóváron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Deseda-tó?';
-- Q 159 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található az Amazonas-medence?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található az Amazonas-medence?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észak-Amerikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található az Amazonas-medence?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található az Amazonas-medence?';
-- Q 160 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Haiti egyetlen szárazföldi szomszédja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dominikai Köztársaság', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Haiti egyetlen szárazföldi szomszédja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kuba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Haiti egyetlen szárazföldi szomszédja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jamaica', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Haiti egyetlen szárazföldi szomszédja?';
COMMIT;
BEGIN;
-- Q 161 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik zene őshazája Jamaica?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'reggae', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik zene őshazája Jamaica?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'soul', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik zene őshazája Jamaica?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jazz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik zene őshazája Jamaica?';
-- Q 162 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Kolumbia hivatalos nyelve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'spanyol', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Kolumbia hivatalos nyelve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Kolumbia hivatalos nyelve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'francia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Kolumbia hivatalos nyelve?';
-- Q 163 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú az Orinoco folyó Dél-Amerikában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2140 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú az Orinoco folyó Dél-Amerikában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1130 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú az Orinoco folyó Dél-Amerikában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3340 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú az Orinoco folyó Dél-Amerikában?';
-- Q 164 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Ciprus fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nicosia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Ciprus fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Manila', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Ciprus fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szöul', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Ciprus fővárosa?';
-- Q 165 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Burma mai neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mianmar', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Burma mai neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Malajzia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Burma mai neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Laosz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Burma mai neve?';
-- Q 166 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent Ulánbátor, Mongólia fővárosának neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vörös hős', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent Ulánbátor, Mongólia fővárosának neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vörös harcos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent Ulánbátor, Mongólia fővárosának neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fekete angyal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent Ulánbátor, Mongólia fővárosának neve?';
-- Q 167 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinenshez tartoznak a Kókusz-szigetek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztráliához', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinenshez tartoznak a Kókusz-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiához', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinenshez tartoznak a Kókusz-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikához', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinenshez tartoznak a Kókusz-szigetek?';
-- Q 168 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van a Gyöngy-folyó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kínában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Gyöngy-folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Japánban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Gyöngy-folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Gyöngy-folyó?';
-- Q 169 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi Budapest lakossága?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1.7 millió fő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mennyi Budapest lakossága?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '500 ezer fő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mennyi Budapest lakossága?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1.2 millió fő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mennyi Budapest lakossága?';
-- Q 170 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Lánchíd Budapesten?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '380m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Lánchíd Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '260m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Lánchíd Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '480m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Lánchíd Budapesten?';
COMMIT;
BEGIN;
-- Q 171 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor volt a kiegyezés?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1867-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor volt a kiegyezés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1877-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor volt a kiegyezés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1856-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor volt a kiegyezés?';
-- Q 172 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kit száműztek 1815-ben Szent-Ilona szigetére?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Napoleont', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Kit száműztek 1815-ben Szent-Ilona szigetére?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'V. Ferdinándot', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Kit száműztek 1815-ben Szent-Ilona szigetére?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Garibaldit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Kit száműztek 1815-ben Szent-Ilona szigetére?';
-- Q 173 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Himalája szó jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"a hó hazája"', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Himalája szó jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"a jég birodalma"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Himalája szó jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '" a hegyek ura"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Himalája szó jelentése?';
-- Q 174 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a Föld második legmagasabb hegycsúcsa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'K2', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld második legmagasabb hegycsúcsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Huascarán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld második legmagasabb hegycsúcsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aconcagua', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld második legmagasabb hegycsúcsa?';
-- Q 175 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány négyzetkilométer a Yellowstone Nemzeti Park az USA-ban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8980', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány négyzetkilométer a Yellowstone Nemzeti Park az USA-ban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5670', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány négyzetkilométer a Yellowstone Nemzeti Park az USA-ban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '9856', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány négyzetkilométer a Yellowstone Nemzeti Park az USA-ban?';
-- Q 176 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Magyarország legmagasabb hegysége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mátra', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarország legmagasabb hegysége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bükk', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarország legmagasabb hegysége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Börzsöny', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarország legmagasabb hegysége?';
-- Q 177 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik hegységünk csúcsa Írott-kő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kőszegi-hegység', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegységünk csúcsa Írott-kő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zempléni-hegység', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegységünk csúcsa Írott-kő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Börzsöny', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegységünk csúcsa Írott-kő?';
-- Q 178 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Mecsek legmagasabb csúcsa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zengő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Mecsek legmagasabb csúcsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csóványos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Mecsek legmagasabb csúcsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Istállós-kő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Mecsek legmagasabb csúcsa?';
-- Q 179 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik pápa kezdeményezésére jött létre a Szent Liga?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'V. Piusz pápa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik pápa kezdeményezésére jött létre a Szent Liga?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Piusz pápa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik pápa kezdeményezésére jött létre a Szent Liga?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'V. Sixtus pápa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik pápa kezdeményezésére jött létre a Szent Liga?';
-- Q 180 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország határolja nyugaton Indiát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pakisztán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország határolja nyugaton Indiát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kína', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország határolja nyugaton Indiát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nepál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország határolja nyugaton Indiát?';
COMMIT;
BEGIN;
-- Q 181 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a világ legnagyobb öble?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bengáli-öböl', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a világ legnagyobb öble?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mexikói-öböl', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a világ legnagyobb öble?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Perzsa-öböl', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a világ legnagyobb öble?';
-- Q 182 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik hegység egyik hegycsúcsa a Matterhorn?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alpok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegység egyik hegycsúcsa a Matterhorn?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Andok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegység egyik hegycsúcsa a Matterhorn?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Himalája', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegység egyik hegycsúcsa a Matterhorn?';
-- Q 183 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány km hosszú a Kebele-patak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '33 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km hosszú a Kebele-patak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '11 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km hosszú a Kebele-patak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '42 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km hosszú a Kebele-patak?';
-- Q 184 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Pannonhalma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Győr-Moson-Sopron', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Pannonhalma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jász-Nagykun-Szolnok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Pannonhalma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Borsod-Abaúj-Zemplén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Pannonhalma?';
-- Q 185 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik folyó mellékfolyója a Hernád?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sajó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó mellékfolyója a Hernád?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bodrog', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó mellékfolyója a Hernád?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tisza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó mellékfolyója a Hernád?';
-- Q 186 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a sárospataki vár másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rákóczi-vár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a sárospataki vár másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zrínyi-vár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a sárospataki vár másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Thököly-vár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a sárospataki vár másik elnevezése?';
-- Q 187 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány országon halad át a Duna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány országon halad át a Duna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány országon halad át a Duna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '18', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány országon halad át a Duna?';
-- Q 188 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem a Kisalföld régi elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Soproni-medence', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem a Kisalföld régi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pozsonyi-medence', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem a Kisalföld régi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Győri-medence', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem a Kisalföld régi elnevezése?';
-- Q 189 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány négyzetkilóméter a Kisalföld teljes területe?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '9000', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány négyzetkilóméter a Kisalföld teljes területe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4000', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány négyzetkilóméter a Kisalföld teljes területe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3000', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány négyzetkilóméter a Kisalföld teljes területe?';
-- Q 190 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban található a Victor Vasarely Múzeum?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécsen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban található a Victor Vasarely Múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Miskolcon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban található a Victor Vasarely Múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szegeden', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban található a Victor Vasarely Múzeum?';
COMMIT;
BEGIN;
-- Q 191 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik város nem Szabolcs-Szatmár-Bereg megyében van?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szécsény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város nem Szabolcs-Szatmár-Bereg megyében van?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Máriapócs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város nem Szabolcs-Szatmár-Bereg megyében van?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Baktalórántháza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város nem Szabolcs-Szatmár-Bereg megyében van?';
-- Q 192 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai államban van az Alcatraz-sziget?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kalifornia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van az Alcatraz-sziget?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arizona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van az Alcatraz-sziget?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Texas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van az Alcatraz-sziget?';
-- Q 193 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány méter a teljes hosszúsága a Golden Gate hídnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2737 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter a teljes hosszúsága a Golden Gate hídnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1625 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter a teljes hosszúsága a Golden Gate hídnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2678 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter a teljes hosszúsága a Golden Gate hídnak?';
-- Q 194 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik bankjegy hátoldalán látható a Sárospataki vár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '500 Ft-os', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik bankjegy hátoldalán látható a Sárospataki vár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1000 Ft-os', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik bankjegy hátoldalán látható a Sárospataki vár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '200 Ft-os', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik bankjegy hátoldalán látható a Sárospataki vár?';
-- Q 195 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Bács-Kiskun vármegye székhelye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kecskemét', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Bács-Kiskun vármegye székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kiskunfélegyháza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Bács-Kiskun vármegye székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kiskunhalas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Bács-Kiskun vármegye székhelye?';
-- Q 196 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városunkban található a Csonka-torony?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dunaföldváron', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városunkban található a Csonka-torony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szekszárdon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városunkban található a Csonka-torony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dombóváron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városunkban található a Csonka-torony?';
-- Q 197 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Srí Lanka régi elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ceylon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt Srí Lanka régi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Burma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt Srí Lanka régi elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Colombo', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt Srí Lanka régi elnevezése?';
-- Q 198 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent magyarul a Srí Lanka elnevezés?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"Fényességes sziget"', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent magyarul a Srí Lanka elnevezés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"Gyönyörűséges sziget"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent magyarul a Srí Lanka elnevezés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"Napsugaras sziget"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent magyarul a Srí Lanka elnevezés?';
-- Q 199 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik király korában élt Janus Pannonius?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mátyás király', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik király korában élt Janus Pannonius?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. Ulászló', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik király korában élt Janus Pannonius?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. Lajos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik király korában élt Janus Pannonius?';
-- Q 200 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban van az 56-os Múzeum?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kiskunmajsán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van az 56-os Múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kiskunfélegyházán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van az 56-os Múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kiskőrösön', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van az 56-os Múzeum?';
COMMIT;
BEGIN;
-- Q 201 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország határolja északról Nógrád Vármegyét?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovákia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország határolja északról Nógrád Vármegyét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovénia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország határolja északról Nógrád Vármegyét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztria', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország határolja északról Nógrád Vármegyét?';
-- Q 202 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Kárpátok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1500 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Kárpátok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '800 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Kárpátok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2600 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Kárpátok?';
-- Q 203 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik skálán mérik a szél sebességét?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Beaufort-skálán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik skálán mérik a szél sebességét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Scoville-skálán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik skálán mérik a szél sebességét?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Richter-skálán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik skálán mérik a szél sebességét?';
-- Q 204 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a tornádó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'forgószél', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a tornádó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'betegség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a tornádó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'édesség', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a tornádó?';
-- Q 205 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országhoz tartozik Korzika szigete?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartozik Korzika szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartozik Korzika szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartozik Korzika szigete?';
-- Q 206 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Thaiföld régi neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sziám', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt Thaiföld régi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Burma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt Thaiföld régi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Colombo', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt Thaiföld régi neve?';
-- Q 207 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország szigete Ibiza?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország szigete Ibiza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország szigete Ibiza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország szigete Ibiza?';
-- Q 208 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Hawaii állam székhelye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Honolulu', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Hawaii állam székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atlanta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Hawaii állam székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Denver', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Hawaii állam székhelye?';
-- Q 209 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai államban van Miami?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Florida', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van Miami?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kalifornia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van Miami?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Idaho', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van Miami?';
-- Q 210 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik város van Kalifornia államban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'San Francisco', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város van Kalifornia államban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Seattle', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város van Kalifornia államban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Las Vegas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város van Kalifornia államban?';
COMMIT;
BEGIN;
-- Q 211 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik folyó táplálja a Balatont?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zala-folyó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó táplálja a Balatont?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mura', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó táplálja a Balatont?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sió', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó táplálja a Balatont?';
-- Q 212 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik vármegye területén van Göcsej?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zala', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye területén van Göcsej?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Békés', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye területén van Göcsej?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Heves', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye területén van Göcsej?';
-- Q 213 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik magyar hegymászó mászta meg a Csomolungmát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Erőss Zsolt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik magyar hegymászó mászta meg a Csomolungmát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lukács Attila', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik magyar hegymászó mászta meg a Csomolungmát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Horváth Tibor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik magyar hegymászó mászta meg a Csomolungmát?';
-- Q 214 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország nem tartozik a skandináv államok közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svájc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem tartozik a skandináv államok közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dánia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem tartozik a skandináv államok közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Norvégia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem tartozik a skandináv államok közé?';
-- Q 215 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van a Ladoga-tó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oroszországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Ladoga-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Ladoga-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Finnországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Ladoga-tó?';
-- Q 216 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Finnország fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Helsinki', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Finnország fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oslo', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Finnország fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Athén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Finnország fővárosa?';
-- Q 217 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tenger nyúlványa a Botteni-öböl?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balti-tenger', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger nyúlványa a Botteni-öböl?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Adriai-tenger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger nyúlványa a Botteni-öböl?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fekete-tenger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger nyúlványa a Botteni-öböl?';
-- Q 218 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen magas a Kab-hegy?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '599 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a Kab-hegy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '645 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a Kab-hegy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '720 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a Kab-hegy?';
-- Q 219 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Banglades hivatalos nyelve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bengáli', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Banglades hivatalos nyelve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'portugál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Banglades hivatalos nyelve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'arab', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Banglades hivatalos nyelve?';
-- Q 220 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a Planetárium Budapesten?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Népligetben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Planetárium Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Városligetben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Planetárium Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Margit-szigeten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Planetárium Budapesten?';
COMMIT;
BEGIN;
-- Q 221 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Szuezi-csatorna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '163 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Szuezi-csatorna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '198 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Szuezi-csatorna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '234 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Szuezi-csatorna?';
-- Q 222 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor adták át a Megyeri-hidat Budapesten?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2008. szept. 30-án', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor adták át a Megyeri-hidat Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2009. szept. 1-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor adták át a Megyeri-hidat Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010. aug. 20-án', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor adták át a Megyeri-hidat Budapesten?';
-- Q 223 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Budapest hanyadik kerületében van a Budavári Palota?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. kerületben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest hanyadik kerületében van a Budavári Palota?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'III. kerületben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest hanyadik kerületében van a Budavári Palota?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'VII. kerületben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest hanyadik kerületében van a Budavári Palota?';
-- Q 224 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Szabolcs-Szatmár-Bereg vármegye székhelye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nyíregyháza', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Szabolcs-Szatmár-Bereg vármegye székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Debrecen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Szabolcs-Szatmár-Bereg vármegye székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Miskolc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Szabolcs-Szatmár-Bereg vármegye székhelye?';
-- Q 225 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Mezőkövesd?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Borsod-Abaúj-Zemplén vármegye', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Mezőkövesd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jász-Nagykun-Szolnok vármegye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Mezőkövesd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Komárom-Esztergom vármegye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Mezőkövesd?';
-- Q 226 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen magas a Galya-tető?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '965 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a Galya-tető?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '887 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a Galya-tető?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '910 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a Galya-tető?';
-- Q 227 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van a siroki vár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Heves', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van a siroki vár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zala', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van a siroki vár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Somogy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van a siroki vár?';
-- Q 228 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik folyó mellékfolyója a Zagyva?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tisza', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó mellékfolyója a Zagyva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Duna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó mellékfolyója a Zagyva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dráva', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó mellékfolyója a Zagyva?';
-- Q 229 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország folyója még Magyarországon kívűl a Dráva?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Horvátország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország folyója még Magyarországon kívűl a Dráva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Montenegro', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország folyója még Magyarországon kívűl a Dráva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovénia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország folyója még Magyarországon kívűl a Dráva?';
-- Q 230 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai államban van Portland?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oregon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van Portland?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oklahoma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van Portland?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arizona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van Portland?';
COMMIT;
BEGIN;
-- Q 231 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai államban van egy Budapest nevű település?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Georgiában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van egy Budapest nevű település?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nebraskában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van egy Budapest nevű település?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Minnesotában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államban van egy Budapest nevű település?';
-- Q 232 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai városban van a John F. Kennedy nemzetközi repülőtér?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New Yorkban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai városban van a John F. Kennedy nemzetközi repülőtér?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Los Angelesben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai városban van a John F. Kennedy nemzetközi repülőtér?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dallasban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai városban van a John F. Kennedy nemzetközi repülőtér?';
-- Q 233 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány méter az Eiffel-torony?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '324 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter az Eiffel-torony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '675 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter az Eiffel-torony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '134 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter az Eiffel-torony?';
-- Q 234 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban akarták eredetileg felépíteni az Eiffel-tornyot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Barcelonában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban akarták eredetileg felépíteni az Eiffel-tornyot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lyonban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban akarták eredetileg felépíteni az Eiffel-tornyot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madridban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban akarták eredetileg felépíteni az Eiffel-tornyot?';
-- Q 235 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen magas a párizsi Diadalív?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a párizsi Diadalív?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '75 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a párizsi Diadalív?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '167 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a párizsi Diadalív?';
-- Q 236 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik király rezidenciája volt a versailles-i kastély?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XIV. Lajos', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik király rezidenciája volt a versailles-i kastély?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XV. Lajos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik király rezidenciája volt a versailles-i kastély?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XIII. Lajos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik király rezidenciája volt a versailles-i kastély?';
-- Q 237 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országgal határos Monaco?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországgal', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országgal határos Monaco?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németországgal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országgal határos Monaco?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszországgal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országgal határos Monaco?';
-- Q 238 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik két szín van Spanyolország zászlajában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sárga és piros', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két szín van Spanyolország zászlajában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöld és kék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két szín van Spanyolország zászlajában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fekete és piros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két szín van Spanyolország zászlajában?';
-- Q 239 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tenger öble a Tarantói-öböl?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jón-tenger', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger öble a Tarantói-öböl?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fekete-tenger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger öble a Tarantói-öböl?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Adriai-tenger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger öble a Tarantói-öböl?';
-- Q 240 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tenger határolja északon Európát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jeges-tenger', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger határolja északon Európát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Földközi-tenger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger határolja északon Európát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fekete-tenger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger határolja északon Európát?';
COMMIT;
BEGIN;
-- Q 241 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány ország van Európában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány ország van Európában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '44', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány ország van Európában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '32', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány ország van Európában?';
-- Q 242 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Volga folyó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3960 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Volga folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3450 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Volga folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3245 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Volga folyó?';
-- Q 243 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a trópusi ciklon neve a Távol-Keleten?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tájfun', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a trópusi ciklon neve a Távol-Keleten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hurrikán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a trópusi ciklon neve a Távol-Keleten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tornádó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a trópusi ciklon neve a Távol-Keleten?';
-- Q 244 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Honnan fúj a Sirokkó szélfajta?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észak-Afrikából', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Honnan fúj a Sirokkó szélfajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolországból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Honnan fúj a Sirokkó szélfajta?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztráliából', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Honnan fúj a Sirokkó szélfajta?';
-- Q 245 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány kerület van Budapesten?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '23', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kerület van Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kerület van Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '16', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kerület van Budapesten?';
-- Q 246 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik folyó osztja két részre Budapestet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Duna', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó osztja két részre Budapestet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tisza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó osztja két részre Budapestet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Maros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó osztja két részre Budapestet?';
-- Q 247 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Margit-híd?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '607 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Margit-híd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '380 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Margit-híd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '456 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Margit-híd?';
-- Q 248 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor épült a budapesti Libegő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1970-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor épült a budapesti Libegő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1980-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor épült a budapesti Libegő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1990-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor épült a budapesti Libegő?';
-- Q 249 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinensen van a Kilimandzsáró?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen van a Kilimandzsáró?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen van a Kilimandzsáró?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen van a Kilimandzsáró?';
-- Q 250 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányszor nagyobb a Szahara sivatag hazánknál?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '90-szer', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hányszor nagyobb a Szahara sivatag hazánknál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '60-szor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hányszor nagyobb a Szahara sivatag hazánknál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '40-szer', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hányszor nagyobb a Szahara sivatag hazánknál?';
COMMIT;
BEGIN;
-- Q 251 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány ország területén halad keresztül a Nílus folyó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '11', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány ország területén halad keresztül a Nílus folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '9', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány ország területén halad keresztül a Nílus folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány ország területén halad keresztül a Nílus folyó?';
-- Q 252 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent magyarul a Nílus szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'folyóvölgy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent magyarul a Nílus szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék folyó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent magyarul a Nílus szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nagy folyó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent magyarul a Nílus szó?';
-- Q 253 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú Afrikában a Tanganyika-tó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '673 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú Afrikában a Tanganyika-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '567 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú Afrikában a Tanganyika-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '698 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú Afrikában a Tanganyika-tó?';
-- Q 254 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai államból ered a Rio Grande folyó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Colorado', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államból ered a Rio Grande folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kalifornia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államból ered a Rio Grande folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oklahoma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai államból ered a Rio Grande folyó?';
-- Q 255 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú az Egyenlítő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '40 ezer km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú az Egyenlítő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10 ezer km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú az Egyenlítő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '60 ezer km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú az Egyenlítő?';
-- Q 256 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van a pisai ferde torony?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a pisai ferde torony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a pisai ferde torony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a pisai ferde torony?';
-- Q 257 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány emelete van a pisai ferde toronynak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány emelete van a pisai ferde toronynak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány emelete van a pisai ferde toronynak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány emelete van a pisai ferde toronynak?';
-- Q 258 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Szigetköz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Győr-Moson-Sopron', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Szigetköz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szabolcs-Szatmár-Bereg', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Szigetköz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Komárom-Esztergom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Szigetköz?';
-- Q 259 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik király katonája volt Búvár Kund?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. András', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik király katonája volt Búvár Kund?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Béla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik király katonája volt Búvár Kund?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. Béla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik király katonája volt Búvár Kund?';
-- Q 260 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Viharsarok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'magyar tájegység neve', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Viharsarok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'az a hely ahol sok a vihar', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Viharsarok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észarki sark része', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Viharsarok?';
COMMIT;
BEGIN;
-- Q 261 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány főből áll Vatikán népessége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '793', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány főből áll Vatikán népessége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2345', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány főből áll Vatikán népessége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '234', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány főből áll Vatikán népessége?';
-- Q 262 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a Sixtus-kápolna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vatikánban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Sixtus-kápolna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rómában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Sixtus-kápolna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Monacoban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Sixtus-kápolna?';
-- Q 263 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen magas a Colosseum?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '48.5 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a Colosseum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '65.8 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a Colosseum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '22.5 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a Colosseum?';
-- Q 264 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a londoni Westminster-palota toronyórája harangjának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Big Ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve a londoni Westminster-palota toronyórája harangjának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Big Mac', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve a londoni Westminster-palota toronyórája harangjának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Big Belli', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve a londoni Westminster-palota toronyórája harangjának?';
-- Q 265 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a London Eye másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Millenniumi Kerék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a London Eye másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Óriáskerék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a London Eye másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'London kerék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a London Eye másik elnevezése?';
-- Q 266 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány fülkéből áll a London Eye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '32', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány fülkéből áll a London Eye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány fülkéből áll a London Eye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '26', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány fülkéből áll a London Eye?';
-- Q 267 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban látható a Prado?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madridban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban látható a Prado?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban látható a Prado?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rómában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban látható a Prado?';
-- Q 268 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a déli-sarkvidék neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Antarktisz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a déli-sarkvidék neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arktisz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a déli-sarkvidék neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Grönland', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a déli-sarkvidék neve?';
-- Q 269 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat van Grönland címerén?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jegesmedve', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen állat van Grönland címerén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fóka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen állat van Grönland címerén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'delfin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen állat van Grönland címerén?';
-- Q 270 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a Föld második legnagyobb kontinense?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld második legnagyobb kontinense?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld második legnagyobb kontinense?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Európa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld második legnagyobb kontinense?';
COMMIT;
BEGIN;
-- Q 271 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van a Tűzföld?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Tűzföld?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Tűzföld?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Tűzföld?';
-- Q 272 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Magellán-szoros?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '570 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Magellán-szoros?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '430 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Magellán-szoros?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1024 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Magellán-szoros?';
-- Q 273 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik községbe született Kossuth Lajos?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Monok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik községbe született Kossuth Lajos?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mikóháza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik községbe született Kossuth Lajos?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mezőnyárád', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik községbe született Kossuth Lajos?';
-- Q 274 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Minek a neve a Farkaslyuk?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'község', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Minek a neve a Farkaslyuk?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hegy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Minek a neve a Farkaslyuk?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'folyó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Minek a neve a Farkaslyuk?';
-- Q 275 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van az Altamira-barlang?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van az Altamira-barlang?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van az Altamira-barlang?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van az Altamira-barlang?';
-- Q 276 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban van a Fehér-ház?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Washingtonban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Fehér-ház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atlantában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Fehér-ház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Las-Vegasban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Fehér-ház?';
-- Q 277 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen alakú a Pentagon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ötszög', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen alakú a Pentagon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hatszög', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen alakú a Pentagon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nyolcszög', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen alakú a Pentagon?';
-- Q 278 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Kék Mauritius?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bélyeg', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Kék Mauritius?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kőzet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Kék Mauritius?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öböl', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Kék Mauritius?';
-- Q 279 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány méter magas a London Eye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '135 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter magas a London Eye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '235 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter magas a London Eye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '567 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter magas a London Eye?';
-- Q 280 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van Karlstad?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svédországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Karlstad?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Karlstad?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Norvégiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Karlstad?';
COMMIT;
BEGIN;
-- Q 281 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van a Stonehenge?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagy-Britanniában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Stonehenge?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Stonehenge?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Stonehenge?';
-- Q 282 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Tisza magyarországi szakasza?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '585 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Tisza magyarországi szakasza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '789 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Tisza magyarországi szakasza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '234 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Tisza magyarországi szakasza?';
-- Q 283 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik folyó mellékvize a Tarna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zagyva', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó mellékvize a Tarna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hernád', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó mellékvize a Tarna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sajó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó mellékvize a Tarna?';
-- Q 284 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinensen élnek a busmanok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen élnek a busmanok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen élnek a busmanok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztráliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen élnek a busmanok?';
-- Q 285 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik két színből áll Ausztria zászlaja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'piros és fehér', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két színből áll Ausztria zászlaja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöld és kék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két színből áll Ausztria zászlaja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'piros és kék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két színből áll Ausztria zászlaja?';
-- Q 286 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország a világ legnagyobb kávétermelője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazília', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország a világ legnagyobb kávétermelője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indonézia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország a világ legnagyobb kávétermelője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kuba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország a világ legnagyobb kávétermelője?';
-- Q 287 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen szín nincs Franciaország zászlajában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sárga', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen szín nincs Franciaország zászlajában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen szín nincs Franciaország zászlajában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'piros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen szín nincs Franciaország zászlajában?';
-- Q 288 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik félszigeten fekszik Montenegro?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balkán-félszigeten', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik félszigeten fekszik Montenegro?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Appennini-félszigeten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik félszigeten fekszik Montenegro?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Skandináv-félszigeten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik félszigeten fekszik Montenegro?';
-- Q 289 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány vulkán található Kamcsatka területén?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '160', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány vulkán található Kamcsatka területén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '340', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány vulkán található Kamcsatka területén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '59', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány vulkán található Kamcsatka területén?';
-- Q 290 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik településen épül fel az ország legnagyobb betleheme?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vörsön', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik településen épül fel az ország legnagyobb betleheme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kehidakustányban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik településen épül fel az ország legnagyobb betleheme?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rinyabesenyőn', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik településen épül fel az ország legnagyobb betleheme?';
COMMIT;
BEGIN;
-- Q 291 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinensen van Peru?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen van Peru?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen van Peru?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen van Peru?';
-- Q 292 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik szín nem található meg Finnország zászlajában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'piros', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szín nem található meg Finnország zászlajában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szín nem található meg Finnország zászlajában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fehér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szín nem található meg Finnország zászlajában?';
-- Q 293 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány kerület van New Yorkban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kerület van New Yorkban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kerület van New Yorkban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '13', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kerület van New Yorkban?';
-- Q 294 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Fogarasi-havasok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '70 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Fogarasi-havasok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '100 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Fogarasi-havasok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '450 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Fogarasi-havasok?';
-- Q 295 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország zászlaja a fehér alapon, piros kör?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Japán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország zászlaja a fehér alapon, piros kör?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kína', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország zászlaja a fehér alapon, piros kör?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Libanon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország zászlaja a fehér alapon, piros kör?';
-- Q 296 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban kerül átadásra a Nobel-békedíj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Norvégiában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban kerül átadásra a Nobel-békedíj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban kerül átadásra a Nobel-békedíj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svédországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban kerül átadásra a Nobel-békedíj?';
-- Q 297 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország zászlaja nem két színből áll?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország zászlaja nem két színből áll?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svájc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország zászlaja nem két színből áll?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanada', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország zászlaja nem két színből áll?';
-- Q 298 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van Genova?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Genova?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Genova?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dániában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Genova?';
-- Q 299 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Solymár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pest', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Solymár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zala', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Solymár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fejér', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Solymár?';
-- Q 300 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány országra terjed ki az Alföld?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány országra terjed ki az Alföld?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány országra terjed ki az Alföld?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány országra terjed ki az Alföld?';
COMMIT;
BEGIN;
-- Q 301 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik sziget neve volt régebben Formosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tajvan', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik sziget neve volt régebben Formosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szumátra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik sziget neve volt régebben Formosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Borneó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik sziget neve volt régebben Formosa?';
-- Q 302 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a Föld második legnagyobb szigete?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Új-Guinea', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld második legnagyobb szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madagszkár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld második legnagyobb szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Izland', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld második legnagyobb szigete?';
-- Q 303 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mekkora a Duna magyarországi szakaszának a hossza?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '417 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mekkora a Duna magyarországi szakaszának a hossza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '658 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mekkora a Duna magyarországi szakaszának a hossza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '876 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mekkora a Duna magyarországi szakaszának a hossza?';
-- Q 304 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országhoz tartozik a Bermuda szigetcsoport?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagy-Britannia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartozik a Bermuda szigetcsoport?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Izland', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartozik a Bermuda szigetcsoport?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dánia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartozik a Bermuda szigetcsoport?';
-- Q 305 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik hurrikán okozott 2005-ben nagy károkat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Katrina', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hurrikán okozott 2005-ben nagy károkat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hanna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hurrikán okozott 2005-ben nagy károkat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jenny', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hurrikán okozott 2005-ben nagy károkat?';
-- Q 306 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mióta az Egyesült Királyság királynője II. Erzsébet?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1952', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mióta az Egyesült Királyság királynője II. Erzsébet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1987', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mióta az Egyesült Királyság királynője II. Erzsébet?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1968', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mióta az Egyesült Királyság királynője II. Erzsébet?';
-- Q 307 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tó nem az afrikai Nagy-Tavak egyike?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ontario-tó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tó nem az afrikai Nagy-Tavak egyike?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tanganyika-tó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tó nem az afrikai Nagy-Tavak egyike?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Viktória-tó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tó nem az afrikai Nagy-Tavak egyike?';
-- Q 308 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tengeren fekszik Ibiza?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Földközi-tengeren', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tengeren fekszik Ibiza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fekete-tengeren', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tengeren fekszik Ibiza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balti-tengeren', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tengeren fekszik Ibiza?';
-- Q 309 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik folyón van a Vaskapu-szoros?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dunán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyón van a Vaskapu-szoros?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tiszán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyón van a Vaskapu-szoros?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dráván', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyón van a Vaskapu-szoros?';
-- Q 310 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tengerben fekszik a Kis-Antillák szigetcsoport?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Karib-tengerben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tengerben fekszik a Kis-Antillák szigetcsoport?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Földközi-tengerben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tengerben fekszik a Kis-Antillák szigetcsoport?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Adriai-tengerben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tengerben fekszik a Kis-Antillák szigetcsoport?';
COMMIT;
BEGIN;
-- Q 311 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Zimbabwe fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Harare', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Zimbabwe fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Maputo', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Zimbabwe fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dodoma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Zimbabwe fővárosa?';
-- Q 312 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a Machu Picchu?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Peruban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Machu Picchu?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bolíviában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Machu Picchu?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazíliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Machu Picchu?';
-- Q 313 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország része a Vajdaság?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerbia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország része a Vajdaság?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Horvátország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország része a Vajdaság?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Románia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország része a Vajdaság?';
-- Q 314 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik két ország folyója a Kraszna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Magyarország és Románia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két ország folyója a Kraszna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerbia és Magyarország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két ország folyója a Kraszna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Románia és Ukrajna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két ország folyója a Kraszna?';
-- Q 315 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Kocsord?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szabolcs-Szatmár-Bereg megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Kocsord?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Győr-Moson-Sopron megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Kocsord?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Borsod-Abaúj-Zemplén megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Kocsord?';
-- Q 316 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban van a schönbrunni kastély?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bécsben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a schönbrunni kastély?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madridban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a schönbrunni kastély?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brüsszelben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a schönbrunni kastély?';
-- Q 317 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik király zarándoklatát nevezzük Canossa-járásnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IV. Henrik', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik király zarándoklatát nevezzük Canossa-járásnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'III. Henrik', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik király zarándoklatát nevezzük Canossa-járásnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'V. Henrik', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik király zarándoklatát nevezzük Canossa-járásnak?';
-- Q 318 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány színből áll Hollandia zászlaja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány színből áll Hollandia zászlaja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kettő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány színből áll Hollandia zászlaja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány színből áll Hollandia zászlaja?';
-- Q 319 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi határolja keletről Argentinát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atlanti-óceán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi határolja keletről Argentinát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bolívia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi határolja keletről Argentinát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazília', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi határolja keletről Argentinát?';
-- Q 320 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország tartománya Manitoba?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanada', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország tartománya Manitoba?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mexikó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország tartománya Manitoba?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Uruguay', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország tartománya Manitoba?';
COMMIT;
BEGIN;
-- Q 321 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban van a Hyde-Park?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Hyde-Park?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brüsszelben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Hyde-Park?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madridban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Hyde-Park?';
-- Q 322 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban van a La Scala Operaház?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Milánóban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a La Scala Operaház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Firenzében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a La Scala Operaház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Velencében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a La Scala Operaház?';
-- Q 323 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Somogy-vármegye székhelye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kaposvár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Somogy-vármegye székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Siófok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Somogy-vármegye székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Barcs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Somogy-vármegye székhelye?';
-- Q 324 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország szigete Jáva?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indonézia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország szigete Jáva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Új-Zéland', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország szigete Jáva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Izland', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország szigete Jáva?';
-- Q 325 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik két színből áll Izland zászlaja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék és piros', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két színből áll Izland zászlaja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöld és sárga', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két színből áll Izland zászlaja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék és fekete', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két színből áll Izland zászlaja?';
-- Q 326 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Tisza?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '962 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Tisza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1034 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Tisza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '876 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Tisza?';
-- Q 327 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban található a Buckingham-palota?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban található a Buckingham-palota?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban található a Buckingham-palota?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rómában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban található a Buckingham-palota?';
-- Q 328 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van Ho Si Minh-város?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vietnámban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Ho Si Minh-város?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kínában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Ho Si Minh-város?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Ho Si Minh-város?';
-- Q 329 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Almásfüzitő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Komárom-Esztergom megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Almásfüzitő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jász-Nagykun-Szolnok megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Almásfüzitő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szabolcs-Szatmár-Bereg megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Almásfüzitő?';
-- Q 330 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik államban van a Pentagon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Virginia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik államban van a Pentagon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Texas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik államban van a Pentagon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kalifornia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik államban van a Pentagon?';
COMMIT;
BEGIN;
-- Q 331 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány országon folyik keresztül a Nílus?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány országon folyik keresztül a Nílus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány országon folyik keresztül a Nílus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány országon folyik keresztül a Nílus?';
-- Q 332 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Fülöp-szigetek fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Manila', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Fülöp-szigetek fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Davao', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Fülöp-szigetek fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zamboanga', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Fülöp-szigetek fővárosa?';
-- Q 333 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország regiója Kárpátalja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ukrajna', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország regiója Kárpátalja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Románia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország regiója Kárpátalja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztria', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország regiója Kárpátalja?';
-- Q 334 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van az Appalache-hegység?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'USA-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van az Appalache-hegység?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyesült Királyságban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van az Appalache-hegység?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dániában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van az Appalache-hegység?';
-- Q 335 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen alakú a Sínai-félsziget?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'háromszög', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen alakú a Sínai-félsziget?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csizma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen alakú a Sínai-félsziget?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csillag', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen alakú a Sínai-félsziget?';
-- Q 336 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol székel a Világbank?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Washingtonban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol székel a Világbank?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol székel a Világbank?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brüsszelben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol székel a Világbank?';
-- Q 337 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinensen van Burkina Faso?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen van Burkina Faso?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amerika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen van Burkina Faso?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen van Burkina Faso?';
-- Q 338 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van Granada?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Granada?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Portugáliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Granada?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Granada?';
-- Q 339 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik folyó partján terül el London?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Temze', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó partján terül el London?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Duna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó partján terül el London?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Elba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó partján terül el London?';
-- Q 340 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Szajna folyó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '777 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Szajna folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '888 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Szajna folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '666 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Szajna folyó?';
COMMIT;
BEGIN;
-- Q 341 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országhoz tartoznak az Azori-szigetek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Portugáliához', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartoznak az Azori-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dániához', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartoznak az Azori-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországhoz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartoznak az Azori-szigetek?';
-- Q 342 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország határolja délen Brazíliát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Uruguay', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország határolja délen Brazíliát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Argentína', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország határolja délen Brazíliát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Peru', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország határolja délen Brazíliát?';
-- Q 343 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik szín nem található meg Belgium zászlajában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szín nem található meg Belgium zászlajában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'piros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szín nem található meg Belgium zászlajában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sárga', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szín nem található meg Belgium zászlajában?';
-- Q 344 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városunkban található a Memento Park?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Budapesten', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városunkban található a Memento Park?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Székesfehérváron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városunkban található a Memento Park?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Debrecenben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városunkban található a Memento Park?';
-- Q 345 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mit jelent a Citadella szó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fellegvár', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent a Citadella szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kővár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent a Citadella szó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kőoszlop', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mit jelent a Citadella szó?';
-- Q 346 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor adták át a Kiskörei-víztározót?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1975-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor adták át a Kiskörei-víztározót?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1984-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor adták át a Kiskörei-víztározót?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1965-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor adták át a Kiskörei-víztározót?';
-- Q 347 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országhoz tartozik Bácska túlnyomó része?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerbia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartozik Bácska túlnyomó része?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Horvátország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartozik Bácska túlnyomó része?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Románia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz tartozik Bácska túlnyomó része?';
-- Q 348 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Burkina Faso nevének jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'becsületes emberek országa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Burkina Faso nevének jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a világ legboldogabb országa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Burkina Faso nevének jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'sok folyó országa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Burkina Faso nevének jelentése?';
-- Q 349 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mennyi a teljes hosszúsága a londoni Tower Bridge-nek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '244 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mennyi a teljes hosszúsága a londoni Tower Bridge-nek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '123 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mennyi a teljes hosszúsága a londoni Tower Bridge-nek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '567 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mennyi a teljes hosszúsága a londoni Tower Bridge-nek?';
-- Q 350 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Alamaba állam székhelye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Montgomery', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Alamaba állam székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Columbia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Alamaba állam székhelye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Boston', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Alamaba állam székhelye?';
COMMIT;
BEGIN;
-- Q 351 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van a Muszala hegycsúcs?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bulgáriában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Muszala hegycsúcs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerbiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Muszala hegycsúcs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Görögországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Muszala hegycsúcs?';
-- Q 352 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik magyarországi település fekszik hármashatár mellett?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kübekháza', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik magyarországi település fekszik hármashatár mellett?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kerekegyháza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik magyarországi település fekszik hármashatár mellett?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cibakháza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik magyarországi település fekszik hármashatár mellett?';
-- Q 353 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban található a Pantheon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rómában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban található a Pantheon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Firenzében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban található a Pantheon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban található a Pantheon?';
-- Q 354 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik vármegye nem szomszédja Somogy megyének?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vas vármegye', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye nem szomszédja Somogy megyének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Baranya vármegye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye nem szomszédja Somogy megyének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fejér vármegye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye nem szomszédja Somogy megyének?';
-- Q 355 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány csillag van Honduras zászlaján?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány csillag van Honduras zászlaján?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány csillag van Honduras zászlaján?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány csillag van Honduras zászlaján?';
-- Q 356 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a Kékfestő Múzeum?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pápán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Kékfestő Múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szentendrén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Kékfestő Múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Visegrádon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Kékfestő Múzeum?';
-- Q 357 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Bering-szoros?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1600 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Bering-szoros?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2500 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Bering-szoros?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2100 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Bering-szoros?';
-- Q 358 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Limpopo folyó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1750 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Limpopo folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1256 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Limpopo folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Limpopo folyó?';
-- Q 359 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai állam fekszik a legdélebben?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Texas', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai állam fekszik a legdélebben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Montana', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai állam fekszik a legdélebben?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arizona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai állam fekszik a legdélebben?';
-- Q 360 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány km a Balatonpart?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '195 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km a Balatonpart?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '220 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km a Balatonpart?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '180 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km a Balatonpart?';
COMMIT;
BEGIN;
-- Q 361 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország felé fúj a "Bóra" szél?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország felé fúj a "Bóra" szél?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország felé fúj a "Bóra" szél?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyiptom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország felé fúj a "Bóra" szél?';
-- Q 362 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány ország területét foglalja el a Szahara sivatag?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '12', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány ország területét foglalja el a Szahara sivatag?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány ország területét foglalja el a Szahara sivatag?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány ország területét foglalja el a Szahara sivatag?';
-- Q 363 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol él a Loch Ness-i szörny a legenda szerint?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy skóciai tóban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol él a Loch Ness-i szörny a legenda szerint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy angol folyóban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol él a Loch Ness-i szörny a legenda szerint?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy osztrák tóban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol él a Loch Ness-i szörny a legenda szerint?';
-- Q 364 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik várost szokták a bajor velencének is nevezni?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Passaut', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik várost szokták a bajor velencének is nevezni?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Düsseldorfot', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik várost szokták a bajor velencének is nevezni?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hamburgot', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik várost szokták a bajor velencének is nevezni?';
-- Q 365 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen magas az Annapurna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8091 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas az Annapurna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8024 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas az Annapurna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7654 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas az Annapurna?';
-- Q 366 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A tudósok szerint mi lehetne a nyolcadik kontinens?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zélandia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='A tudósok szerint mi lehetne a nyolcadik kontinens?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indonézia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='A tudósok szerint mi lehetne a nyolcadik kontinens?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pápua Új-Guinea', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='A tudósok szerint mi lehetne a nyolcadik kontinens?';
-- Q 367 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik szín nem található meg Írország zászlajában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szín nem található meg Írország zászlajában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöld', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szín nem található meg Írország zászlajában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'narancssárga', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szín nem található meg Írország zászlajában?';
-- Q 368 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Budapest után melyik a legnépesebb város Magyarországon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Debrecen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest után melyik a legnépesebb város Magyarországon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szeged', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest után melyik a legnépesebb város Magyarországon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest után melyik a legnépesebb város Magyarországon?';
-- Q 369 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország nem tartozik a Balti országok közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oroszország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem tartozik a Balti országok közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észtország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem tartozik a Balti országok közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lettország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem tartozik a Balti országok közé?';
-- Q 370 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a legnépesebb ország a Földön?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kína', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a legnépesebb ország a Földön?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'India', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a legnépesebb ország a Földön?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'USA', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a legnépesebb ország a Földön?';
COMMIT;
BEGIN;
-- Q 371 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Jamaica nevének jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"A források szigete"', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Jamaica nevének jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"A vulkánok szigete"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Jamaica nevének jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"A kék sziget"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Jamaica nevének jelentése?';
-- Q 372 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van Karlovy Vary?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csehországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Karlovy Vary?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovákiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Karlovy Vary?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovéniában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Karlovy Vary?';
-- Q 373 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország határolja északról Magyarországot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovákia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország határolja északról Magyarországot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerbia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország határolja északról Magyarországot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztria', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország határolja északról Magyarországot?';
-- Q 374 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány kontinens veszi körbe a Földközi-tengert?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kontinens veszi körbe a Földközi-tengert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kettő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kontinens veszi körbe a Földközi-tengert?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kontinens veszi körbe a Földközi-tengert?';
-- Q 375 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik óceánban található a Seychelle-szigetek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiai', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik óceánban található a Seychelle-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csendes', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik óceánban található a Seychelle-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atlanti', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik óceánban található a Seychelle-szigetek?';
-- Q 376 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a legnagyobb bauxittermelő ország?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztrália', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a legnagyobb bauxittermelő ország?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazília', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a legnagyobb bauxittermelő ország?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'India', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a legnagyobb bauxittermelő ország?';
-- Q 377 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tenger partján fekszik Bulgária?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fekete', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger partján fekszik Bulgária?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Földközi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger partján fekszik Bulgária?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vörös', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger partján fekszik Bulgária?';
-- Q 378 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország nem Borneó szigetén van?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pápua Új-Guinea', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem Borneó szigetén van?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indonézia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem Borneó szigetén van?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Malajzia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem Borneó szigetén van?';
-- Q 379 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt a budapesti Szabadság híd eredeti neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ferenc József híd', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt a budapesti Szabadság híd eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Horthy Miklós híd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt a budapesti Szabadság híd eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lágymányosi híd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt a budapesti Szabadság híd eredeti neve?';
-- Q 380 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország zászlaja nem téglalap alakú?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nepál', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország zászlaja nem téglalap alakú?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nigéria', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország zászlaja nem téglalap alakú?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nicaragua', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország zászlaja nem téglalap alakú?';
COMMIT;
BEGIN;
-- Q 381 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol fordul elő Magyarországon feketekőszén?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mecsekben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol fordul elő Magyarországon feketekőszén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mátrában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol fordul elő Magyarországon feketekőszén?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bakonyban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol fordul elő Magyarországon feketekőszén?';
-- Q 382 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mekkora a teljes magassága a New Yorki Szabadság szobornak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '93 méter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mekkora a teljes magassága a New Yorki Szabadság szobornak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '134 méter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mekkora a teljes magassága a New Yorki Szabadság szobornak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '102 méter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mekkora a teljes magassága a New Yorki Szabadság szobornak?';
-- Q 383 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hegyeshalomnál melyik országba tudunk átkelni?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztriába', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hegyeshalomnál melyik országba tudunk átkelni?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Romániába', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hegyeshalomnál melyik országba tudunk átkelni?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerbiába', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hegyeshalomnál melyik országba tudunk átkelni?';
-- Q 384 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország nem tartozik a latin-amerikai országok közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanada', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem tartozik a latin-amerikai országok közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mexikó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem tartozik a latin-amerikai országok közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kuba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem tartozik a latin-amerikai országok közé?';
-- Q 385 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van a Kruger Nemzeti Park?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Afrikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Kruger Nemzeti Park?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'USA-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Kruger Nemzeti Park?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztráliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Kruger Nemzeti Park?';
-- Q 386 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban látható a Megváltó Krisztus szobra Brazíliában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rio de Janeiroban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban látható a Megváltó Krisztus szobra Brazíliában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazíliavárosban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban látható a Megváltó Krisztus szobra Brazíliában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sao Pauloban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban látható a Megváltó Krisztus szobra Brazíliában?';
-- Q 387 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Feszty-körkép eredeti címe?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A magyarok bejövetele', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Feszty-körkép eredeti címe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'A magyarok vándorlása', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Feszty-körkép eredeti címe?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Magyar honfoglalás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Feszty-körkép eredeti címe?';
-- Q 388 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Magyarország legdélebben fekvő városa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Siklós', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarország legdélebben fekvő városa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarország legdélebben fekvő városa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mohács', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarország legdélebben fekvő városa?';
-- Q 389 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Bugyi község?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pest-megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Bugyi község?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Komárom-Esztergom megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Bugyi község?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Somogy megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Bugyi község?';
-- Q 390 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány napig volt a Balaton a leghosszabb ideig befagyva?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '110 nap', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány napig volt a Balaton a leghosszabb ideig befagyva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '86 nap', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány napig volt a Balaton a leghosszabb ideig befagyva?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '70 nap', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány napig volt a Balaton a leghosszabb ideig befagyva?';
COMMIT;
BEGIN;
-- Q 391 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hoszzú a budapesti Árpád-híd?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '928 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hoszzú a budapesti Árpád-híd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '356 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hoszzú a budapesti Árpád-híd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '478 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hoszzú a budapesti Árpád-híd?';
-- Q 392 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai állam székhelye Boston?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Massachusetts', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai állam székhelye Boston?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Minnesota', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai állam székhelye Boston?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nevada', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai állam székhelye Boston?';
-- Q 393 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országnál ömlik az Atlanti-óceánba az Amazonas?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazília', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országnál ömlik az Atlanti-óceánba az Amazonas?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kolumbia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országnál ömlik az Atlanti-óceánba az Amazonas?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Peru', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országnál ömlik az Atlanti-óceánba az Amazonas?';
-- Q 394 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik falunak van egy lakosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagygéc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik falunak van egy lakosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagyvarsány', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik falunak van egy lakosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagycserkesz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik falunak van egy lakosa?';
-- Q 395 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Dél-Amerika legdélibb pontja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Horn-fok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Dél-Amerika legdélibb pontja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jóreménység foka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Dél-Amerika legdélibb pontja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cape Point', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Dél-Amerika legdélibb pontja?';
-- Q 396 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Karakószörcsök?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Veszprém megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Karakószörcsök?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pest megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Karakószörcsök?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bács-Kiskun megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Karakószörcsök?';
-- Q 397 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Festetics-kastély?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Keszthelyen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Festetics-kastély?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kőszegen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Festetics-kastély?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gödöllőn', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Festetics-kastély?';
-- Q 398 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Magyarország legnagyobb kiterjedésű borvidéke?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kunsági borvidék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarország legnagyobb kiterjedésű borvidéke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szekszárdi borvidék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarország legnagyobb kiterjedésű borvidéke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Villányi borvidék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarország legnagyobb kiterjedésű borvidéke?';
-- Q 399 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik vármegye folyói a Rába, Gyöngyös, Répce, Marcal?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vas vármegye', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye folyói a Rába, Gyöngyös, Répce, Marcal?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zala vármegye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye folyói a Rába, Gyöngyös, Répce, Marcal?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csongrád vármegye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye folyói a Rába, Gyöngyös, Répce, Marcal?';
-- Q 400 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható az "Óriások útja"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észak-Írországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható az "Óriások útja"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Skóciában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható az "Óriások útja"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Walesben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható az "Óriások útja"?';
COMMIT;
BEGIN;
-- Q 401 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Viktória-tó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '337 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Viktória-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '235 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Viktória-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '387 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Viktória-tó?';
-- Q 402 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány kerülete van Budapestnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '23', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kerülete van Budapestnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '20', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kerülete van Budapestnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '16', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kerülete van Budapestnek?';
-- Q 403 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van Stuttgart?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Stuttgart?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztriában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Stuttgart?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svájcban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Stuttgart?';
-- Q 404 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Millenniumi emlékmű Budapesten?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a Hősök terén', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Millenniumi emlékmű Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a Gellért-hegyen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Millenniumi emlékmű Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'a Margitszigeten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Millenniumi emlékmű Budapesten?';
-- Q 405 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem Dél-Amerikai ország?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nicaragua', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem Dél-Amerikai ország?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Venezuela', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem Dél-Amerikai ország?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kolumbia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem Dél-Amerikai ország?';
-- Q 406 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kiknek az arcmását vésték az amerikai Rushmore-hegy oldalába?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'amerikai elnökök', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Kiknek az arcmását vésték az amerikai Rushmore-hegy oldalába?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'amerikai filmcsillagok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Kiknek az arcmását vésték az amerikai Rushmore-hegy oldalába?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'amerikai sportolók', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Kiknek az arcmását vésték az amerikai Rushmore-hegy oldalába?';
-- Q 407 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban látható a Laokoón-csoport szobor?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rómában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban látható a Laokoón-csoport szobor?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban látható a Laokoón-csoport szobor?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Athénban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban látható a Laokoón-csoport szobor?';
-- Q 408 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi van Kanada zászlaján?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'juharlevél', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi van Kanada zászlaján?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'csillag', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi van Kanada zászlaján?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nap', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi van Kanada zászlaján?';
-- Q 409 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat nincs Budapest címerében?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tigris', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen állat nincs Budapest címerében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'griffmadár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen állat nincs Budapest címerében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oroszlán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen állat nincs Budapest címerében?';
-- Q 410 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Zala község?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Somogy megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Zala község?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zala megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Zala község?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bács-Kiskun megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Zala község?';
COMMIT;
BEGIN;
-- Q 411 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Magyarország leghosszabb hídja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kőröshegyi völgyhíd', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarország leghosszabb hídja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'budapesti Megyeri-híd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarország leghosszabb hídja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pentele-híd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Magyarország leghosszabb hídja?';
-- Q 412 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki követte Károly Róbertet a trónon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. Nagy Lajos', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki követte Károly Róbertet a trónon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'II. Károly', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki követte Károly Róbertet a trónon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'I. Mátyás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki követte Károly Róbertet a trónon?';
-- Q 413 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Csontváry Múzeum?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécsen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Csontváry Múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sopronban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Csontváry Múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Debrecenben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Csontváry Múzeum?';
-- Q 414 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban látható a Sierra Nevada hegység?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban látható a Sierra Nevada hegység?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban látható a Sierra Nevada hegység?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban látható a Sierra Nevada hegység?';
-- Q 415 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem New York városrésze?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hollywood', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem New York városrésze?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brooklyn', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem New York városrésze?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Manhattan', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem New York városrésze?';
-- Q 416 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hanyadik kerület Ferencváros Budapesten?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IX.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hanyadik kerület Ferencváros Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XI.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hanyadik kerület Ferencváros Budapesten?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XXI.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hanyadik kerület Ferencváros Budapesten?';
-- Q 417 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor tört ki utoljára a Vezúv?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1944-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor tört ki utoljára a Vezúv?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1956-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor tört ki utoljára a Vezúv?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1987-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mikor tört ki utoljára a Vezúv?';
-- Q 418 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mik találhatók Madame Tussaud panoptikumában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'híres emberek viaszfigurái', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mik találhatók Madame Tussaud panoptikumában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'híres festők művei', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mik találhatók Madame Tussaud panoptikumában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kerámiák', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mik találhatók Madame Tussaud panoptikumában?';
-- Q 419 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország fennhatósága alatt áll Grönland?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dánia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fennhatósága alatt áll Grönland?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'USA', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fennhatósága alatt áll Grönland?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanada', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fennhatósága alatt áll Grönland?';
-- Q 420 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú az Erzsébet-híd?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '379 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú az Erzsébet-híd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '457 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú az Erzsébet-híd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '224 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú az Erzsébet-híd?';
COMMIT;
BEGIN;
-- Q 421 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen magas a pécsi tévétorony?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '197 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a pécsi tévétorony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '256 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a pécsi tévétorony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '289 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a pécsi tévétorony?';
-- Q 422 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik téren található Budapesten az Országház?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kossuth Lajos téren', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik téren található Budapesten az Országház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Liszt Ferenc téren', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik téren található Budapesten az Országház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bethlen Gábor téren', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik téren található Budapesten az Országház?';
-- Q 423 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik hegységben található az Ördögmalom-vízesés?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Visegrádi-hegységben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegységben található az Ördögmalom-vízesés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kőszegi-hegységben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegységben található az Ördögmalom-vízesés?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mátrában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegységben található az Ördögmalom-vízesés?';
-- Q 424 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Irán régi neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Perzsia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt Irán régi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Burma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt Irán régi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Abesszínia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt Irán régi neve?';
-- Q 425 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van Dubaj?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyesült Arab Emírségek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Dubaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szaúd-Arábia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Dubaj?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Irán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Dubaj?';
-- Q 426 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Makkoshotyka?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Borsod-Abaúj-Zemplén megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Makkoshotyka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szabolcs-Szatmár-Bereg megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Makkoshotyka?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hajdú-Bihar megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Makkoshotyka?';
-- Q 427 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik európai országban látható a heidelbergi várkastély?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik európai országban látható a heidelbergi várkastély?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztriában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik európai országban látható a heidelbergi várkastély?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svájcban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik európai országban látható a heidelbergi várkastély?';
-- Q 428 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Angola fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Luanda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Angola fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lusaka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Angola fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dodoma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Angola fővárosa?';
-- Q 429 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen madár látható Heves vármegye címerében?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'gólya', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen madár látható Heves vármegye címerében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'strucc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen madár látható Heves vármegye címerében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'fecske', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen madár látható Heves vármegye címerében?';
-- Q 430 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik balatoni település közelében van a Pántlika kastély?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonakali', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik balatoni település közelében van a Pántlika kastély?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonboglár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik balatoni település közelében van a Pántlika kastély?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonszárszó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik balatoni település közelében van a Pántlika kastély?';
COMMIT;
BEGIN;
-- Q 431 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Kovács Margit Múzeum?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szentendrén', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Kovács Margit Múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Visegrádon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Kovács Margit Múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pápán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Kovács Margit Múzeum?';
-- Q 432 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány dombra épült Róma?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hét', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány dombra épült Róma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány dombra épült Róma?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kilenc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány dombra épült Róma?';
-- Q 433 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem ázsiai ország?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tanzánia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem ázsiai ország?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pakisztán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem ázsiai ország?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nepál', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem ázsiai ország?';
-- Q 434 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a Grand Canyon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arizonában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Grand Canyon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Coloradoba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Grand Canyon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kaliforniába', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Grand Canyon?';
-- Q 435 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik európai fővárost nevezik "arany városnak"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Prágát', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik európai fővárost nevezik "arany városnak"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londont', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik európai fővárost nevezik "arany városnak"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brüsszelt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik európai fővárost nevezik "arany városnak"?';
-- Q 436 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Kömpöc?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bács-Kiskun megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Kömpöc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csongrád megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Kömpöc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zala megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Kömpöc?';
-- Q 437 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban van a Szent Márk-bazilika?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Velencében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Szent Márk-bazilika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rómában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Szent Márk-bazilika?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Firenzében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Szent Márk-bazilika?';
-- Q 438 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország fővárosa Havanna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kuba', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Havanna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jamaica', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Havanna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ecuador', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Havanna?';
-- Q 439 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Golden Gate híd?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'San Franciscóban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Golden Gate híd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Los Angelesben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Golden Gate híd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New Yorkban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Golden Gate híd?';
-- Q 440 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Nyúl nevű település?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Győr-Moson-Sopron megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Nyúl nevű település?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Somogy megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Nyúl nevű település?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nógrád megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Nyúl nevű település?';
COMMIT;
BEGIN;
-- Q 441 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik óceánban van a Húsvét-sziget?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csendes-óceánban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik óceánban van a Húsvét-sziget?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atlanti-óceánban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik óceánban van a Húsvét-sziget?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiai-óceánban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik óceánban van a Húsvét-sziget?';
-- Q 442 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány km-re fekszik Sopron Bécstől?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '60', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km-re fekszik Sopron Bécstől?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '120', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km-re fekszik Sopron Bécstől?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '80', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km-re fekszik Sopron Bécstől?';
-- Q 443 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány méter magas a Hármashatár-hegy?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '495 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter magas a Hármashatár-hegy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '675 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter magas a Hármashatár-hegy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '387 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány méter magas a Hármashatár-hegy?';
-- Q 444 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van Petra romvárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jordániában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Petra romvárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szaúd-Arábiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Petra romvárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Izraelben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Petra romvárosa?';
-- Q 445 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország a világ legnagyobb banánexportőre?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ecuador', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország a világ legnagyobb banánexportőre?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Argentína', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország a világ legnagyobb banánexportőre?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazília', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország a világ legnagyobb banánexportőre?';
-- Q 446 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország nem a Perzsa-öböl partján van?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyiptom', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem a Perzsa-öböl partján van?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szaúd-Arábia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem a Perzsa-öböl partján van?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Irak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem a Perzsa-öböl partján van?';
-- Q 447 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Sagrada Família, a Szent Család-templom?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Barcelonában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Sagrada Família, a Szent Család-templom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madridban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Sagrada Família, a Szent Család-templom?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sevillában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Sagrada Família, a Szent Család-templom?';
-- Q 448 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány kilométer hosszú a Balaton?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '77 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kilométer hosszú a Balaton?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '89 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kilométer hosszú a Balaton?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '120 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kilométer hosszú a Balaton?';
-- Q 449 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Brazília folyója?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Amazonas', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Brazília folyója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nílus', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Brazília folyója?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jangce', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik Brazília folyója?';
-- Q 450 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van Bali szigete?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indonéziában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Bali szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanadában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Bali szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Új-Zélandon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Bali szigete?';
COMMIT;
BEGIN;
-- Q 451 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Föld legmélyebb pontja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mariana-árok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Föld legmélyebb pontja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tonga-árok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Föld legmélyebb pontja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Japán-árok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Föld legmélyebb pontja?';
-- Q 452 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány emelete van az Empire State Buildingnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '102', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány emelete van az Empire State Buildingnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '87', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány emelete van az Empire State Buildingnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '93', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány emelete van az Empire State Buildingnek?';
-- Q 453 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van az Április 25. híd?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Portugáliában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van az Április 25. híd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van az Április 25. híd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dániában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van az Április 25. híd?';
-- Q 454 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van a Labrador félsziget?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanadában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Labrador félsziget?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'USA-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Labrador félsziget?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Labrador félsziget?';
-- Q 455 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban található az Ermitázs?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szentpéterváron', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban található az Ermitázs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban található az Ermitázs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Berlinben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban található az Ermitázs?';
-- Q 456 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt I. Szent István édesanyja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sarolt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki volt I. Szent István édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gizella', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki volt I. Szent István édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Réka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki volt I. Szent István édesanyja?';
-- Q 457 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik vármegye székhelye Miskolc?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Borsod-Abaúj-Zemplén vármegye', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye székhelye Miskolc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hajdú-Bihar vármegye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye székhelye Miskolc?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szabolcs-Szatmár-Bereg vármegye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye székhelye Miskolc?';
-- Q 458 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található Indiában a Tádzs Mahal?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Agrában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található Indiában a Tádzs Mahal?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Delhiben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található Indiában a Tádzs Mahal?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kalkuttában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található Indiában a Tádzs Mahal?';
-- Q 459 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Három-szurdok-gát?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kínában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Három-szurdok-gát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Japánban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Három-szurdok-gát?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Három-szurdok-gát?';
-- Q 460 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen magas a János-hegy?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '527 m', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a János-hegy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '346 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a János-hegy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '478 m', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen magas a János-hegy?';
COMMIT;
BEGIN;
-- Q 461 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik európai fővárosban van a Piccadilly Circus?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik európai fővárosban van a Piccadilly Circus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik európai fővárosban van a Piccadilly Circus?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madridban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik európai fővárosban van a Piccadilly Circus?';
-- Q 462 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem egy amerikai állam?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Denver', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem egy amerikai állam?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Montana', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem egy amerikai állam?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alaszka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem egy amerikai állam?';
-- Q 463 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország területén van Erdély?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Románia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország területén van Erdély?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csehország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország területén van Erdély?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ukrajna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország területén van Erdély?';
-- Q 464 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik állam nem tartozik az ABC államok közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afganisztán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik állam nem tartozik az ABC államok közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Chile', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik állam nem tartozik az ABC államok közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Brazília', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik állam nem tartozik az ABC államok közé?';
-- Q 465 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik folyó partján fekszik Bécs?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Duna', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó partján fekszik Bécs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tisza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó partján fekszik Bécs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dráva', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó partján fekszik Bécs?';
-- Q 466 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Balaton nevű település?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Heves megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Balaton nevű település?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Somogy megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Balaton nevű település?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vas megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Balaton nevű település?';
-- Q 467 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország fővárosa Bamako?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mali', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Bamako?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Paraguay', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Bamako?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kolumbia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fővárosa Bamako?';
-- Q 468 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban van a Déri múzeum?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Debrecenben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Déri múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Miskolcon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Déri múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szolnokon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Déri múzeum?';
-- Q 469 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország zászlaja nem három színből áll?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ukrajna', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország zászlaja nem három színből áll?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország zászlaja nem három színből áll?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hollandia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország zászlaja nem három színből áll?';
-- Q 470 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország városai Hannover és Düsseldorf?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország városai Hannover és Düsseldorf?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svájc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország városai Hannover és Düsseldorf?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztria', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország városai Hannover és Düsseldorf?';
COMMIT;
BEGIN;
-- Q 471 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van Mozart szülőháza?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Salzburgban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Mozart szülőháza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bécsben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Mozart szülőháza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Frankfurtban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Mozart szülőháza?';
-- Q 472 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki tervezte a Magyar Nemzeti Múzeumot?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pollack Mihály', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki tervezte a Magyar Nemzeti Múzeumot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ybl Miklós', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki tervezte a Magyar Nemzeti Múzeumot?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lechner Ödön', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki tervezte a Magyar Nemzeti Múzeumot?';
-- Q 473 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az Északi-sarkvidék neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arktisz', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi az Északi-sarkvidék neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Antarktisz', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi az Északi-sarkvidék neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Horn-fok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi az Északi-sarkvidék neve?';
-- Q 474 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a Szahara sivatag?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észak-Afrikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Szahara sivatag?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztráliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Szahara sivatag?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Szahara sivatag?';
-- Q 475 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország fekszik az Egyenlítő vonalán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ecuador', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fekszik az Egyenlítő vonalán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Peru', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fekszik az Egyenlítő vonalán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Venezuela', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország fekszik az Egyenlítő vonalán?';
-- Q 476 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban van a Horror Színház?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Esztergomban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Horror Színház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Budapesten', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Horror Színház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szarvason', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Horror Színház?';
-- Q 477 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az Egyesült Államok nemzeti állata?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fehérfejű rétisas', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi az Egyesült Államok nemzeti állata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oroszlán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi az Egyesült Államok nemzeti állata?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Főnix', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi az Egyesült Államok nemzeti állata?';
-- Q 478 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország a legnagyobb burgonyafogyasztó a világon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kína', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország a legnagyobb burgonyafogyasztó a világon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oroszország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország a legnagyobb burgonyafogyasztó a világon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'USA', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország a legnagyobb burgonyafogyasztó a világon?';
-- Q 479 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik vármegye székhelye Szeged?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csongrád vármegye', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye székhelye Szeged?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Heves vármegye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye székhelye Szeged?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Békés vármegye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik vármegye székhelye Szeged?';
-- Q 480 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve a szegedi múzeumnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Móra Ferenc', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve a szegedi múzeumnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'József Attila', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve a szegedi múzeumnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vörösmarty Mihály', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve a szegedi múzeumnak?';
COMMIT;
BEGIN;
-- Q 481 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország nem szomszédos Svájccal?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Norvégia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem szomszédos Svájccal?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem szomszédos Svájccal?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztria', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem szomszédos Svájccal?';
-- Q 482 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben csatlakozott Magyarország az Európai Unióhoz?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2004-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik évben csatlakozott Magyarország az Európai Unióhoz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2008-ban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik évben csatlakozott Magyarország az Európai Unióhoz?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2002-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik évben csatlakozott Magyarország az Európai Unióhoz?';
-- Q 483 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban látható a Petronas-ikertorony?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kuala Lumpurban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban látható a Petronas-ikertorony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Katmanduban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban látható a Petronas-ikertorony?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Damaszkuszban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban látható a Petronas-ikertorony?';
-- Q 484 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik két óceánt köti össze a Drake-átjáró?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atlanti és Csendes', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két óceánt köti össze a Drake-átjáró?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csendes és Indiai', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két óceánt köti össze a Drake-átjáró?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiai és Atlanti', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két óceánt köti össze a Drake-átjáró?';
-- Q 485 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Argentína hivatalos nyelve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'spanyol', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Argentína hivatalos nyelve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Argentína hivatalos nyelve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'francia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Argentína hivatalos nyelve?';
-- Q 486 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van a kölni dóm?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a kölni dóm?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztriában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a kölni dóm?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svájcban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a kölni dóm?';
-- Q 487 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Ázsia legmagasabb csúcsa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mount Everest', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Ázsia legmagasabb csúcsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kilimandzsáró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Ázsia legmagasabb csúcsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aconcagua', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Ázsia legmagasabb csúcsa?';
-- Q 488 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem Balaton-parti település?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Demjén', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem Balaton-parti település?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vonyarcvarshegy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem Balaton-parti település?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csopak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem Balaton-parti település?';
-- Q 489 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Mongólia fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ulánbátor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Mongólia fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kijev', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Mongólia fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dakar', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Mongólia fővárosa?';
-- Q 490 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinensen van Etiópia?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen van Etiópia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen van Etiópia?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen van Etiópia?';
COMMIT;
BEGIN;
-- Q 491 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen szín nincs Csehország zászlajában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'zöld', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen szín nincs Csehország zászlajában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen szín nincs Csehország zászlajában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'piros', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen szín nincs Csehország zászlajában?';
-- Q 492 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a Rushmore-hegy?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'USA-ban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Rushmore-hegy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Angliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Rushmore-hegy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanadában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Rushmore-hegy?';
-- Q 493 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen állat látható Pest-vármegye címerében?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oroszlán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen állat látható Pest-vármegye címerében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'tigris', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen állat látható Pest-vármegye címerében?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'medve', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen állat látható Pest-vármegye címerében?';
-- Q 494 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány km a Mississippi folyó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4070 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km a Mississippi folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '1200 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km a Mississippi folyó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6700 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány km a Mississippi folyó?';
-- Q 495 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a Föld 3. legnagyobb szigete?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Borneó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld 3. legnagyobb szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Madagaszkár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld 3. legnagyobb szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szumátra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld 3. legnagyobb szigete?';
-- Q 496 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van Kalotaszeg?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Romániában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Kalotaszeg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztriában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Kalotaszeg?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovákiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Kalotaszeg?';
-- Q 497 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban van Katona József Színház?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kecskeméten', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van Katona József Színház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szombathelyen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van Katona József Színház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Debrecenben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van Katona József Színház?';
-- Q 498 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország nem tartozik a Benelux államok közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svédország', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem tartozik a Benelux államok közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Belgium', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem tartozik a Benelux államok közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hollandia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem tartozik a Benelux államok közé?';
-- Q 499 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Isztambul régi neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Konstantinápoly', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt Isztambul régi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Aquincum‎', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt Isztambul régi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Colonia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi volt Isztambul régi neve?';
-- Q 500 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van Rotterdam?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hollandiában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Rotterdam?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Rotterdam?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Belgiumban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Rotterdam?';
COMMIT;
BEGIN;
-- Q 501 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Egyiptom fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kairó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Egyiptom fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tripoli', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Egyiptom fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Luxor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Egyiptom fővárosa?';
-- Q 502 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van a Gyilkos-tó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Romániában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Gyilkos-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztriában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Gyilkos-tó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ukrajnában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Gyilkos-tó?';
-- Q 503 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy hurrikán neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Katrina', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik egy hurrikán neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Katinka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik egy hurrikán neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Katóka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik egy hurrikán neve?';
-- Q 504 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik város történelmi negyede a Hradzsin?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Prága', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város történelmi negyede a Hradzsin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város történelmi negyede a Hradzsin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Isztambul', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város történelmi negyede a Hradzsin?';
-- Q 505 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kontinensen helyezkedik el Botswana?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen helyezkedik el Botswana?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen helyezkedik el Botswana?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél- Amerikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kontinensen helyezkedik el Botswana?';
-- Q 506 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Horvátország fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zágráb', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Horvátország fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Belgrád', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Horvátország fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Podgorica', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Horvátország fővárosa?';
-- Q 507 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik két kontinens között helyezkedik el a Vörös-tenger?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrika és Ázsia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két kontinens között helyezkedik el a Vörös-tenger?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Európa és Ázsia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két kontinens között helyezkedik el a Vörös-tenger?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerika és Afrika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két kontinens között helyezkedik el a Vörös-tenger?';
-- Q 508 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mik állnak a budapesti Memento Parkban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szobrok', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mik állnak a budapesti Memento Parkban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jurták', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mik állnak a budapesti Memento Parkban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szökőkutak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mik állnak a budapesti Memento Parkban?';
-- Q 509 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik állam nem tartozik az USA alapító államai közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Texas', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik állam nem tartozik az USA alapító államai közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New York', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik állam nem tartozik az USA alapító államai közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New Jersey', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik állam nem tartozik az USA alapító államai közé?';
-- Q 510 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a legnagyobb területű megyénk?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bács-Kiskun vármegye', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a legnagyobb területű megyénk?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Borsod-Abaúj-Zemplén vármegye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a legnagyobb területű megyénk?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szabolcs-Szatmár-Bereg vármegye', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a legnagyobb területű megyénk?';
COMMIT;
BEGIN;
-- Q 511 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nemzeti park nem létezik?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Duna-Tisza Nemzeti Park', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nemzeti park nem létezik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Duna–Dráva Nemzeti Park', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nemzeti park nem létezik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Körös–Maros Nemzeti Park', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nemzeti park nem létezik?';
-- Q 512 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Lakitelek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bács-Kiskun megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Lakitelek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Baranya megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Lakitelek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Békés megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Lakitelek?';
-- Q 513 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országon nem folyik keresztül a Tisza?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovénia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országon nem folyik keresztül a Tisza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Románia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országon nem folyik keresztül a Tisza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ukrajna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országon nem folyik keresztül a Tisza?';
-- Q 514 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Budapest melyik terén van az óriáskerék?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Erzsébet téren', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest melyik terén van az óriáskerék?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Deák Ferenc téren', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest melyik terén van az óriáskerék?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hősök terén', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest melyik terén van az óriáskerék?';
-- Q 515 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városban van a Brooklyn híd?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New Yorkban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Brooklyn híd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Brooklyn híd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városban van a Brooklyn híd?';
-- Q 516 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik borvidék nem létezik?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonföldvári borvidék', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik borvidék nem létezik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bükki borvidék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik borvidék nem létezik?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szekszárdi borvidék', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik borvidék nem létezik?';
-- Q 517 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik folyó két partján fekszik Bécs?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Duna', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó két partján fekszik Bécs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tisza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó két partján fekszik Bécs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rajna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó két partján fekszik Bécs?';
-- Q 518 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Hagia Szophia székesegyház?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Isztambulban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Hagia Szophia székesegyház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rómában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Hagia Szophia székesegyház?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Athénban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Hagia Szophia székesegyház?';
-- Q 519 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik kastély látható Nagycenken?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Széchenyi-kastély', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kastély látható Nagycenken?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Esterházy-kastély', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kastély látható Nagycenken?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Grassalkovich-kastély', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik kastély látható Nagycenken?';
-- Q 520 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van a Kilimandzsáró?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tanzániában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Kilimandzsáró?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kenyában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Kilimandzsáró?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Etiópiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Kilimandzsáró?';
COMMIT;
BEGIN;
-- Q 521 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik szélességi kör osztja ketté Mexikót?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ráktérítő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szélességi kör osztja ketté Mexikót?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Baktérítő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szélességi kör osztja ketté Mexikót?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyenlítő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szélességi kör osztja ketté Mexikót?';
-- Q 522 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Jelenleg hány tagállama van az Európai Uniónak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '28', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Jelenleg hány tagállama van az Európai Uniónak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '33', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Jelenleg hány tagállama van az Európai Uniónak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '21', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Jelenleg hány tagállama van az Európai Uniónak?';
-- Q 523 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van a Zöld-fok?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Zöld-fok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Zöld-fok?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dél-Amerikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Zöld-fok?';
-- Q 524 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városba jutunk ha az M6-os autópályán megyünk Budapestről?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécsre', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városba jutunk ha az M6-os autópályán megyünk Budapestről?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szegedre', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városba jutunk ha az M6-os autópályán megyünk Budapestről?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Debrecenbe', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városba jutunk ha az M6-os autópályán megyünk Budapestről?';
-- Q 525 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik egy létező település?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szalonna', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik egy létező település?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hagyma', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik egy létező település?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kolbász', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik egy létező település?';
-- Q 526 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Budapest hanyadik kerülete Csepel?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XXI.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest hanyadik kerülete Csepel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XX.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest hanyadik kerülete Csepel?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XIV.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest hanyadik kerülete Csepel?';
-- Q 527 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány kerülete van New Yorknak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kerülete van New Yorknak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kilenc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kerülete van New Yorknak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hét', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hány kerülete van New Yorknak?';
-- Q 528 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban található Leszbosz szigete?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Görögországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban található Leszbosz szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban található Leszbosz szigete?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Törökországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban található Leszbosz szigete?';
-- Q 529 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik nem megyei jogú város?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balmazújváros', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem megyei jogú város?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Érd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem megyei jogú város?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagykanizsa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik nem megyei jogú város?';
-- Q 530 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Megközelítőleg hány éves a világ legidősebb fája a "Matuzsálem fa"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4800', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Megközelítőleg hány éves a világ legidősebb fája a "Matuzsálem fa"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6700', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Megközelítőleg hány éves a világ legidősebb fája a "Matuzsálem fa"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10600', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Megközelítőleg hány éves a világ legidősebb fája a "Matuzsálem fa"?';
COMMIT;
BEGIN;
-- Q 531 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Miről kapta nevét Kambodzsa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy fáról', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Miről kapta nevét Kambodzsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy folyóról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Miről kapta nevét Kambodzsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy állatfajról', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Miről kapta nevét Kambodzsa?';
-- Q 532 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országgal határos egyedül Monaco?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Franciaországgal', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országgal határos egyedül Monaco?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Spanyolországgal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országgal határos egyedül Monaco?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olaszországgal', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országgal határos egyedül Monaco?';
-- Q 533 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik hegységben van a Prédikálószék?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Visegrádi-hegység', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegységben van a Prédikálószék?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Villányi-hegység‎', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegységben van a Prédikálószék?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mátra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegységben van a Prédikálószék?';
-- Q 534 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országhoz van legközelebb a Seychelle-szigetek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szomáliához', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz van legközelebb a Seychelle-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Etiópiához', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz van legközelebb a Seychelle-szigetek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kenyához', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országhoz van legközelebb a Seychelle-szigetek?';
-- Q 535 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik község része Dobogó-kő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pilisszentkereszt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik község része Dobogó-kő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pilisszántó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik község része Dobogó-kő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pilisszentlélek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik község része Dobogó-kő?';
-- Q 536 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik folyó mellékfolyója a Szamos?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tisza', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó mellékfolyója a Szamos?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Duna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó mellékfolyója a Szamos?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dráva', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik folyó mellékfolyója a Szamos?';
-- Q 537 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van Kézdivásárhely és Sepsiszentgyörgy?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Erdélyben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Kézdivásárhely és Sepsiszentgyörgy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kárpátalján', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Kézdivásárhely és Sepsiszentgyörgy?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vajdaságban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Kézdivásárhely és Sepsiszentgyörgy?';
-- Q 538 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol hullik a Földön a legkevesebb csapadék?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Antarktiszon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol hullik a Földön a legkevesebb csapadék?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szaharában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol hullik a Földön a legkevesebb csapadék?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztráliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol hullik a Földön a legkevesebb csapadék?';
-- Q 539 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van Magyarországon a Csillagvár?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonszentgyörgynél', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Magyarországon a Csillagvár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dombóváron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Magyarországon a Csillagvár?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Esztergomban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Magyarországon a Csillagvár?';
-- Q 540 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a Wembley Stadion?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Wembley Stadion?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Barcelonában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Wembley Stadion?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Milánóban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Wembley Stadion?';
COMMIT;
BEGIN;
-- Q 541 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik amerikai elnök arcmása nincs a Rushmore-hegy oldalába vésve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Richard Nixon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai elnök arcmása nincs a Rushmore-hegy oldalába vésve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George Washington', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai elnök arcmása nincs a Rushmore-hegy oldalába vésve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Thomas Jefferson', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik amerikai elnök arcmása nincs a Rushmore-hegy oldalába vésve?';
-- Q 542 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik hegység része Drégely vára?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Börzsöny', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegység része Drégely vára?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bakony', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegység része Drégely vára?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cserhát', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik hegység része Drégely vára?';
-- Q 543 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városhoz van legközelebb Kópháza?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sopron', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városhoz van legközelebb Kópháza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szeged', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városhoz van legközelebb Kópháza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Miskolc', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városhoz van legközelebb Kópháza?';
-- Q 544 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van Szászország?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Németországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Szászország?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztriában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Szászország?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svájcban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van Szászország?';
-- Q 545 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik tenger beltengere a Ligur-tenger?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Földközi-tenger', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger beltengere a Ligur-tenger?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fekete-tenger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger beltengere a Ligur-tenger?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Azovi-tenger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik tenger beltengere a Ligur-tenger?';
-- Q 546 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Sziklás-hegység(Rocky Mountains)?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észak-Amerikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Sziklás-hegység(Rocky Mountains)?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Sziklás-hegység(Rocky Mountains)?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Sziklás-hegység(Rocky Mountains)?';
-- Q 547 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve Velence leghíresebb hídjának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sóhajok hídja', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve Velence leghíresebb hídjának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vágyaink hídja', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve Velence leghíresebb hídjának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Remények hídja', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a neve Velence leghíresebb hídjának?';
-- Q 548 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Venezuela fővárosa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Caracas', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Venezuela fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hanoi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Venezuela fővárosa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bangkok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Venezuela fővárosa?';
-- Q 549 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a Pitti-palota?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Firenzében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Pitti-palota?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bécsben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Pitti-palota?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Párizsban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Pitti-palota?';
-- Q 550 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Egerszalók?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Heves megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Egerszalók?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vas megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Egerszalók?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Békés megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Egerszalók?';
COMMIT;
BEGIN;
-- Q 551 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik fővárost szokták úgy emlegetni mint "a harmadik Róma"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Moszkvát', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik fővárost szokták úgy emlegetni mint "a harmadik Róma"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kijevet', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik fővárost szokták úgy emlegetni mint "a harmadik Róma"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pekinget', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik fővárost szokták úgy emlegetni mint "a harmadik Róma"?';
-- Q 552 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Csomolungma hegység nevének a jelentése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"a Föld istenasszonya"', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Csomolungma hegység nevének a jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"a hó hazája"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Csomolungma hegység nevének a jelentése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '"mennyei hegység"', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Csomolungma hegység nevének a jelentése?';
-- Q 553 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a "Királyok völgye"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyiptomban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a "Királyok völgye"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Algériában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a "Királyok völgye"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a "Királyok völgye"?';
-- Q 554 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Budapest hanyadik kerülete Zugló?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XIV.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest hanyadik kerülete Zugló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'IX.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest hanyadik kerülete Zugló?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'XVII.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Budapest hanyadik kerülete Zugló?';
-- Q 555 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a Téli Palota?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szentpétervárott', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Téli Palota?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Moszkvában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Téli Palota?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Londonban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Téli Palota?';
-- Q 556 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol található a Bikini-atoll?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csendes-óceánon', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Bikini-atoll?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Atlanti-óceánon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Bikini-atoll?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Indiai-óceánon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol található a Bikini-atoll?';
-- Q 557 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol van a Takla-Makán sivatag?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kínában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Takla-Makán sivatag?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Líbiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Takla-Makán sivatag?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyiptomban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol van a Takla-Makán sivatag?';
-- Q 558 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen épület a "Shanghai Tower" Kínában?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'felhőkarcoló', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen épület a "Shanghai Tower" Kínában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'múzeum', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen épület a "Shanghai Tower" Kínában?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'országház', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen épület a "Shanghai Tower" Kínában?';
-- Q 559 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik szigeten született Bonaparte Napóleon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Korzika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szigeten született Bonaparte Napóleon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szicília', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szigeten született Bonaparte Napóleon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szardínia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik szigeten született Bonaparte Napóleon?';
-- Q 560 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Sonora-sivatag?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Észak-Amerikában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Sonora-sivatag?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Afrikában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Sonora-sivatag?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ázsiában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Sonora-sivatag?';
COMMIT;
BEGIN;
-- Q 561 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Budavári Sikló két kocsijának a neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Margit és Gellért', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Budavári Sikló két kocsijának a neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mária és János', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Budavári Sikló két kocsijának a neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mónika és Lajos', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Budavári Sikló két kocsijának a neve?';
-- Q 562 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik ország nem Jugoszlávia utódállama?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovákia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem Jugoszlávia utódállama?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovénia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem Jugoszlávia utódállama?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Montenegró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik ország nem Jugoszlávia utódállama?';
-- Q 563 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki találta meg a holt-tengeri tekercsek első darabjait?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'beduin kecskepásztor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki találta meg a holt-tengeri tekercsek első darabjait?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mór juhász', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki találta meg a holt-tengeri tekercsek első darabjait?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szaracén kádár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki találta meg a holt-tengeri tekercsek első darabjait?';
-- Q 564 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen hosszú a Csalagút?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50.5 km', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Csalagút?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '60.7 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Csalagút?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '105 km', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen hosszú a Csalagút?';
-- Q 565 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Honnan indul a János-hegyre a budapesti Libegő?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zugligetből', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Honnan indul a János-hegyre a budapesti Libegő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zuglóból', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Honnan indul a János-hegyre a budapesti Libegő?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kispestről', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Honnan indul a János-hegyre a budapesti Libegő?';
-- Q 566 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Algéria hivatalos nyelve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'arab', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Algéria hivatalos nyelve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hindi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Algéria hivatalos nyelve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi Algéria hivatalos nyelve?';
-- Q 567 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van a Delta Works nevű gátrendszer?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hollandiában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Delta Works nevű gátrendszer?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dániában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Delta Works nevű gátrendszer?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Svédországban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van a Delta Works nevű gátrendszer?';
-- Q 568 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik város régi neve volt Oradea?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagyvárad', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város régi neve volt Oradea?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kolozsvár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város régi neve volt Oradea?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagyszeben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik város régi neve volt Oradea?';
-- Q 569 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Balassagyarmat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nógrád megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Balassagyarmat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Heves megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Balassagyarmat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Fejér megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Balassagyarmat?';
-- Q 570 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki a rendezője a Terminátor c. filmnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'James Cameron', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki a rendezője a Terminátor c. filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Steven Spielberg', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki a rendezője a Terminátor c. filmnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George Lucas', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Ki a rendezője a Terminátor c. filmnek?';
COMMIT;
BEGIN;
-- Q 571 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható a Cifrapalota?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kecskeméten', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Cifrapalota?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szolnokon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Cifrapalota?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nyíregyházán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható a Cifrapalota?';
-- Q 572 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen otthon van Veresegyházán?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'medve', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen otthon van Veresegyházán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'oroszlán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen otthon van Veresegyházán?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'majom', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Milyen otthon van Veresegyházán?';
-- Q 573 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik két település között fut a Kőröshegyi völgyhíd?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zamárdi és Balatonszárszó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két település között fut a Kőröshegyi völgyhíd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Siófok és Balatonfüred', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két település között fut a Kőröshegyi völgyhíd?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szántód és Balatonföldvár', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik két település között fut a Kőröshegyi völgyhíd?';
-- Q 574 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik városunkban található a Munkácsy Mihály Múzeum?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Békéscsaba', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városunkban található a Munkácsy Mihály Múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécs', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városunkban található a Munkácsy Mihály Múzeum?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eger', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik városunkban található a Munkácsy Mihály Múzeum?';
-- Q 575 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Az alábbiak közül melyik országon halad át a Tisza?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerbia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Az alábbiak közül melyik országon halad át a Tisza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ausztria', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Az alábbiak közül melyik országon halad át a Tisza?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lengyelország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Az alábbiak közül melyik országon halad át a Tisza?';
-- Q 576 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik államban van Beverly Hills?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kaliforniában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik államban van Beverly Hills?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Arizonában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik államban van Beverly Hills?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Texasban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik államban van Beverly Hills?';
-- Q 577 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik megyében van Csanádpalota?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csongrád megyében', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Csanádpalota?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Békés megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Csanádpalota?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Somogy megyében', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik megyében van Csanádpalota?';
-- Q 578 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országba jutunk ha Letenyénél szeretnénk átkelni a határon?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Horvátországba', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országba jutunk ha Letenyénél szeretnénk átkelni a határon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szerbiába', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országba jutunk ha Letenyénél szeretnénk átkelni a határon?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ukrajnába', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országba jutunk ha Letenyénél szeretnénk átkelni a határon?';
-- Q 579 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a Szent Jakab-út másik elnevezése?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'El Caminó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Szent Jakab-út másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Al Bambinó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Szent Jakab-út másik elnevezése?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'El Diego', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Mi a Szent Jakab-út másik elnevezése?';
-- Q 580 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik országban van Besztercebánya és Nagyszombat?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovákiában', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Besztercebánya és Nagyszombat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szlovéniában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Besztercebánya és Nagyszombat?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Romániában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik országban van Besztercebánya és Nagyszombat?';
COMMIT;
BEGIN;
-- Q 581 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik a Föld második legnépesebb országa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'India', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld második legnépesebb országa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oroszország', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld második legnépesebb országa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kína', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Melyik a Föld második legnépesebb országa?';
-- Q 582 in foldrajz
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol látható Pamukkale, a ritka természeti képződmény?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Törökországban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható Pamukkale, a ritka természeti képződmény?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bulgáriában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható Pamukkale, a ritka természeti képződmény?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egyiptomban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='foldrajz' AND q.text='Hol látható Pamukkale, a ritka természeti képződmény?';
COMMIT;
