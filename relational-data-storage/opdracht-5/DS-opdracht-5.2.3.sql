SELECT h.year as jaar, 
sum(if(h.month in (1,2,3),hitcount,0)) as '1 kwartaal',
sum(if(h.month in (4,5,6),hitcount,0)) as '2 kwartaal',
sum(if(h.month in (7,8,9),hitcount,0)) as '3 kwartaal',
sum(if(h.month in (10,11,12),hitcount,0)) as '4 kwartaal',
sum(h.hitcount) as Totaal
FROM mhl_hitcount h
group by (h.year)
order by h.year;