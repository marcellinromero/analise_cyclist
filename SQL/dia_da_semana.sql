ALTER TABLE trips
ADD COLUMN day_of_week TEXT;

UPDATE trips
SET day_of_week = TO_CHAR(started_at, 'Day');