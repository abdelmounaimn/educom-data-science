use mhl;
select mhl_suppliers.name as naam, mhl_membertypes.name as  lidmaatschap,mhl_cities.name as stad, mhl_suppliers.postcode as postcode from mhl_suppliers
join mhl_cities on mhl_cities.id = mhl_suppliers.city_ID 
left join mhl_membertypes on mhl_suppliers.membertype = mhl_membertypes.id order by lidmaatschap , stad, postcode;