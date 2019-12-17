-- zapytania zagnie¿d¿one (zagnie¿d¿enia nieskorelowane)
-- vs. z³¹czenia:

-- sprawdŸ jacy klienci z³o¿yli zamówienia
-- rozwi¹zanie ze z³¹czeniem
SELECT imie, nazwisko
   FROM klient K, zamowienie Z
   WHERE K.nr=Z.klient_nr
   GROUP BY K.nr, imie, nazwisko
;
-- rozwi¹zanie z zagnie¿d¿eniem
SELECT imie, nazwisko FROM klient 
  WHERE nr IN (
    SELECT klient_nr FROM zamowienie Z 
    )
      ORDER BY nazwisko
;
-- znajdŸ klientów którzy nie z³o¿yli zamówieñ
SELECT imie, nazwisko FROM klient 
  WHERE nr NOT IN (
    SELECT klient_nr FROM zamowienie Z
    )
      ORDER BY nazwisko
;
-- uwaga pierwsze rozwi¹zanie nie daje mo¿liwoœci adaptacji do kolejnego pytania

-- zad P7: wypisz 
-- daty z³o¿enia zamówieñ nie maj¹cych ¿adnych pozycji, 
-- opisy towarów niezamawianych, 
-- opisy towarów z nieokreœlonym kodem kreskowym
-- (uwaga: s¹ takie towary, to zapytanie mo¿e dawaæ nieoczekiwany wynik, 
-- nale¿y zachowaæ ostro¿noœæ)

SELECT data_zlozenia FROM zamowienie 
  WHERE nr NOT IN (
    SELECT zamowienie_nr FROM pozycja P
    )
      ORDER BY data_zlozenia
;
SELECT opis FROM towar 
  WHERE nr NOT IN (
    SELECT towar_nr FROM pozycja P
    )
;
SELECT opis FROM towar 
  WHERE nr NOT IN (
    SELECT towar_nr FROM kod_kreskowy KK where towar_nr is not null
    )
;

