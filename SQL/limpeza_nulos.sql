DELETE FROM trips
WHERE started_at IS NULL
   OR ended_at IS NULL
   OR member_casual IS NULL
   OR ended_at <= started_at;