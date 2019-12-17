-- ZA£O¯ENIE: nie ma problemów w integralnoœci¹ referencyjn¹
-- tzn. klucze obce maj¹ dodane ON DELETE CASCADE
-- albo usuwamy elementy nie bêd¹ce adresatem klucza obcego

-- usuñ z tabeli towarów wszelkie donice, ale tylko jeœli nie s¹ 
-- zamawiane (innych nie da siê usun¹æ maj¹c zamówienia)
DELETE FROM towar
  WHERE opis LIKE 'donica%' AND nr NOT IN (
    SELECT towar_nr FROM pozycja
    )
;

-- usuñ towary niezamawiane
DELETE FROM towar
  WHERE nr NOT IN (
    SELECT towar_nr FROM pozycja
    )
;

-- usuñ towary o nieznanej cenie
-- (przedtem byæ mo¿e warto usun¹æ wszelkie pozycje faktur
--  DELETE from pozycja;)
DELETE FROM towar
  WHERE cena IS NULL
;

-- zad 15: usuñ klientów z Sopotu,
-- usuñ klientów, których telefonu nie znamy
-- usuñ kody kreskowe nie odpowiadaj¹ce ¿adnym towarom
-- usuñ klientów, którzy nie z³o¿yli ¿adnego zamówienia
-- usuñ zamówienie, które nie posiada pozycji
-- usuñ towary nie posiadaj¹ce kodu kreskowego

DELETE FROM klient
  WHERE miasto LIKE '%Sopot%'
;

DELETE FROM klient
  WHERE telefon IS NULL
;

-- to zapytanie zg³osi b³¹d: ERROR:  update or delete on table "klient" violates foreign key constraint "klient_fk" on table "zamowienie"
-- DETAIL:  Key (nr)=(8) is still referenced from table "zamowienie".
-- SQL state: 23503

DELETE FROM kod_kreskowy 
WHERE towar_nr IN (
	SELECT towar_nr FROM kod_kreskowy
	WHERE towar_nr NOT IN(SELECT nr FROM towar))
	OR towar_nr IS NULL;

DELETE FROM klient
WHERE nr NOT IN (SELECT klient_nr FROM zamowienie);

DELETE FROM zamowienie
WHERE nr NOT IN (SELECT zamowienie_nr FROM pozycja);

DELETE FROM towar
WHERE nr NOT IN (SELECT towar_nr FROM kod_kreskowy kk WHERE kk.kod IS NOT NULL);

-- to zapytanie rowniez zwroci b³¹d: ERROR:  update or delete on table "towar" violates foreign key constraint "pozycja_towar_nr_fk" on table "pozycja"
-- DETAIL:  Key (nr)=(10) is still referenced from table "pozycja".
-- SQL state: 23503