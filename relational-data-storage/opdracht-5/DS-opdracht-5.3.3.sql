select s.id,
s.name as name,
if(d.contact is null,'t.a.v. directie' , d.contact) as contact,
v.adres as adres,
v.postcode as postcode,
v.stad as stad 
from mhl_suppliers s
left join verzendlijst v on v.ID = s.ID
left join directie d on s.id = d.ID
order by name