-- wy�wietl zawarto�� ka�dej z tabel, uporz�dkuj w/g atrybutu
SELECT * FROM klient
;
SELECT * FROM klient ORDER BY nazwisko
;
SELECT * FROM towar
;
SELECT * FROM towar ORDER BY cena DESC
;

-- zadanie P1: wy�wietl zawarto�� powy�szych tabel uporz�dkowanych
-- odpowiednio wed�ug miast, opis�w;
-- wy�wietl zawarto�� tabeli zam�wie� uporz�dkowanej wed�ug koszt�w
-- i tabeli kod�w kreskowych uporz�dkowanej wed�ug kod�w.


SELECT * FROM klient ORDER BY miasto
;
SELECT * FROM towar ORDER BY opis
;
SELECT * FROM zamowienie ORDER BY koszt_wysylki
;
SELECT * FROM kod_kreskowy ORDER BY kod
;