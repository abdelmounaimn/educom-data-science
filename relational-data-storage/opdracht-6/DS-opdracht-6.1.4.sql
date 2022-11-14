 
 select 
 mhl_rubriek_view_ID as ID,
 (select name from mhl_rubrieken where id = mhl_rubriek_view_ID) as rubriek,
 sum((select sum(hitcount) from mhl_hitcount where supplier_ID = mhl_suppliers_ID)) as totaalhit
 from mhl_suppliers_mhl_rubriek_view v group by mhl_rubriek_view_ID having  rubriek is not null order by rubriek;