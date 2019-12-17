-- wyœwietl listy ró¿nych atrybutów z tabel
SELECT imie, nazwisko FROM klient
;
SELECT opis, koszt FROM towar
;
SELECT data_wysylki, koszt_wysylki FROM zamowienie
;

-- polecenie \d klient wyœwietla dane o tablicy klientów, m.in.
-- nazwy atrybutów, mo¿e to byæ po¿yteczne;
-- zad P2: wyœwietl nazwiska i pe³ne adresy klientów;
-- wyœwietl numery i daty zamówieñ, zastosuj jakieœ uporz¹dkowanie.

SELECT imie, nazwisko, ulica_dom, kod_pocztowy, miasto FROM klient
;
SELECT nr, data_zlozenia FROM zamowienie ORDER BY data_zlozenia
;