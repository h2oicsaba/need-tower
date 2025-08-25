-- import_hu_bulvar.sql (generated)
INSERT INTO languages (code, name) VALUES ('hu','Magyar') ON CONFLICT (code) DO NOTHING;
-- Topic: bulvar
INSERT INTO topics (language_id, name_hu, name_translated, slug)
SELECT l.id, 'bulvár', 'bulvár', 'bulvar'
FROM languages l WHERE l.code='hu'
ON CONFLICT (slug) DO NOTHING;
BEGIN;
-- Q 1 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Szandi férje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bogdán Csaba', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Szandi férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Berkes Gábor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Szandi férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kisszabó Gábor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Szandi férje?';
-- Q 2 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki lett Magyarország Szépe 2016-ban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Késmárki Enikő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki lett Magyarország Szépe 2016-ban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oczella Eszter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki lett Magyarország Szépe 2016-ban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gelencsér Tímea', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki lett Magyarország Szépe 2016-ban?';
-- Q 3 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki lett az Anna-bál szépe 2016-ban?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gorosics Csenge', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki lett az Anna-bál szépe 2016-ban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kriveczky Villő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki lett az Anna-bál szépe 2016-ban?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Káplár Fanni', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki lett az Anna-bál szépe 2016-ban?';
-- Q 4 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol került megrendezésre az Anna-bál?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonfüreden', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol került megrendezésre az Anna-bál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonföldváron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol került megrendezésre az Anna-bál?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balatonbogláron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol került megrendezésre az Anna-bál?';
-- Q 5 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mikor került megrendezésre a Miss Balaton 2016?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'augusztus 6-án', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mikor került megrendezésre a Miss Balaton 2016?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'augusztus 1-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mikor került megrendezésre a Miss Balaton 2016?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'július 22-én', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mikor került megrendezésre a Miss Balaton 2016?';
-- Q 6 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Madonna első férje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Guy Ritchie', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Madonna első férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sean Penn', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Madonna első férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Carlos Leon', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Madonna első férje?';
-- Q 7 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik énekesnő keresztanyja Aretha Franklin?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Whitney Houston', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik énekesnő keresztanyja Aretha Franklin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alicia Keys', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik énekesnő keresztanyja Aretha Franklin?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mariah Carey', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik énekesnő keresztanyja Aretha Franklin?';
-- Q 8 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány éves most Tina Turner?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '77', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány éves most Tina Turner?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '76', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány éves most Tina Turner?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '66', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány éves most Tina Turner?';
-- Q 9 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hányadik életévét töltötte be 2016-ban Koncz Zsuzsa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '70.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hányadik életévét töltötte be 2016-ban Koncz Zsuzsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '60.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hányadik életévét töltötte be 2016-ban Koncz Zsuzsa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '65.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hányadik életévét töltötte be 2016-ban Koncz Zsuzsa?';
-- Q 10 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik állam nem tartozik az Amerikai Egyesült Államok alapító államai közé?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Virginia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik állam nem tartozik az Amerikai Egyesült Államok alapító államai közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'New York', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik állam nem tartozik az Amerikai Egyesült Államok alapító államai közé?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kalifornia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik állam nem tartozik az Amerikai Egyesült Államok alapító államai közé?';
COMMIT;
BEGIN;
-- Q 11 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Vilmos herceg felesége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kate Middleton', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Vilmos herceg felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Philippa Middleton', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Vilmos herceg felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Elizabeth Middleton', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Vilmos herceg felesége?';
-- Q 12 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Kaszás Attila első felesége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eszenyi Enikő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Kaszás Attila első felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balázsovits Edit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Kaszás Attila első felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ónodi Eszter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Kaszás Attila első felesége?';
-- Q 13 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a neve Szinetár Dóra apjának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szinetár Miklós', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a neve Szinetár Dóra apjának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szinetár Gábor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a neve Szinetár Dóra apjának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szinetár Zoltán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a neve Szinetár Dóra apjának?';
-- Q 14 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színésznővel nem volt kapcsolata Ben Afflecknek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gwyneth Paltrow', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik színésznővel nem volt kapcsolata Ben Afflecknek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jennifer Aniston', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik színésznővel nem volt kapcsolata Ben Afflecknek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jennifer Garner', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik színésznővel nem volt kapcsolata Ben Afflecknek?';
-- Q 15 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke van Sylvester Stallone-nak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Sylvester Stallone-nak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Sylvester Stallone-nak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Sylvester Stallone-nak?';
-- Q 16 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Petőfi Sándor felesége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szendrey Júlia', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Petőfi Sándor felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ercsey Julianna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Petőfi Sándor felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Boncza Berta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Petőfi Sándor felesége?';
-- Q 17 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Zséda gyermekének a neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nimród', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Zséda gyermekének a neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bence', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Zséda gyermekének a neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kristóf', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Zséda gyermekének a neve?';
-- Q 18 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik X faktor győztes született szeptember 1-én?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kocsis Tibor', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik X faktor győztes született szeptember 1-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Oláh Gergő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik X faktor győztes született szeptember 1-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Danics Dóra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik X faktor győztes született szeptember 1-én?';
-- Q 19 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Zoltán Erika férje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robby D.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Zoltán Erika férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bobby D.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Zoltán Erika férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robby C.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Zoltán Erika férje?';
-- Q 20 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol született Freddie Mercury?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zanzibárban', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol született Freddie Mercury?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kenyában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol született Freddie Mercury?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mongóliában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol született Freddie Mercury?';
COMMIT;
BEGIN;
-- Q 21 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Rodolfó polgári neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gács Rezső', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi volt Rodolfó polgári neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csákányi Rezső', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi volt Rodolfó polgári neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gácser Róbert', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi volt Rodolfó polgári neve?';
-- Q 22 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Markos Józsefnek mi volt a művészneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alfonzó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Markos Józsefnek mi volt a művészneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Olfonzó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Markos Józsefnek mi volt a művészneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Elfonzó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Markos Józsefnek mi volt a művészneve?';
-- Q 23 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Kivel nem volt kapcsolatban Julia Roberts?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bard Pitt', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Kivel nem volt kapcsolatban Julia Roberts?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kiefer Sutherland', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Kivel nem volt kapcsolatban Julia Roberts?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Richard Gere', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Kivel nem volt kapcsolatban Julia Roberts?';
-- Q 24 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol született Keresztes Ildikó?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Marosvásárhelyen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol született Keresztes Ildikó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kolozsváron', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol született Keresztes Ildikó?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagyszebenben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol született Keresztes Ildikó?';
-- Q 25 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a második neve Sebestyén Balázsnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ottó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a második neve Sebestyén Balázsnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Géza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a második neve Sebestyén Balázsnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Imre', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a második neve Sebestyén Balázsnak?';
-- Q 26 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Csepregi Éva fiának a keresztneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dávid', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Csepregi Éva fiának a keresztneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ádám', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Csepregi Éva fiának a keresztneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kristóf', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Csepregi Éva fiának a keresztneve?';
-- Q 27 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a végzettsége Adam Sandlernek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bölcsész', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a végzettsége Adam Sandlernek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'vegyész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a végzettsége Adam Sandlernek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jogász', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a végzettsége Adam Sandlernek?';
-- Q 28 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Catherine Zeta-Jones házastársa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Michael Douglas', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Catherine Zeta-Jones házastársa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robert De Niro', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Catherine Zeta-Jones házastársa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George Clooney', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Catherine Zeta-Jones házastársa?';
-- Q 29 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi az eredeti keresztneve Benny Hillnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alfred', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi az eredeti keresztneve Benny Hillnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Adam', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi az eredeti keresztneve Benny Hillnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Benjamin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi az eredeti keresztneve Benny Hillnek?';
-- Q 30 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a keresztneve Dr. House-nak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gregory', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a keresztneve Dr. House-nak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Peter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a keresztneve Dr. House-nak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'James', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a keresztneve Dr. House-nak?';
COMMIT;
BEGIN;
-- Q 31 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Oláh Gergő, szintén énekes unokatestvére?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Radics Gigi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Oláh Gergő, szintén énekes unokatestvére?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Danics Dóra', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Oláh Gergő, szintén énekes unokatestvére?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Rúzsa Magdi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Oláh Gergő, szintén énekes unokatestvére?';
-- Q 32 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Kiki, az Első Emelet frontemberének eredeti neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Patkó Béla', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Kiki, az Első Emelet frontemberének eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kovács Zoltán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Kiki, az Első Emelet frontemberének eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Patkó László', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Kiki, az Első Emelet frontemberének eredeti neve?';
-- Q 33 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Minek tanult Kiki?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'autószerelőnek', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Minek tanult Kiki?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'géplakatosnak', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Minek tanult Kiki?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'péknek', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Minek tanult Kiki?';
-- Q 34 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen diplomája van Hajós Andrásnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'szociológiai', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen diplomája van Hajós Andrásnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'jogi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen diplomája van Hajós Andrásnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'orvosi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen diplomája van Hajós Andrásnak?';
-- Q 35 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Pásztor Anna édesapja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bereményi Géza', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Pásztor Anna édesapja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cserhalmi György', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Pásztor Anna édesapja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cseh Tamás', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Pásztor Anna édesapja?';
-- Q 36 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Koltai Róbert felesége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pogány Judit', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Koltai Róbert felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eszergályos Cecília', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Koltai Róbert felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Básti Juli', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Koltai Róbert felesége?';
-- Q 37 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Osvárt Andrea színésznő beceneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Andu', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Osvárt Andrea színésznő beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Andri', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Osvárt Andrea színésznő beceneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Andelku', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Osvárt Andrea színésznő beceneve?';
-- Q 38 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Jordán Tamás színművész lánya?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jordán Adél', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Jordán Tamás színművész lánya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jordán Krisztina', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Jordán Tamás színművész lánya?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jordán Anett', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Jordán Tamás színművész lánya?';
-- Q 39 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik Tv-filmben nem szerepelt Ábel Anita?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Angyalbőrben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik Tv-filmben nem szerepelt Ábel Anita?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Linda', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik Tv-filmben nem szerepelt Ábel Anita?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szomszédok', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik Tv-filmben nem szerepelt Ábel Anita?';
-- Q 40 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik külföldi színész állandó magyar hangja Kern András?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Woody Allen', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik külföldi színész állandó magyar hangja Kern András?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Robert de Niro', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik külföldi színész állandó magyar hangja Kern András?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nicolas Cage', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik külföldi színész állandó magyar hangja Kern András?';
COMMIT;
BEGIN;
-- Q 41 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt Bodrogi Gyula első felesége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Törőcsik Mari', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Bodrogi Gyula első felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Voith Ági', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Bodrogi Gyula első felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csala Zsuzsa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt Bodrogi Gyula első felesége?';
-- Q 42 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Ambrus Kyri táncdalénekesnő eredeti keresztneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Margit', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi volt Ambrus Kyri táncdalénekesnő eredeti keresztneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mária', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi volt Ambrus Kyri táncdalénekesnő eredeti keresztneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Borbála', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi volt Ambrus Kyri táncdalénekesnő eredeti keresztneve?';
-- Q 43 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'A Megasztár hanyadik szériájának volt Caramel a győztese?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'második', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='A Megasztár hanyadik szériájának volt Caramel a győztese?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'harmadik', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='A Megasztár hanyadik szériájának volt Caramel a győztese?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ötödik', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='A Megasztár hanyadik szériájának volt Caramel a győztese?';
-- Q 44 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Pély Barna felesége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Galambos Dorina', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Pély Barna felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kozma Orsolya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Pély Barna felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dér Heni', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Pély Barna felesége?';
-- Q 45 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Judy, a Groovehouse együttes énekesének születési neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kis Judit', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Judy, a Groovehouse együttes énekesének születési neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagy Judit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Judy, a Groovehouse együttes énekesének születési neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kis Júlia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Judy, a Groovehouse együttes énekesének születési neve?';
-- Q 46 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány testvére van Soma Mamagésának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány testvére van Soma Mamagésának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány testvére van Soma Mamagésának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány testvére van Soma Mamagésának?';
-- Q 47 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Hegyi Barbara színésznő férje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sztevanovity Zorán', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Hegyi Barbara színésznő férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tordy Géza', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Hegyi Barbara színésznő férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bródy János', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Hegyi Barbara színésznő férje?';
-- Q 48 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évig élt házasságban Jennifer Aniston és Brad Pitt ?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány évig élt házasságban Jennifer Aniston és Brad Pitt ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '10', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány évig élt házasságban Jennifer Aniston és Brad Pitt ?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '8', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány évig élt házasságban Jennifer Aniston és Brad Pitt ?';
-- Q 49 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem volt Johnny Depp élettársa?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gwyneth Paltrow', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki nem volt Johnny Depp élettársa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Winona Ryder', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki nem volt Johnny Depp élettársa?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vanessa Paradis', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki nem volt Johnny Depp élettársa?';
-- Q 50 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke van Angelina Jolie-nak és Brad Pittnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Angelina Jolie-nak és Brad Pittnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Angelina Jolie-nak és Brad Pittnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Angelina Jolie-nak és Brad Pittnek?';
COMMIT;
BEGIN;
-- Q 51 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hanyadik életévét töltötte be szeptember 9-én Adam Sandler színész?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50.', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hanyadik életévét töltötte be szeptember 9-én Adam Sandler színész?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '40.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hanyadik életévét töltötte be szeptember 9-én Adam Sandler színész?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '45.', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hanyadik életévét töltötte be szeptember 9-én Adam Sandler színész?';
-- Q 52 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a beceneve Camaron Diaz színésznőnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cami', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a beceneve Camaron Diaz színésznőnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Camira', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a beceneve Camaron Diaz színésznőnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Cam', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a beceneve Camaron Diaz színésznőnek?';
-- Q 53 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Flipper Öcsi, szintén énekes féltestvére?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Marót Viki', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Flipper Öcsi, szintén énekes féltestvére?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lábas Viki', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Flipper Öcsi, szintén énekes féltestvére?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pintácsi Viki', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Flipper Öcsi, szintén énekes féltestvére?';
-- Q 54 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Bereczki Zoltán kislányának a keresztneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zora', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Bereczki Zoltán kislányának a keresztneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zoé', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Bereczki Zoltán kislányának a keresztneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zita', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Bereczki Zoltán kislányának a keresztneve?';
-- Q 55 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Liza Minelli édesanyja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Judy Garland', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Liza Minelli édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Katharine Hepburn', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Liza Minelli édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Elizabeth Taylor', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Liza Minelli édesanyja?';
-- Q 56 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Richard Clayderman születéskori keresztneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Philippe', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Richard Clayderman születéskori keresztneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Richard Clayderman születéskori keresztneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Peter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Richard Clayderman születéskori keresztneve?';
-- Q 57 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke van Demi Moore-nak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Demi Moore-nak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kettő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Demi Moore-nak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'hat', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Demi Moore-nak?';
-- Q 58 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Dombóvári István?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'humorista', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Dombóvári István?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'színész', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Dombóvári István?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'újságíró', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Dombóvári István?';
-- Q 59 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben volt a Sláger és a Danubius Rádió utolsó adásnapja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2009-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik évben volt a Sláger és a Danubius Rádió utolsó adásnapja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2010-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik évben volt a Sláger és a Danubius Rádió utolsó adásnapja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2011-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik évben volt a Sláger és a Danubius Rádió utolsó adásnapja?';
-- Q 60 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke van Jon Bon Jovinak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Jon Bon Jovinak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '5', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Jon Bon Jovinak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Jon Bon Jovinak?';
COMMIT;
BEGIN;
-- Q 61 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Tereskova, festő és énekesnő születési neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagy Kriszta', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Tereskova, festő és énekesnő születési neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Nagy Terézia', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Tereskova, festő és énekesnő születési neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kovács Borbála', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Tereskova, festő és énekesnő születési neve?';
-- Q 62 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Beyonce férje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jay-Z', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Beyonce férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kanye West', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Beyonce férje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50 Cent', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Beyonce férje?';
-- Q 63 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Pink, amerikai énekes születési neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alecia Moore', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Pink, amerikai énekes születési neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jean Moore', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Pink, amerikai énekes születési neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kelly Jackson', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Pink, amerikai énekes születési neve?';
-- Q 64 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Gábor Zsazsa eredeti neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gábor Sári', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Gábor Zsazsa eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gábor Mari', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Gábor Zsazsa eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gábor Zsuzsi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Gábor Zsazsa eredeti neve?';
-- Q 65 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Justin Timberlake felesége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jessica Biel', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Justin Timberlake felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jessica Alba', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Justin Timberlake felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Sarah Jessica Parker', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Justin Timberlake felesége?';
-- Q 66 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Ganxsta ("Döglégy") Zolee édesanyja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kassai Ilona', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Ganxsta ("Döglégy") Zolee édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lórán Lenke', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Ganxsta ("Döglégy") Zolee édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pásztor Erzsi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Ganxsta ("Döglégy") Zolee édesanyja?';
-- Q 67 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen néven született Uri Geller?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gellér György', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen néven született Uri Geller?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gellér Gyula', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen néven született Uri Geller?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gellér Ágoston', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen néven született Uri Geller?';
-- Q 68 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Jane Fonda unokahúga?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bridget Fonda', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Jane Fonda unokahúga?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Faye Dunaway', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Jane Fonda unokahúga?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Emma Stone', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Jane Fonda unokahúga?';
-- Q 69 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színésznő Garas Dezső menye?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balla Eszter', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik színésznő Garas Dezső menye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Schell Judit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik színésznő Garas Dezső menye?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Földes Eszter', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik színésznő Garas Dezső menye?';
-- Q 70 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Carrie Fisher, szintén színésznő édesanyja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Debbie Reynolds', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Carrie Fisher, szintén színésznő édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Faye Dunaway', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Carrie Fisher, szintén színésznő édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Grace Kelly', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Carrie Fisher, szintén színésznő édesanyja?';
COMMIT;
BEGIN;
-- Q 71 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke van Erős Antóniának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kettő', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Erős Antóniának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Erős Antóniának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'négy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Erős Antóniának?';
-- Q 72 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke van Ábel Anitának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Ábel Anitának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kettő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Ábel Anitának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Ábel Anitának?';
-- Q 73 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Péter Szabó Szilvia kislányának a neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Emma', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Péter Szabó Szilvia kislányának a neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hanna', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Péter Szabó Szilvia kislányának a neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Emília', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Péter Szabó Szilvia kislányának a neve?';
-- Q 74 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Dobó Kata színésznő születési neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kovács Katalin', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Dobó Kata színésznő születési neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szabó Katalin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Dobó Kata színésznő születési neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Király Dorottya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Dobó Kata színésznő születési neve?';
-- Q 75 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke van Mel Gibsonnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '9', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Mel Gibsonnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '7', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Mel Gibsonnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Mel Gibsonnak?';
-- Q 76 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol született Ördög Nóra?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szegeden', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol született Ördög Nóra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Debrecenben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol született Ördög Nóra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Egerben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol született Ördög Nóra?';
-- Q 77 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány évesen nyerte meg Sharon Stone a Miss Pennsylvania szépségversenyt?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '17', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány évesen nyerte meg Sharon Stone a Miss Pennsylvania szépségversenyt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '18', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány évesen nyerte meg Sharon Stone a Miss Pennsylvania szépségversenyt?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '22', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány évesen nyerte meg Sharon Stone a Miss Pennsylvania szépségversenyt?';
-- Q 78 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke van Kovács Ákos, zenész-énekesnek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '4', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Kovács Ákos, zenész-énekesnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '3', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Kovács Ákos, zenész-énekesnek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '6', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke van Kovács Ákos, zenész-énekesnek?';
-- Q 79 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen sportot űzött Sebestyén Balázs?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'birkózott', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen sportot űzött Sebestyén Balázs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'bokszolt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen sportot űzött Sebestyén Balázs?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'focizott', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen sportot űzött Sebestyén Balázs?';
-- Q 80 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen néven született "Soma Mamagésa"?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Somogyi Gyöngyi', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen néven született "Soma Mamagésa"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lázár Margit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen néven született "Soma Mamagésa"?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kovács Ilona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen néven született "Soma Mamagésa"?';
COMMIT;
BEGIN;
-- Q 81 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Bangó Margit veje?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Emilió', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Bangó Margit veje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kasza Tibi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Bangó Margit veje?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pápai Joci', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Bangó Margit veje?';
-- Q 82 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Heilig Gábor zenész felesége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Eszményi Viktória', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Heilig Gábor zenész felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Udvaros Dorottya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Heilig Gábor zenész felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Karda Beáta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Heilig Gábor zenész felesége?';
-- Q 83 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Szörényi Levente felesége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kovács Zsuzsa', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Szörényi Levente felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pelsőczy Réka', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Szörényi Levente felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balázsovits Edit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Szörényi Levente felesége?';
-- Q 84 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik évben volt az esküvője Vilmos hercegnek és Kate Middletonnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2011-ben', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik évben volt az esküvője Vilmos hercegnek és Kate Middletonnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2012-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik évben volt az esküvője Vilmos hercegnek és Kate Middletonnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '2014-ben', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik évben volt az esküvője Vilmos hercegnek és Kate Middletonnak?';
-- Q 85 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki volt a felesége Bereczki Zoltánnak?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szinetár Dóra', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt a felesége Bereczki Zoltánnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ábel Anita', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt a felesége Bereczki Zoltánnak?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Náray Erika', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki volt a felesége Bereczki Zoltánnak?';
-- Q 86 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik magyar modellnek van gyermeke?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ebergényi Réka', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik magyar modellnek van gyermeke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Axente Vanessa', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik magyar modellnek van gyermeke?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mihalik Enikő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik magyar modellnek van gyermeke?';
-- Q 87 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt Zámbó Jimmy eredeti keresztneve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Imre', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi volt Zámbó Jimmy eredeti keresztneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'József', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi volt Zámbó Jimmy eredeti keresztneve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Béla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi volt Zámbó Jimmy eredeti keresztneve?';
-- Q 88 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Dolly eredeti neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Penczi Mária', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Dolly eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kovács Margit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Dolly eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Novai Dorottya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Dolly eredeti neve?';
-- Q 89 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány gyermeke volt Roger Moore-nek?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke volt Roger Moore-nek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'egy', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke volt Roger Moore-nek?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány gyermeke volt Roger Moore-nek?';
-- Q 90 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Jennifer Aniston keresztapja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Telly Savalas', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Jennifer Aniston keresztapja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Woody Allen', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Jennifer Aniston keresztapja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dustin Hoffman', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Jennifer Aniston keresztapja?';
COMMIT;
BEGIN;
-- Q 91 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen származású Kim Kardashian?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'örmény', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen származású Kim Kardashian?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'ukrán', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen származású Kim Kardashian?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'svéd', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen származású Kim Kardashian?';
-- Q 92 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hol született Rihanna?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Barbadoson', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol született Rihanna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mexikóban', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol született Rihanna?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jamaicában', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hol született Rihanna?';
-- Q 93 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Edvin Marton születési neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Csűry Lajos', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Edvin Marton születési neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Jeszenszky Béla', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Edvin Marton születési neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Zuber Krisztián', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Edvin Marton születési neve?';
-- Q 94 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színésznő lánya Tarján Zsófia, a Honeybeast énekesnője?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hernádi Judit', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik színésznő lánya Tarján Zsófia, a Honeybeast énekesnője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Udvaros Dorottya', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik színésznő lánya Tarján Zsófia, a Honeybeast énekesnője?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ábrahám Edit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik színésznő lánya Tarján Zsófia, a Honeybeast énekesnője?';
-- Q 95 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Ganxsta("Döglégy")Zolee édesanyja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kassai Ilona', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Ganxsta("Döglégy")Zolee édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Lórán Lenke', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Ganxsta("Döglégy")Zolee édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pásztor Erzsi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Ganxsta("Döglégy")Zolee édesanyja?';
-- Q 96 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Miller Zoltán színész felesége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ullmann Mónika', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Miller Zoltán színész felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Schell Judit', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Miller Zoltán színész felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ábel Anita', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Miller Zoltán színész felesége?';
-- Q 97 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Hány fia van Till Attilának?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'három', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány fia van Till Attilának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'kettő', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány fia van Till Attilának?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'öt', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Hány fia van Till Attilának?';
-- Q 98 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik színésznő Szinetár Dóra édesanyja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Hámori Ildikó', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik színésznő Szinetár Dóra édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Bánsági Ildikó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik színésznő Szinetár Dóra édesanyja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Pécsi Ildikó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik színésznő Szinetár Dóra édesanyja?';
-- Q 99 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen származású Selena Gomez?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'mexikói', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen származású Selena Gomez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'argentin', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen származású Selena Gomez?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'angol', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen származású Selena Gomez?';
-- Q 100 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Enrique Iglesias édesapja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Julio Iglesias', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Enrique Iglesias édesapja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Miguel Iglesias', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Enrique Iglesias édesapja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Antonio Iglesias', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Enrique Iglesias édesapja?';
COMMIT;
BEGIN;
-- Q 101 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Sting valódi neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Gordon Sumner', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Sting valódi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Joe Sumner', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Sting valódi neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mickey Sumner', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Sting valódi neve?';
-- Q 102 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Chuck Norris eredeti neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Carlos Ray Norris', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Chuck Norris eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mike Norris', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Chuck Norris eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dakota Alan Norris', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Chuck Norris eredeti neve?';
-- Q 103 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik híres énekes hunyt el 2016.dec.25-én?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'George Michael', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik híres énekes hunyt el 2016.dec.25-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Michael Jackson', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik híres énekes hunyt el 2016.dec.25-én?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ray Charles', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik híres énekes hunyt el 2016.dec.25-én?';
-- Q 104 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Melyik műsort nem vezette Ördög Nóra?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, '50 milliós játszma', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik műsort nem vezette Ördög Nóra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Vigyázat - gyerekkel vagyok!', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik műsort nem vezette Ördög Nóra?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kismenők', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Melyik műsort nem vezette Ördög Nóra?';
-- Q 105 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen sportot űzött versenyszerűen Bud Spencer?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'úszott', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen sportot űzött versenyszerűen Bud Spencer?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'teniszezett', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen sportot űzött versenyszerűen Bud Spencer?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'birkózott', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen sportot űzött versenyszerűen Bud Spencer?';
-- Q 106 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki Korda György felesége?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Balázs Klári', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Korda György felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Katona Klári', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Korda György felesége?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Karda Beáta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki Korda György felesége?';
-- Q 107 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi volt David Bowie eredeti neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'David Robert Jones', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi volt David Bowie eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Farrokh Bulsara', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi volt David Bowie eredeti neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Duncan Jones', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi volt David Bowie eredeti neve?';
-- Q 108 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi a keresztneve Vastag Csaba szintén énekes testvérének?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Tamás', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a keresztneve Vastag Csaba szintén énekes testvérének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'András', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a keresztneve Vastag Csaba szintén énekes testvérének?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kornél', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi a keresztneve Vastag Csaba szintén énekes testvérének?';
-- Q 109 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Bíró Ica születéskori neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Borúzs Ilona', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Bíró Ica születéskori neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Berkes Ilona', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Bíró Ica születéskori neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kovács Ildikó', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Bíró Ica születéskori neve?';
-- Q 110 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Milyen nemzetiségű volt Casanova?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'velencei', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen nemzetiségű volt Casanova?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'firenzei', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen nemzetiségű volt Casanova?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'nápolyi', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Milyen nemzetiségű volt Casanova?';
COMMIT;
BEGIN;
-- Q 111 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem volt soha a Hungária együttes tagja?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Kiki', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki nem volt soha a Hungária együttes tagja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Dolly', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki nem volt soha a Hungária együttes tagja?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Szikora Róbert', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki nem volt soha a Hungária együttes tagja?';
-- Q 112 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Mi Pink amerikai énekes születéskori neve?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Alecia Beth Moore', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Pink amerikai énekes születéskori neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Mya Marie Harrison', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Pink amerikai énekes születéskori neve?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Ashley Allen Roberts', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Mi Pink amerikai énekes születéskori neve?';
-- Q 113 in bulvar
INSERT INTO questions (topic_id, text)
SELECT t.id, 'Ki nem Zámbó Jimmy testvére?'
FROM topics t JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'József', TRUE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki nem Zámbó Jimmy testvére?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Árpád', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki nem Zámbó Jimmy testvére?';
INSERT INTO answers (question_id, text, is_correct)
SELECT q.id, 'Marietta', FALSE
FROM questions q
JOIN topics t ON t.id = q.topic_id
JOIN languages l ON l.id = t.language_id
WHERE l.code='hu' AND t.slug='bulvar' AND q.text='Ki nem Zámbó Jimmy testvére?';
COMMIT;
