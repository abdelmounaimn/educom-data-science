select joindate , id from mhl_suppliers where  DATEDIFF( LAST_DAY( joindate ),joindate) <8;
