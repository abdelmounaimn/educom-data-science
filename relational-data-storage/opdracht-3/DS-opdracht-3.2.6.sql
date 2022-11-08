use mhl;
SELECT mhl_suppliers.name, mhl_suppliers.straat, mhl_suppliers.huisnr, mhl_suppliers.postcode 
FROM mhl_suppliers 
WHERE mhl_suppliers.huisnr between 10 and 20 or mhl_suppliers.huisnr >= 100 ;