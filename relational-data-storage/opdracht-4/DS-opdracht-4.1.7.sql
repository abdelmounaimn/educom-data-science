select c1.name as plaatsname , c1.commune_ID as gemeente1_Id, co1.name as gemeente1name ,
 c2.commune_ID as gemeente2_Id, co2.name as gemeente2name 
from mhl_cities c1
join mhl_cities c2 on c1.name = c2.name and c1.id <> c2.id
join mhl_communes co1 on c1.commune_ID = co1.id 
join mhl_communes co2 on c2.commune_ID = co2.id
group by c1.name 
order by c1.name;
