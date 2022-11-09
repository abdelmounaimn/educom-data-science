 SELECT pt.name, sup.name, sup.straat, sup.huisnr, sup.postcode 
FROM mhl_suppliers sup
join mhl_yn_properties p on sup.id = p.supplier_ID
join mhl_propertytypes pt on pt.id=p.propertytype_ID
WHERE pt.name in('specialistische leverancier', 'ook voor particulieren') 
