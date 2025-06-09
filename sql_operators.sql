use uber;

--1. Comparison Operator
-- Equals(=)
SELECT * FROM rides WHERE pickup_location = 'Chennai';

--Not Equals(!= or <>) 
SELECT * FROM rides WHERE dropoff_location <> 'Chennai';

--greater than
SELECT * FROM rides WHERE fare > 600;

--less than
SELECT * FROM rides WHERE fare < 600;

--greater than or equal to
SELECT * FROM rides WHERE fare >= 700;


--less than or equal to
SELECT * FROM rides WHERE fare <= 700;


--2. Logical Operator
--AND 
SELECT * FROM rides WHERE pickup_location = 'Bangalore' AND fare > 600;

--OR 
SELECT * FROM rides WHERE pickup_location = 'Bangalore' OR fare < 500;

--NOT Operator
SELECT * FROM rides WHERE NOT pickup_location = 'Chennai';

--3. Arithmetic Operator
-- + (Add ₹50 service fee to each fare)
SELECT ride_id, fare, fare + 50 AS total_fare FROM rides;

-- (-) Show fare after ₹100 discount
SELECT ride_id, fare, fare - 100 AS discounted_fare FROM rides;

--(*) Add 18% GST to each fare
SELECT ride_id, fare, fare * 1.18 AS fare_with_gst FROM rides;

--( / ) Show half of the fare
SELECT ride_id, fare, fare / 2 AS half_fare FROM rides;

--4. Other Operator
--BETWEEN 
SELECT * FROM rides WHERE fare BETWEEN 500 AND 700;

--Like : Show rides where dropoff_location starts with 'C'
SELECT * FROM rides WHERE dropoff_location LIKE 'C%';

--Is Null
SELECT * FROM rides WHERE dropoff_location IS NULL;

--Not Null
SELECT * FROM rides WHERE dropoff_location IS NOT NULL;
