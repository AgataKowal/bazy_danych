-- zwi�ksz cen� towar�w o 1, ale tylko tych o znanej cenie,
-- do opisu dodaj s�owa 'nowa cena'
UPDATE towar SET cena = cena+1, opis = opis||'; nowa cena'
  WHERE cena IS NOT NULL
;
-- towarom o nieznanej cenie wpisz cen� 0,
-- do opisu dodaj s�owa 'cena nieznana'
UPDATE towar SET cena = 0, opis = opis||'; cena nieznana'
  WHERE cena IS NULL
;
-- towarom niezamawianym wpisz koszt minimalny spo�r�d wszystkich koszt�w
UPDATE towar SET koszt=( SELECT min(koszt) FROM towar )
  WHERE nr NOT IN (
    SELECT towar_nr FROM pozycja
  )
;
-- towarom zamawianym zwi�ksz cen� o 5%
UPDATE towar SET cena = cena*1.05
  WHERE EXISTS ( 
    SELECT 1 FROM pozycja WHERE towar_nr=nr 
  )
;

-- zad 14: towarom nie maj�cym kodu kreskowego dodaj do opisu s�owa 'brak kodu', 
-- towarom maj�cym kod dodaj s�owo 'KOD' (do czego mam doda� to s�owo?)
-- towarom, kt�re nie maj� ceny wstaw cen� �redni� z tabeli

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

