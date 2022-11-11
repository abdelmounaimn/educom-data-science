create or replace VIEW VERZENDLIJST AS
select s.id as ID, 
if(s.p_address not like '',s.p_address ,concat(s.straat , ' ',  s.huisnr ) ) as adres ,
if(s.p_address not like '',s.p_postcode,s.postcode ) as postcode,
if(s.p_address not like '',(select name from mhl_cities where mhl_cities.id=s.p_city_ID ),(select name from mhl_cities where mhl_cities.id=s.city_ID ) )as stad 
from mhl_suppliers as s 
where (s.p_address not like '' or s.straat not like '' );