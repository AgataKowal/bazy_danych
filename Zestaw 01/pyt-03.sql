-- obliczenia na podstawie atrybut�w, nazwy dla wy�wietlanych atrybut�w:
-- wy�wietl dane o zysku dla towar�w
SELECT *,cena-koszt AS zysk FROM towar
;
SELECT *,cena-koszt AS zysk FROM towar ORDER BY zysk DESC
;

-- zad P3: wy�wietl dane o procentowym zysku w stosunku do koszt�w 
-- wy�wietl dane o czasie realizacji zam�wie� (r�nica dat z�o�enia i wysy�ki
-- zam�wienia).

SELECT ((cena-koszt)/koszt)*100 AS zysk_procentowy FROM towar
;
SELECT data_wysylki-data_zlozenia AS czas_realizacji FROM zamowienie
;