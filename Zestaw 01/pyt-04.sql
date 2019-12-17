-- u¿ycie ró¿nych warunków, IS NOT NULL, dopasowanie wzorców tekstowych, warunki dotycz¹ce dat:
-- wyœwietl klientów z Sopotu,
SELECT * FROM klient WHERE miasto='Sopot'
;
-- towary z podan¹ cen¹,
SELECT * FROM towar WHERE cena IS NOT NULL
;
-- dane o donicach, które maj¹ podan¹ cenê,
SELECT * FROM towar WHERE opis LIKE '%donica%' AND cena IS NOT NULL
;
-- zamówienia z³o¿one w marcu 2019
SELECT * FROM zamowienie WHERE data_zlozenia BETWEEN '2019/03/01' AND '2019/03/31'
;
-- wyœwietl dane o zysku dla towarów, ale tylko wtedy, gdy zysk da siê okreœliæ
SELECT *,cena-koszt AS zysk FROM towar WHERE cena is NOT NULL
;

-- zad P4: wyœwietl w kolejnych zapytaniach:
-- dane klientów spoza Gdañska,
-- klientów bez telefonu,
-- klientów spoza Gdañska i bez telefonu,
-- dane o uk³adankach,
-- zamówienia niezrealizowane (bez daty wysy³ki),
-- zrealizowane w lutym 2019,
-- wyœwietl dane o czasie realizacji zamówieñ ju¿ zrealizowanych


SELECT * FROM klient WHERE miasto NOT LIKE '%Gdaï¿½sk%'
;
SELECT * FROM klient WHERE telefon IS NOT NULL
;
SELECT * FROM klient WHERE miasto NOT LIKE '%Gdaï¿½sk%' AND telefon IS NULL
;
SELECT * FROM towar WHERE opis LIKE '%ukï¿½adanka%'
;
SELECT * FROM zamowienie WHERE data_wysylki is NULL
;
SELECT * FROM zamowienie WHERE data_wysylki BETWEEN '2019/02/01' AND '2019/02/28'
;
SELECT data_wysylki-data_zlozenia AS czas_realizacji FROM zamowienie WHERE data_wysylki is NOT NULL
;