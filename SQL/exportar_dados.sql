COPY (
    SELECT member_casual,
           COUNT(*) AS total_rides,
           ROUND(AVG(ride_length_minutes), 2) AS avg_ride_minutes
    FROM trips
    GROUP BY member_casual
)
TO 'C:/Users/Marcello Romero/Desktop/estudo_cyclist/summary_may_2026.csv'
WITH CSV HEADER;