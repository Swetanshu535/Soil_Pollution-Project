create database soil;
use soil;

select * from soil_pollution;
-- What is the total number of cases 
-- reported in 
-- each region and country?
select count(Case_ID),Region,Country
from soil_pollution
group by Region,Country;
-- Which pollutant type has the highest average concentration?
select Pollutant_Type,avg(Pollutant_Concentration)
from soil_pollution
group by Pollutant_Type;
-- What is the average soil pH and temperature for each crop type?
select avg(Soil_pH),Temperature_C,Crop_Type
from soil_pollution
group by Temperature_C,Crop_Type;
/*Show the count of cases 
where a nearby 
industry is present 
and the case 
is not resolved.*/
select count(Case_ID),Nearby_Industry,Case_Resolved
from soil_pollution
where Case_resolved= "No"
group by Nearby_Industry,Case_Resolved;
-- List the disease types and their severity grouped by age group and gender.
select Disease_Type,Disease_Severity,Age_Group,Gender_Most
from soil_pollution
group by Age_Group,Gender_Most
