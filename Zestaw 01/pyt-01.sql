-- wyœwietl zawartoœæ ka¿dej z tabel, uporz¹dkuj w/g atrybutu
SELECT * FROM klient
;
SELECT * FROM klient ORDER BY nazwisko
;
SELECT * FROM towar
;
SELECT * FROM towar ORDER BY cena DESC
;

-- zadanie P1: wyœwietl zawartoœæ powy¿szych tabel uporz¹dkowanych
-- odpowiednio wed³ug miast, opisów;
-- wyœwietl zawartoœæ tabeli zamówieñ uporz¹dkowanej wed³ug kosztów
-- i tabeli kodów kreskowych uporz¹dkowanej wed³ug kodów.


SELECT * FROM klient ORDER BY miasto
;
SELECT * FROM towar ORDER BY opis
;
SELECT * FROM zamowienie ORDER BY koszt_wysylki
;
SELECT * FROM kod_kreskowy ORDER BY kod
;