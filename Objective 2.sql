-- Objective 2: Identify which vehicles are stolen
-- 1. Find the Vehicle types that are most often stolen and least often stolen
SELECT vehicle_type, COUNT(vehicle_id) AS number_of_thefts
FROM stolen_vehicles
GROUP BY vehicle_type
ORDER BY number_of_thefts DESC
Limit 5;

SELECT vehicle_type, COUNT(vehicle_id) AS number_of_thefts
FROM stolen_vehicles
GROUP BY vehicle_type
ORDER BY number_of_thefts asc
Limit 5;

-- 2. For each Vehicle type, Find the avaerage age of the cars that are stolen.
SELECT vehicle_type, avg(year(date_stolen) - model_year) AS avg_age
FROM stolen_vehicles
GROUP BY vehicle_type
 ORDER BY avg_age;
 
 -- 2. For each Vehicle type, Find the percent of vehicles stolen that are luxury cars.
 Select * FRom stolen_vehicles;
 Select * FRom make_details;

Select * 
FRom stolen_vehicles sv left join make_details md
on sv.make_id = md.make_id;
 
with lux_standrad as (Select vehicle_type, case when make_type = 'Luxury' then 1 else 0 end as luxury, 1 as all_cars
FRom stolen_vehicles sv left join make_details md
on sv.make_id = md.make_id)

Select vehicle_type, Sum(luxury) / count(luxury) * 100 as pct_lux
from lux_standrad
group by vehicle_type
order by pct_lux desc;

-- 2. Create a table where the rows represent the top 10 vehicles, colums represent colors and values reprsent number of vehicles stolen.
select *from stolen_vehicles;
select color, count(vehicle_id) as num_vehicles
from stolen_vehicles
group by color
order by num_vehicles desc;

Select vehicle_type,count(vehicle_id) as num_vehicles,
sum( case when color = 'Silver' then 1 else 0 end) as silver,
sum(case when color = 'White' then 1 else 0 end) as White,
sum(case when color = 'Black' then 1 else 0 end) as Black,
sum(case when color = 'Blue' then 1 else 0 end) as Blue,
sum(case when color = 'Red' then 1 else 0 end) as Red,
sum(case when color = 'Grey' then 1 else 0 end) as Grey ,
sum(case when color IN ('Gold', 'Brown', 'Yellow', 'Orange', 'Purple', 'Cream', 'Pink') then 1 else 0 end) as other
from stolen_vehicles
group by vehicle_type
order by num_vehicles desc
limit 10;





