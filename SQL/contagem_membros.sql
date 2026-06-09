SELECT member_casual,
       COUNT(*) AS total_rides,
       ROUND(AVG(ride_length_minutes), 2) AS avg_ride_minutes
FROM trips
GROUP BY member_casual;