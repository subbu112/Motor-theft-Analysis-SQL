select * from stolen_vehicles;

-- 1. Find the numbers of vehicles stolen each year.
SELECT year(date_stolen) , COUNT(vehicle_id) AS number_of_vehicles_stolen
FROM stolen_vehicles
GROUP BY year(date_stolen);

-- 2. Find the numbers of vehicles stolen each month.
SELECT month(date_stolen), COUNT(vehicle_id) AS number_of_vehicles_stolen
FROM stolen_vehicles
GROUP BY month(date_stolen);

SELECT year(date_stolen), month(date_stolen), COUNT(vehicle_id) AS number_of_vehicles_stolen
FROM stolen_vehicles
GROUP BY year(date_stolen), month(date_stolen)
ORDER BY year(date_stolen), month(date_stolen);

SELECT year(date_stolen), month(date_stolen), day(date_stolen), COUNT(vehicle_id) AS number_of_vehicles_stolen
FROM stolen_vehicles
Where month(date_stolen) = 4
GROUP BY year(date_stolen), month(date_stolen),day(date_stolen)
ORDER BY year(date_stolen), month(date_stolen), day(date_stolen);

-- 3. Find the number of vehicles stolen each day of the week.
Select dayofweek(date_stolen) as dow, Count(vehicle_id) as number_of_vehicles_stolen
from stolen_vehicles
group by dayofweek(date_stolen)
order by dow;

-- 4. Replace the numeric day of week with full name of the each day of week.
Select dayofweek(date_stolen) as dow,
CASE when dayofweek(date_stolen) = 1 Then 'sunday'
     when dayofweek(date_stolen) = 2 Then 'Monday'
     when dayofweek(date_stolen) = 3 Then 'Tuesday'
     when dayofweek(date_stolen) = 4 Then 'Wednesday'
     when dayofweek(date_stolen) = 5 Then 'Thursday'
     when dayofweek(date_stolen) = 6 Then 'Friday'
     Else 'Saturday' END as day_of_week,
Count(vehicle_id) as number_of_vehicles_stolen
from stolen_vehicles
group by dayofweek(date_stolen), day_of_week
order by dow;






