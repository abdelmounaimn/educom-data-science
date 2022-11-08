use mhl;
-- Selecteer de inhoud uit de stedentabel
SELECT * FROM mhl_cities;

-- select 3.1.2 Selecteer de unieke steden uit de stedentabel
use mhl;
SELECT DISTINCT  name  FROM mhl_cities;
-- 3.1.3 Selecteer naam, straat, huisnummer en postcode van alle leveranciers
SELECT name, straat, huisnr, postcode FROM mhl_suppliers;

