SELECT day_of_week,
       member_casual,
       COUNT(*) AS total_rides,
       ROUND(AVG(ride_length_minutes), 2) AS avg_ride_minutes
FROM trips
GROUP BY day_of_week, member_casual
ORDER BY member_casual, total_rides DESC;