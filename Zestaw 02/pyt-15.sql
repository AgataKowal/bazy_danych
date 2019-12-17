-- ZA�O�ENIE: nie ma problem�w w integralno�ci� referencyjn�
-- tzn. klucze obce maj� dodane ON DELETE CASCADE
-- albo usuwamy elementy nie b�d�ce adresatem klucza obcego

-- usu� z tabeli towar�w wszelkie donice, ale tylko je�li nie s� 
-- zamawiane (innych nie da si� usun�� maj�c zam�wienia)
DELETE FROM towar
  WHERE opis LIKE 'donica%' AND nr NOT IN (
    SELECT towar_nr FROM pozycja
    )
;

-- usu� towary niezamawiane
DELETE FROM towar
  WHERE nr NOT IN (
    SELECT towar_nr FROM pozycja
    )
;

-- usu� towary o nieznanej cenie
-- (przedtem by� mo�e warto usun�� wszelkie pozycje faktur
--  DELETE from pozycja;)
DELETE FROM towar
  WHERE cena IS NULL
;

-- zad 15: usu� klient�w z Sopotu,
-- usu� klient�w, kt�rych telefonu nie znamy
-- usu� kody kreskowe nie odpowiadaj�ce �adnym towarom
-- usu� klient�w, kt�rzy nie z�o�yli �adnego zam�wienia
-- usu� zam�wienie, kt�re nie posiada pozycji
-- usu� towary nie posiadaj�ce kodu kreskowego

DELETE FROM klient
  WHERE miasto LIKE '%Sopot%'
;

DELETE FROM klient
  WHERE telefon IS NULL
;

-- to zapytanie zg�osi b��d: ERROR:  update or delete on table "klient" violates foreign key constraint "klient_fk" on table "zamowienie"
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

-- to zapytanie rowniez zwroci b��d: ERROR:  update or delete on table "towar" violates foreign key constraint "pozycja_towar_nr_fk" on table "pozycja"
-- DETAIL:  Key (nr)=(10) is still referenced from table "pozycja".
-- SQL state: 23503