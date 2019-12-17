-- funkcje agreguj�ce

-- wypisz zam�wienia klient�w o wi�cej ni� jednej pozycji
SELECT imie, nazwisko, zamowienie.nr as zamowienie_nr, count(*) as "ile pozycji"
   FROM (( klient INNER JOIN zamowienie
             ON klient.nr = zamowienie.klient_nr
         ) INNER JOIN pozycja
             ON zamowienie.nr = pozycja.zamowienie_nr
        )
   GROUP BY imie, nazwisko, zamowienie.nr
   HAVING count(*)>1
;

-- zad P10: z tabel klient�w i zam�wie� oblicz minimalny, maksymalny
-- i �redni czas oczekiwania przez poszczeg�lnych klient�w (zam�wienia
-- niezrealizowane nie licz� si� do �redniej).

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

