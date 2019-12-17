-- zwiêksz cenê towarów o 1, ale tylko tych o znanej cenie,
-- do opisu dodaj s³owa 'nowa cena'
UPDATE towar SET cena = cena+1, opis = opis||'; nowa cena'
  WHERE cena IS NOT NULL
;
-- towarom o nieznanej cenie wpisz cenê 0,
-- do opisu dodaj s³owa 'cena nieznana'
UPDATE towar SET cena = 0, opis = opis||'; cena nieznana'
  WHERE cena IS NULL
;
-- towarom niezamawianym wpisz koszt minimalny spoœród wszystkich kosztów
UPDATE towar SET koszt=( SELECT min(koszt) FROM towar )
  WHERE nr NOT IN (
    SELECT towar_nr FROM pozycja
  )
;
-- towarom zamawianym zwiêksz cenê o 5%
UPDATE towar SET cena = cena*1.05
  WHERE EXISTS ( 
    SELECT 1 FROM pozycja WHERE towar_nr=nr 
  )
;

-- zad 14: towarom nie maj¹cym kodu kreskowego dodaj do opisu s³owa 'brak kodu', 
-- towarom maj¹cym kod dodaj s³owo 'KOD' (do czego mam dodaæ to s³owo?)
-- towarom, które nie maj¹ ceny wstaw cenê œredni¹ z tabeli

UPDATE towar SET opis = opis||'; brak kodu'
WHERE nr NOT IN (
    SELECT towar_nr FROM kod_kreskowy KK where towar_nr is not null
    )
;

UPDATE towar SET opis = opis||'; KOD'
WHERE nr IN (
    SELECT towar_nr FROM kod_kreskowy KK where towar_nr is not null
    )
;

UPDATE towar SET cena=round(( SELECT avg(cena) FROM towar )::numeric,2)
  WHERE cena IS NULL
;

