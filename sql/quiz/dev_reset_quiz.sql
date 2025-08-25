-- dev_reset_quiz.sql
-- CAUTION: DEV-ONLY. Wipes quiz content tables and resets ID sequences to 1.
-- Keeps languages as-is (e.g., 'hu').

BEGIN;

-- If you have FKs, delete in child->parent order
DELETE FROM answers;
DELETE FROM questions;
DELETE FROM topics;
-- Reset sequences (works for serial/bigserial)
SELECT setval(pg_get_serial_sequence('topics','id'), 1, false);
SELECT setval(pg_get_serial_sequence('questions','id'), 1, false);
SELECT setval(pg_get_serial_sequence('answers','id'), 1, false);

COMMIT;
