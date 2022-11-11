SELECT c.name as naam, 
sum(case mt.name when 'Gold' then 1 else 0 end) as Gold,
sum(case mt.name when 'Silver' then 1 else 0 end) as Silver,
sum(case mt.name when 'Bronze' then 1 else 0 end) as Bronze,
sum(case  when mt.name  in ('Gold','Silver','Bronze') then 0 else 1 end) as Other
FROM mhl.mhl_membertypes mt 
join mhl_suppliers s on s.membertype = mt.id
join mhl_cities c on s.city_ID= c.id
group by (c.name)
order by Gold desc, Silver desc, Bronze desc