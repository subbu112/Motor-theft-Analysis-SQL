use stolen_vehicles_db;
-- Objective 3: Identify Where Vehicles are stolen
-- 1. Find the number of vehicles that are stolen each region 
select * from stolen_vehicles;
select * from locations;

select region, Count(vehicle_id) as num_vehicles
from stolen_vehicles sv left join locations l
	 on sv.location_id = l.location_id
     Group by region ;
-- 2. Combine the previous output with thr population and density statitics for each region 
select l.region, Count(sv.vehicle_id) as num_vehicles,
			l.population, l.density 
from stolen_vehicles sv left join locations l
	 on sv.location_id = l.location_id
     Group by l.population, l.density, l.region
     order by num_vehicles desc;

     
-- 3 Do the type of vehicles stolen in the three most dense region differ from three less dense regions 
	
(select 'High density', sv.vehicle_type, Count(sv.vehicle_id) as num_vehicles
from stolen_vehicles sv left join locations l
	 on sv.location_id = l.location_id
     where l.region IN ( 'Auckland', 'Nelson', 'Wellington')	
     Group by sv.vehicle_type
     order by num_vehicles desc
     limit 5)
     
     union
     
     (select 'Low density', sv.vehicle_type, Count(sv.vehicle_id) as num_vehicles
from stolen_vehicles sv left join locations l
	 on sv.location_id = l.location_id
     where l.region IN ( 'Otago',	'Gisborne'	, 'Southland')	
          Group by sv.vehicle_type
     order by num_vehicles desc
     Limit 5);