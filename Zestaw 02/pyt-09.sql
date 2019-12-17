/* z tabel klient�w, zam�wienie� i ich pozycji oblicz zysk 
   na poszczeg�lnych towarach dla poszczeg�lnych klient�w
*/
SELECT imie, nazwisko, opis, sum(ilosc),
       sum(ilosc) * (cena - koszt) AS zysk
   FROM  (( klient 
             INNER JOIN zamowienie 
                ON klient.nr = zamowienie.klient_nr
          ) INNER JOIN pozycja
              ON zamowienie.nr = pozycja.zamowienie_nr
         ) INNER JOIN towar 
           ON pozycja.towar_nr = towar.nr
	GROUP BY klient.nr, towar.nr
;

-- zad P9: uporz�dkuj powy�szy wydruk w/g klient�w
-- odrzu� wiersze, dla kt�rych nie da si� okre�li� zysku.

SELECT imie, nazwisko, opis, ilosc, zysk FROM
(SELECT imie, nazwisko, opis, sum(ilosc) AS ilosc,
       sum(ilosc) * (cena - koszt) AS zysk
   FROM  (( klient 
             INNER JOIN zamowienie 
                ON klient.nr = zamowienie.klient_nr
          ) INNER JOIN pozycja
              ON zamowienie.nr = pozycja.zamowienie_nr
         ) INNER JOIN towar 
           ON pozycja.towar_nr = towar.nr
	GROUP BY klient.nr, towar.nr
    ORDER BY nazwisko) AS mySubtable
	WHERE zysk is not null
;