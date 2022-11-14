select 
(select name from mhl_communes where id = (select commune_ID from mhl_cities where id = s.city_ID))as gemeente,
s.name as leverancier,
(select sum(hitcount) from mhl_hitcount h where h.supplier_ID = s.id) as totaalHitcount,
 (select avg(h.hitcount) from mhl_hitcount h  join mhl_suppliers s on s.id = h.supplier_ID  join mhl_cities c on c.id=s.city_ID  join mhl_communes com on com.id= c.commune_ID where com.name = gemeente) as avg1
from mhl_suppliers s 
where (select name from mhl_countries where 
id=(select country_ID from mhl_districts where 
id=(select district_ID from mhl_communes where
id = (select commune_ID from mhl_cities where id = s.city_ID)))) = 'Nederland'
having totaalHitcount > avg1
order by gemeente, totaalHitcount desc;