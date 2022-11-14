select name as supp,
(select count(mhl_suppliers_ID) from mhl_suppliers_mhl_rubriek_view where mhl_rubriek_view_ID =r.id) as Numsup
 from mhl_rubrieken as r
 order by supp;