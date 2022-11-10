select s.name ,pt.name, ifnull(yn.content, "NOT SET") 
from mhl_suppliers s 
cross join mhl_propertytypes pt 
left join mhl_yn_properties yn on s.id = yn.supplier_ID and pt.id = yn.propertytype_ID 
join mhl_cities ci on ci.id = s.city_ID
where ci.name="Amsterdam"