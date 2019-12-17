-- z��czenia:
-- sprawd� numery zam�wie� klient�w
SELECT imie, nazwisko, zamowienie.nr AS zamowienie_nr 
   FROM klient, zamowienie
   WHERE klient.nr=zamowienie.klient_nr
   ORDER BY nazwisko
;
-- zmie� dalsze zapytania u�ywaj�c INNER JOIN
SELECT imie, nazwisko, zamowienie.nr AS zamowienie_nr
   FROM klient INNER JOIN zamowienie 
   ON klient.nr=zamowienie.klient_nr
   ORDER BY nazwisko
;
-- sprawd� jacy klienci w og�le z�o�yli zam�wienia
SELECT imie, nazwisko
   FROM klient, zamowienie
   WHERE klient.nr=zamowienie.klient_nr
   ORDER BY nazwisko
;

-- zad P5: zmie� to zapytanie u�ywaj�c INNER JOIN
-- spowoduj, by nie wy�wietla�y si� podw�jnie nazwiska
-- tych samych klient�w.
SELECT DISTINCT imie, nazwisko
   FROM klient INNER JOIN zamowienie
   ON klient.nr=zamowienie.klient_nr
   ORDER BY nazwisko
;
