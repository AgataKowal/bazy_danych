-- zapytania zagnie�d�one (zagnie�d�enia nieskorelowane)
-- vs. z��czenia:

-- sprawd� jacy klienci z�o�yli zam�wienia
-- rozwi�zanie ze z��czeniem
SELECT imie, nazwisko
   FROM klient K, zamowienie Z
   WHERE K.nr=Z.klient_nr
   GROUP BY K.nr, imie, nazwisko
;
-- rozwi�zanie z zagnie�d�eniem
SELECT imie, nazwisko FROM klient 
  WHERE nr IN (
    SELECT klient_nr FROM zamowienie Z 
    )
      ORDER BY nazwisko
;
-- znajd� klient�w kt�rzy nie z�o�yli zam�wie�
SELECT imie, nazwisko FROM klient 
  WHERE nr NOT IN (
    SELECT klient_nr FROM zamowienie Z
    )
      ORDER BY nazwisko
;
-- uwaga pierwsze rozwi�zanie nie daje mo�liwo�ci adaptacji do kolejnego pytania

-- zad P7: wypisz 
-- daty z�o�enia zam�wie� nie maj�cych �adnych pozycji, 
-- opisy towar�w niezamawianych, 
-- opisy towar�w z nieokre�lonym kodem kreskowym
-- (uwaga: s� takie towary, to zapytanie mo�e dawa� nieoczekiwany wynik, 
-- nale�y zachowa� ostro�no��)

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

