-- funkcje agreguj¹ce

-- wypisz zamówienia klientów o wiêcej ni¿ jednej pozycji
SELECT imie, nazwisko, zamowienie.nr as zamowienie_nr, count(*) as "ile pozycji"
   FROM (( klient INNER JOIN zamowienie
             ON klient.nr = zamowienie.klient_nr
         ) INNER JOIN pozycja
             ON zamowienie.nr = pozycja.zamowienie_nr
        )
   GROUP BY imie, nazwisko, zamowienie.nr
   HAVING count(*)>1
;

-- zad P10: z tabel klientów i zamówieñ oblicz minimalny, maksymalny
-- i œredni czas oczekiwania przez poszczególnych klientów (zamówienia
-- niezrealizowane nie licz¹ siê do œredniej).

SELECT imie,
       nazwisko,
       MAX(data_wysylki - data_zlozenia)                    AS czas_maksymalny,
       MIN(data_wysylki - data_zlozenia)                    AS czas_minimalny,
       ROUND(AVG(data_wysylki - data_zlozenia)::numeric, 2) AS czas_sredni
FROM (( klient INNER JOIN zamowienie
    ON klient.nr = zamowienie.klient_nr)
         INNER JOIN pozycja
                    ON zamowienie.nr = pozycja.zamowienie_nr)
WHERE data_wysylki is not null
GROUP BY imie, nazwisko
;

