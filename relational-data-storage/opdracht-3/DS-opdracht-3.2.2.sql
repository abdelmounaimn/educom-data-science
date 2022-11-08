use mhl;
SELECT mhl_suppliers.name, mhl_suppliers.straat, mhl_suppliers.huisnr, mhl_suppliers.postcode 
FROM mhl_suppliers join mhl_membertypes on mhl_membertypes.id =mhl_suppliers.membertype
WHERE mhl_membertypes.name  in ( 'Gold', 'Silver' , 'Bronze');