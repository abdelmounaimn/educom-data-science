select year(joindate) jaar, monthname(joindate) as maand,count(id) aantalSuppliers 
from mhl_suppliers group by year(joindate) , month(joindate) ;
