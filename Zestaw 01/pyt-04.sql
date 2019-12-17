-- u�ycie r�nych warunk�w, IS NOT NULL, dopasowanie wzorc�w tekstowych, warunki dotycz�ce dat:
-- wy�wietl klient�w z Sopotu,
SELECT * FROM klient WHERE miasto='Sopot'
;
-- towary z podan� cen�,
SELECT * FROM towar WHERE cena IS NOT NULL
;
-- dane o donicach, kt�re maj� podan� cen�,
SELECT * FROM towar WHERE opis LIKE '%donica%' AND cena IS NOT NULL
;
-- zam�wienia z�o�one w marcu 2019
SELECT * FROM zamowienie WHERE data_zlozenia BETWEEN '2019/03/01' AND '2019/03/31'
;
-- wy�wietl dane o zysku dla towar�w, ale tylko wtedy, gdy zysk da si� okre�li�
SELECT *,cena-koszt AS zysk FROM towar WHERE cena is NOT NULL
;

-- zad P4: wy�wietl w kolejnych zapytaniach:
-- dane klient�w spoza Gda�ska,
-- klient�w bez telefonu,
-- klient�w spoza Gda�ska i bez telefonu,
-- dane o uk�adankach,
-- zam�wienia niezrealizowane (bez daty wysy�ki),
-- zrealizowane w lutym 2019,
-- wy�wietl dane o czasie realizacji zam�wie� ju� zrealizowanych


SELECT * FROM klient WHERE miasto NOT LIKE '%Gda�sk%'
;
SELECT * FROM klient WHERE telefon IS NOT NULL
;
SELECT * FROM klient WHERE miasto NOT LIKE '%Gda�sk%' AND telefon IS NULL
;
SELECT * FROM towar WHERE opis LIKE '%uk�adanka%'
;
SELECT * FROM zamowienie WHERE data_wysylki is NULL
;
SELECT * FROM zamowienie WHERE data_wysylki BETWEEN '2019/02/01' AND '2019/02/28'
;
SELECT data_wysylki-data_zlozenia AS czas_realizacji FROM zamowienie WHERE data_wysylki is NOT NULL
;