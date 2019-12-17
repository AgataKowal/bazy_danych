-- grupowanie i warunki dotycz¹ce grup, funkcje agreguj¹ce,
-- zapytania zagnie¿d¿one (zagnie¿d¿enia nieskorelowane) cz.1:

-- sprawdŸ czy nazwiska powtarzaj¹ siê, wypisz dane klientów
-- o powtarzaj¹cych siê nazwiskach
SELECT nazwisko FROM klient
;
SELECT DISTINCT nazwisko FROM klient
;
SELECT nazwisko,count (nazwisko) FROM klient GROUP BY nazwisko
;
SELECT nazwisko FROM klient GROUP BY nazwisko HAVING count (nazwisko) > 1
;
SELECT imie, nazwisko, miasto FROM klient 
   WHERE nazwisko IN (
      SELECT nazwisko FROM klient 
      GROUP BY nazwisko HAVING count (nazwisko) > 1
      )
;

-- zad P6: sprawdŸ czy ceny towarów powtarzaj¹ siê; 
-- wypisz opis i ceny towarów o powtarzaj¹cych siê cenach;
-- to samo dla kosztu.

SELECT opis, cena FROM towar 
   WHERE cena IN (
      SELECT cena FROM towar 
      GROUP BY cena HAVING count (cena) > 1
      )
;
SELECT opis, koszt FROM towar 
   WHERE koszt IN (
      SELECT koszt FROM towar 
      GROUP BY koszt HAVING count (koszt) > 1
      )
;