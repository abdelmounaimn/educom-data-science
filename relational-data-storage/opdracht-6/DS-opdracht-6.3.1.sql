select name as plaatsnaam,
case when SUBSTRING(name,1,1) <>'\'' then concat(ucase(SUBSTRING(name,1,1)),SUBSTRING(name,2))
else  concat(SUBSTRING(name,1,3),ucase(SUBSTRING(name,4,1)),SUBSTRING(name,5))
end  as 'mooi plaatsnaam'
 from mhl_cities;