select h.hitcount, sup.name, c.name, com.name, d.name
from mhl_hitcount h 
join mhl_suppliers sup 	on h.supplier_ID =sup.id
join mhl_cities c 		on c.id = sup.city_ID
join mhl_communes com 	on com.id=c.commune_ID
join mhl_districts d 	on d.id=com.district_ID
where h.year = 2014 and d.name="Limburg"