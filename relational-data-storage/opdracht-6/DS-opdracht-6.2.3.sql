select DAYNAME(joindate) as 'dag van de week' ,
count(id) as 'aantal aanmeldingen' 
from mhl_suppliers group by DAYNAME(joindate);