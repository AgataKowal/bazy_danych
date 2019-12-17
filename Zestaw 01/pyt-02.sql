-- wy�wietl listy r�nych atrybut�w z tabel
SELECT imie, nazwisko FROM klient
;
SELECT opis, koszt FROM towar
;
SELECT data_wysylki, koszt_wysylki FROM zamowienie
;

-- polecenie \d klient wy�wietla dane o tablicy klient�w, m.in.
-- nazwy atrybut�w, mo�e to by� po�yteczne;
-- zad P2: wy�wietl nazwiska i pe�ne adresy klient�w;
-- wy�wietl numery i daty zam�wie�, zastosuj jakie� uporz�dkowanie.

SELECT imie, nazwisko, ulica_dom, kod_pocztowy, miasto FROM klient
;
SELECT nr, data_zlozenia FROM zamowienie ORDER BY data_zlozenia
;