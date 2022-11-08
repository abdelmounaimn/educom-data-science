use mhl;
SELECT mhl_suppliers.name, mhl_suppliers.straat, mhl_suppliers.huisnr, mhl_suppliers.postcode 
FROM mhl_suppliers join mhl_cities on mhl_cities.id =mhl_suppliers.city_ID
WHERE mhl_cities.name  = "Amsterdam" or mhl_suppliers.p_city_ID in (select id from mhl_cities where name = 'Den Haag');