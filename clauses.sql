create database uber;
use uber;

CREATE TABLE rides (
    ride_id INT ,
    driver_id INT,
    rider_id INT,
    pickup_location VARCHAR(100),
    dropoff_location VARCHAR(100),
    ride_date DATETIME,
    fare DECIMAL(10, 2)
);


INSERT INTO rides (ride_id, driver_id, rider_id, pickup_location, dropoff_location, ride_date, fare)
VALUES
(1, 101, 201, 'Chennai', 'Coimbatore', '2024-12-29 08:00:00', 500.00),
(2, 102, 202, 'Bangalore', 'Hyderabad', '2024-12-29 10:00:00', 800.00),
(3, 103, 203, 'Chennai', 'Madurai', '2024-12-29 12:00:00', 400.00),
(4, 104, 204, 'Coimbatore', 'Chennai', '2024-12-29 14:00:00', 600.00),
(5, 101, 205, 'Bangalore', 'Coimbatore', '2024-12-29 16:00:00', 700.00);

select * from rides

--where clause
select * from rides
where fare<500;

Select fare from rides
where dropoff_location='Coimbatore';

--order_by clause
SELECT * FROM rides
ORDER BY fare DESC;


--group-by clause
SELECT pickup_location, COUNT(*) AS total_rides
FROM rides
GROUP BY pickup_location;


--Top clause
SELECT TOP 3 * FROM rides
ORDER BY fare DESC;

--Having clause
SELECT pickup_location, COUNT(*) AS ride_count
FROM rides
GROUP BY pickup_location
HAVING COUNT(*) > 1;

--distinct clause
SELECT DISTINCT pickup_location FROM rides;

