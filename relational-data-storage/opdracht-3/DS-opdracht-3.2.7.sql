use mhl;
SELECT mhl_suppliers.name, mhl_suppliers.straat, mhl_suppliers.huisnr, mhl_suppliers.postcode 
FROM mhl_suppliers 
WHERE mhl_suppliers.name like '\'t%' ;