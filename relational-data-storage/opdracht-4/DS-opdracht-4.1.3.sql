 SELECT S.name, mhl_suppliers.name, mhl_suppliers.straat, mhl_suppliers.huisnr, mhl_suppliers.postcode 
FROM mhl_suppliers 
join mhl_cities on mhl_cities.id =mhl_suppliers.city_ID
join  mhl_suppliers_mhl_rubriek_view on mhl_suppliers.id = mhl_suppliers_mhl_rubriek_view.mhl_suppliers_ID
join mhl_rubrieken R on mhl_suppliers_mhl_rubriek_view.mhl_rubriek_view_ID=R.id
join mhl_rubrieken S on R.id = S.parent
WHERE mhl_cities.name  = "Amsterdam" and (R.name= "drank"  or S.name = "drank" )
order by S.name, R.name,   mhl_suppliers.name
