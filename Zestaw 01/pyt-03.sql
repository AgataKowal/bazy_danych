-- obliczenia na podstawie atrybutów, nazwy dla wyœwietlanych atrybutów:
-- wyœwietl dane o zysku dla towarów
SELECT *,cena-koszt AS zysk FROM towar
;
SELECT *,cena-koszt AS zysk FROM towar ORDER BY zysk DESC
;

-- zad P3: wyœwietl dane o procentowym zysku w stosunku do kosztów 
-- wyœwietl dane o czasie realizacji zamówieñ (ró¿nica dat z³o¿enia i wysy³ki
-- zamówienia).

SELECT ((cena-koszt)/koszt)*100 AS zysk_procentowy FROM towar
;
SELECT data_wysylki-data_zlozenia AS czas_realizacji FROM zamowienie
;