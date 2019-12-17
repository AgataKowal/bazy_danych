-- zapytania zagnie¿d¿one (zagnie¿d¿enia skorelowane)

-- sprawdŸ jacy klienci nie zamówili niczego
SELECT imie, nazwisko FROM klient K
   WHERE NOT EXISTS (
   SELECT *
     FROM zamowienie Z INNER JOIN pozycja P 
     ON  K.nr=Z.klient_nr
     AND P.zamowienie_nr=Z.nr 
)
;

-- zad P8: u¿yj INNER JOIN szukaj¹c klientów, którzy z³o¿yli zamówienia, 
-- znajdŸ klientów, którzy z³o¿yli puste zamówienia (tzn. bez pozycji).

SELECT DISTINCT imie, nazwisko FROM klient K
   WHERE EXISTS (
   SELECT *
     FROM zamowienie Z INNER JOIN pozycja P 
     ON  K.nr=Z.klient_nr
     AND P.zamowienie_nr=Z.nr 
)
;
