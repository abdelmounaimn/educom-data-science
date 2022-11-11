select s.name naam, 
case 
when con.name is null then 't.a.v. de directie'
else con.name
end as anhef,
case 
when s.p_address not like ''  then s.p_address 
else concat(s.straat , ' ',  s.huisnr ) 
end as adres ,
case 
when s.p_address not like ''  then (select name from mhl_cities where mhl_cities.id=s.p_city_ID )
else (select name from mhl_cities where mhl_cities.id=s.city_ID ) 
end as stad ,
case 
when s.p_address not like ''  then s.p_postcode
else s.postcode 
end as postCode ,
if(s.p_address like '',
(select d.name as provincie from mhl_districts as d where id = (select district_ID from mhl_communes where id= (select commune_ID from mhl_cities where id=(s.city_ID)))),
(select d.name as provincie from mhl_districts as d where id = (select district_ID from mhl_communes where id= (select commune_ID from mhl_cities where id=(s.p_city_ID))))
) as provicie
from mhl_suppliers as s
join mhl_contacts as con on s.id=con.supplier_ID 
order by provicie , stad , naam