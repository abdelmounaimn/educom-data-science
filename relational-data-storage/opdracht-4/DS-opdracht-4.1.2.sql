 SELECT mhl_suppliers.name, mhl_suppliers.straat, mhl_suppliers.huisnr, mhl_suppliers.postcode 
FROM mhl_suppliers join mhl_cities on mhl_cities.id =mhl_suppliers.city_ID
join mhl_communes on mhl_communes.id = mhl_cities.commune_ID
WHERE mhl_communes.name  = "Steenwijkerland";