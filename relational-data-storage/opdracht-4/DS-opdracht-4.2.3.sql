use mhl;
select p_r.id as ID , p_r.name as HoofrRubriek, s_r.name as subrubriek from mhl_rubrieken p_r
left join mhl_rubrieken s_r on p_r.id = s_r.parent
where  p_r.parent = 0
order by p_r.name , s_r.name