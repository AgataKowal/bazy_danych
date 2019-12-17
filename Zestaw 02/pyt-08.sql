-- zapytania zagnie�d�one (zagnie�d�enia skorelowane)

-- sprawd� jacy klienci nie zam�wili niczego
SELECT imie, nazwisko FROM klient K
   WHERE NOT EXISTS (
   SELECT *
     FROM zamowienie Z INNER JOIN pozycja P 
     ON  K.nr=Z.klient_nr
     AND P.zamowienie_nr=Z.nr 
)
;

-- zad P8: u�yj INNER JOIN szukaj�c klient�w, kt�rzy z�o�yli zam�wienia, 
-- znajd� klient�w, kt�rzy z�o�yli puste zam�wienia (tzn. bez pozycji).

SELECT DISTINCT imie, nazwisko FROM klient K
   WHERE EXISTS (
   SELECT *
     FROM zamowienie Z INNER JOIN pozycja P 
     ON  K.nr=Z.klient_nr
     AND P.zamowienie_nr=Z.nr 
)
;
