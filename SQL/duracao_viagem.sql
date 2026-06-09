ALTER TABLE trips
ADD COLUMN ride_length_minutes NUMERIC;

UPDATE trips
SET ride_length_minutes = EXTRACT(EPOCH FROM (ended_at - started_at)) / 60.0;