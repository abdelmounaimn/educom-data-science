SELECT sup.name, sup.straat, sup.huisnr, sup.postcode, pc.lat, pc.lng 
FROM mhl_suppliers sup
join mhl_cities c on sup.city_ID = c.id
join mhl_communes com on com.id = c.commune_ID
join mhl_districts d on d.id = com.district_ID
join pc_lat_long pc on pc.id = d.display_order
order by pc.lat desc limit 5