select s.name, sum(hit.hitcount), count(hit.month), round(avg(hit.hitcount))
from mhl_suppliers s
join mhl_hitcount hit on hit.supplier_ID = s.id
group by s.id 
order by sum(hit.hitcount) desc