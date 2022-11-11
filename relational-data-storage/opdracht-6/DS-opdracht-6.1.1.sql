select h.year as year ,
 (select MONTHNAME(concat(h.year, '-', h.month, '-', '1' ))) as month,
 count(h.supplier_ID) as 'aantal leveranciere',
sum(h.hitcount) as 'totaal aantal hits'
from mhl_hitcount h
group by h.year , h.month
order by h.year desc, h.month desc