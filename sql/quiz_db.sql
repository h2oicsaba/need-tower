-- question_db.sql
-- Schema for multilingual quiz database with topics, questions, and answers
-- Assumptions:
--  - topics are language-specific rows
--  - topics.name_hu is the master Hungarian name (even for non-HU languages)
--  - topics.name_translated is the display label in the row's language
--  - topics.slug is globally unique and typically derived from file names (extensionless)
--  - exactly one correct answer per question enforced by partial unique index

BEGIN;
-- Languages
CREATE TABLE IF NOT EXISTS languages (
  id           SMALLSERIAL PRIMARY KEY,
  code         TEXT NOT NULL UNIQUE,   -- 'hu', 'sk', ...
  name         TEXT NOT NULL           -- 'Magyar', 'Szlovák', ...
);
-- Topics (localized row; name_hu is always Hungarian master name)
CREATE TABLE IF NOT EXISTS topics (
  id               BIGSERIAL PRIMARY KEY,
  language_id      SMALLINT NOT NULL REFERENCES languages(id) ON DELETE RESTRICT,
  name_hu          TEXT NOT NULL,
  name_translated  TEXT NOT NULL,
  slug             TEXT NOT NULL UNIQUE,
  created_at       TIMESTAMPTZ NOT NULL DEFAULT now()
);
--
CREATE INDEX IF NOT EXISTS topics_language_idx ON topics(language_id);
--
-- Questions (language comes via topics.language_id)
CREATE TABLE IF NOT EXISTS questions (
  id          BIGSERIAL PRIMARY KEY,
  topic_id    BIGINT NOT NULL REFERENCES topics(id) ON DELETE RESTRICT,
  text        TEXT NOT NULL,
  difficulty  SMALLINT,
  source      TEXT,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT now(),
  active      BOOLEAN NOT NULL DEFAULT TRUE
);
--
CREATE INDEX IF NOT EXISTS questions_topic_idx ON questions(topic_id);
-- Answers
CREATE TABLE IF NOT EXISTS answers (
  id           BIGSERIAL PRIMARY KEY,
  question_id  BIGINT NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
  text         TEXT NOT NULL,
  is_correct   BOOLEAN NOT NULL DEFAULT FALSE
);
--
CREATE UNIQUE INDEX IF NOT EXISTS answers_unique_text_per_question
  ON answers(question_id, text);

-- Exactly 1 correct answer per question
CREATE UNIQUE INDEX IF NOT EXISTS answers_one_correct_per_question
  ON answers(question_id)
  WHERE is_correct;
--
COMMIT;