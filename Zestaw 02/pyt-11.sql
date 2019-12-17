-- sprawdŸ jacy klienci z³o¿yli zamówienia na uk³adanki
SELECT DISTINCT klient.nr, imie, nazwisko, opis
   FROM ( ( klient INNER JOIN zamowienie 
                ON klient.nr = zamowienie.klient_nr
          ) INNER JOIN pozycja
            ON zamowienie.nr = pozycja.zamowienie_nr
        ) INNER JOIN towar 
          ON pozycja.towar_nr = towar.nr
   WHERE towar.opis LIKE 'uk³adanka%'
;

-- zad P11: sprawdŸ zamówienia na chusteczki higieniczne, kto
-- zamawia³, ile, jaki jest œredni czas oczekiwania na realizacjê
-- zamówienie na chusteczki.

SELECT  klient.nr, imie, nazwisko, sum(ilosc) as laczna_ilosc, ROUND(AVG(data_wysylki - data_zlozenia)::numeric, 2) AS czas_sredni
   FROM ( ( klient INNER JOIN zamowienie 
                ON klient.nr = zamowienie.klient_nr
          ) INNER JOIN pozycja
            ON zamowienie.nr = pozycja.zamowienie_nr
        ) INNER JOIN towar 
          ON pozycja.towar_nr = towar.nr
   WHERE towar.opis LIKE 'chusteczki higieniczne%'
   GROUP BY klient.nr, imie, nazwisko
;