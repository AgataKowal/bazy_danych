-- wstaw do tabeli klient�w nowego klienta, nie podaj�c jego telefonu.
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pani','Szcz�sna','Jadwiga','81-444','Gdynia','Bema 41a/12',NULL);
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom)
   values('Pan','�ukowski','Bernard','81-620','Gdynia','G�rnicza 29');

-- wstaw do tabeli towar�w towar, kt�rego opis zawiera znak apostrofu.  
insert into towar(opis, koszt, cena) 
   values(E'ramka do fotografii 4\'x6\'', 7.54, 9.95);

-- wstaw do zam�wienie, u�yj "bezpiecznego" formatu daty ISO, 
-- tj. niezale�nego od stylu daty
insert into zamowienie(klient_nr, data_zlozenia, data_wysylki, koszt_wysylki) 
       values(3,'2019-02-13',NULL, 2.99);

-- zad 16: wstaw nowy kod kreskowy dla jakiego� towaru
-- i dwa inne kody nie podaj�c towaru, kt�remu odpowiadaj�.
-- Wstaw klienta o nazwisku O'Hara.
-- Wstaw zam�wienie, nie podaj�c daty wysy�ki, u�yj formatu daty ISO

insert into kod_kreskowy(kod, towar_nr)
	values(1231231231231,1);
	
insert into kod_kreskowy(kod, towar_nr)
	values(3453453453453, NULL);
	
insert into kod_kreskowy(kod)
	values(4564564564564);
	
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pan','O''Hara','Jan','80-292','Gda�sk','G�ralska 43a/1','600858321');
	
insert into zamowienie(klient_nr, data_zlozenia, koszt_wysylki) 
       values(5,'2020-04-16', 3.99);