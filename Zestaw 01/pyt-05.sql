-- z³¹czenia:
-- sprawdŸ numery zamówieñ klientów
SELECT imie, nazwisko, zamowienie.nr AS zamowienie_nr 
   FROM klient, zamowienie
   WHERE klient.nr=zamowienie.klient_nr
   ORDER BY nazwisko
;
-- zmieñ dalsze zapytania u¿ywaj¹c INNER JOIN
SELECT imie, nazwisko, zamowienie.nr AS zamowienie_nr
   FROM klient INNER JOIN zamowienie 
   ON klient.nr=zamowienie.klient_nr
   ORDER BY nazwisko
;
-- sprawdŸ jacy klienci w ogóle z³o¿yli zamówienia
SELECT imie, nazwisko
   FROM klient, zamowienie
   WHERE klient.nr=zamowienie.klient_nr
   ORDER BY nazwisko
;

-- zad P5: zmieñ to zapytanie u¿ywaj¹c INNER JOIN
-- spowoduj, by nie wyœwietla³y siê podwójnie nazwiska
-- tych samych klientów.
SELECT DISTINCT imie, nazwisko
   FROM klient INNER JOIN zamowienie
   ON klient.nr=zamowienie.klient_nr
   ORDER BY nazwisko
;
