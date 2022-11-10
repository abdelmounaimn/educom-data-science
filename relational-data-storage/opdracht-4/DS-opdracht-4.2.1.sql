select ci.name as name , ci.commune_ID as CommunId from mhl_cities ci 
left join mhl_communes co on ci.commune_ID= co.id
where co.id is null