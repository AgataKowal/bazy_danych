SET DATESTYLE TO 'European,German';
SET client_encoding='utf8';

INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (1, 'Pani', 'Małgorzata', 'Kuśmierek', '81-124', 'Gdynia', NULL, '5056252840');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (2, 'Pan ', 'Jan', 'Chodkiewicz', '81-737', 'Gdynia', 'Chwarznieńska 33/5', '6126240860');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (3, 'Pani', 'Jadwiga', 'Szczęsna', '81-444', 'Gdynia', 'Bema 41a/12', '6936243741');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (4, 'Pan ', 'Bernard', 'Żukowski', '81-620', 'Gdynia', 'Górnicza 29', '586230799');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (5, 'Pan ', 'Jan', 'Soroczyński', '80-230', 'Gdańsk', 'Al. Hallera', '5053090788');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (6, 'Pani', 'Marzena', 'Niezabitowska-Nasiadko', '80-619', 'Gdańsk', 'Focha 39-41 m.66', '6123099102');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (7, 'Pani', 'Agnieszka', 'Kołak', '80-832', 'Gdańsk', 'Wąwóz 4', NULL);
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (8, 'Pani', 'Agnieszka', 'Kołak', '81-234', 'Kielno', '4', NULL);
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (9, NULL, 'Ewa', 'Hałasa', '80-511', 'Gdańsk', 'Dywizjonu 303/303', '583483240');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (10, 'Pan ', 'Andrzej', 'Sosnowy', '80-266', 'Gdańsk', 'Leśna Góra 41h/088', '583467184');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (11, 'Pani', 'Barbara', 'Songin', '80-376', 'Gdańsk', 'Grunwaldzka 1024/128', '5055528743');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (12, 'Pani', 'Urszula', 'Wróblewicz-Terlecka', '81-831', 'Sopot', 'Malczewskiego 99 m.34a', '6935503001');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (13, 'Pan ', 'Bogdan', 'Soroczyński', '81-825', 'Tczew', 'Małopolska 12', '585553161');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (14, 'Pani', 'Wiesława', 'Lutomska-Cudny', '81-405', 'Gdańsk', 'Legionów 142 lok. 13', '601622788');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (15, NULL, 'Wojciech', 'Miszke', '81-831', 'Sopot', 'Mazowiecka 73/44', '6125510353');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (16, 'Pan ', 'Marcin', 'Zaorski', '89-534', 'Dziewięć Włók', NULL, NULL);
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (17, 'Pani', 'Grażyna', 'Wiśniewska', '84-586', 'Gdakowo', '44', '58');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (18, 'Pan ', 'Henryk', 'Wierciński', '83-400', 'Gardeja Pierwsza', '11', '5055362237');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (19, 'Pan ', 'Gerard', 'Bazior', '87-109', 'Kwidzyn', 'Odrowskiego', '582616374');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (20, 'Pani', 'Grażyna', 'Nowak-Dybicka', '89-794', 'Prabuty', NULL, '6932781431');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (21, NULL, '', 'Klub Spatif', '81-759', 'Sopot', 'Bohaterów Monte Cassino 52/54', '585502683');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (22, 'Pani', 'Wiesława', 'Lutomska-Cudny', '81-574', 'Gdynia', 'Stolemów 14', '692286630');
INSERT INTO klient (nr, tytul, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, telefon) VALUES (23, 'Pan ', 'Wiesław', 'Szymański', '81-543', 'Gdynia', 'Światowida 135', NULL);

INSERT INTO towar (nr, opis, koszt, cena) VALUES (1, 'układanka drewniana', 15.23, 21.95);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (2, 'układanka typu puzzle', 16.43, 19.99);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (3, 'kostka Rubika', 7.45, 11.49);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (4, 'Linux CD', 1.99, 2.49);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (5, 'chusteczki higieniczne', 2.11, 3.99);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (6, 'ramka do fotografii 4''x6''', 7.54, 9.95);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (7, 'wentylator', 7.45, 15.75);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (8, 'ramka do fotografii 3''x4''', 13.36, 19.95);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (9, 'szczotka do zębów', 0.75, 1.45);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (10, 'moneta srebrna z Papieżem', 20.00, 20.00);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (11, 'torba plastikowa', 0.01, 0.00);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (12, 'nożyczki drewniane', 8.18, NULL);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (13, 'kompas wielofunkcyjny', 22.10, NULL);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (14, 'obciążniki do obrusa', 0.78, NULL);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (15, 'donica mała', 13.36, NULL);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (16, 'donica średnia', 17.12, 19.99);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (17, 'donica duża', 26.43, NULL);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (18, 'zegarek damski', 14.89, NULL);
INSERT INTO towar (nr, opis, koszt, cena) VALUES (19, 'zegarek męski', 26.43, NULL);

INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('6241527836173', 1);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('6241574635234', 2);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('6264537836173', 3);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('6241527746363', 3);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('7465743843764', 4);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('3453458677628', 5);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('6434564564544', 6);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('8476736836876', 7);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('6241234586487', 8);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('9473625532534', 8);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('9473627464543', 8);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('4587263646878', 9);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('9879879837489', 11);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('2239872376872', 11);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('5229767712406', 12);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('1438568924292', 13);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('1969299228848', NULL);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('4335732187300', NULL);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('8198701673279', 15);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('1839494766592', 16);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('4892840112975', 17);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('8444435195272', 18);
INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('5892327956805', 18);

INSERT INTO zamowienie (nr, klient_nr, data_zlozenia, data_wysylki, koszt_wysylki) VALUES (1, 3, '2019-03-13', '2019-03-17', 2.99);
INSERT INTO zamowienie (nr, klient_nr, data_zlozenia, data_wysylki, koszt_wysylki) VALUES (2, 8, '2019-01-12', '2019-01-22', 0.00);
INSERT INTO zamowienie (nr, klient_nr, data_zlozenia, data_wysylki, koszt_wysylki) VALUES (3, 14, '2019-01-31', '2019-02-09', 3.99);
INSERT INTO zamowienie (nr, klient_nr, data_zlozenia, data_wysylki, koszt_wysylki) VALUES (4, 13, '2019-02-27', '2019-03-09', 2.99);
INSERT INTO zamowienie (nr, klient_nr, data_zlozenia, data_wysylki, koszt_wysylki) VALUES (5, 8, '2019-01-07', '2019-01-07', 0.00);
INSERT INTO zamowienie (nr, klient_nr, data_zlozenia, data_wysylki, koszt_wysylki) VALUES (6, 3, '2019-03-23', '2019-03-28', 1.99);
INSERT INTO zamowienie (nr, klient_nr, data_zlozenia, data_wysylki, koszt_wysylki) VALUES (7, 5, '2019-02-04', NULL, 2.99);
INSERT INTO zamowienie (nr, klient_nr, data_zlozenia, data_wysylki, koszt_wysylki) VALUES (8, 13, '2019-01-11', NULL, 5.99);
INSERT INTO zamowienie (nr, klient_nr, data_zlozenia, data_wysylki, koszt_wysylki) VALUES (9, 4, '2019-03-22', '2019-03-27', 6.99);
INSERT INTO zamowienie (nr, klient_nr, data_zlozenia, data_wysylki, koszt_wysylki) VALUES (10, 4, '2019-02-01', '2019-02-12', 0.99);
INSERT INTO zamowienie (nr, klient_nr, data_zlozenia, data_wysylki, koszt_wysylki) VALUES (11, 22, '2019-01-13', '2019-01-27', 0.99);
INSERT INTO zamowienie (nr, klient_nr, data_zlozenia, data_wysylki, koszt_wysylki) VALUES (12, 3, '2019-02-21', '2019-03-11', 0.99);

INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (1, 4, 1);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (1, 7, 5);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (1, 9, 2);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (2, 1, 12);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (2, 10, 1);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (2, 7, 2);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (2, 4, 2);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (3, 2, 1);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (3, 1, 1);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (4, 5, 2);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (5, 1, 3);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (5, 3, 4);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (6, 15, 2);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (6, 5, 1);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (6, 13, 6);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (8, 13, 3);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (8, 3, 2);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (9, 14, 4);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (9, 5, 4);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (9, 7, 5);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (9, 11, 1);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (10, 7, 1);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (11, 3, 2);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (11, 5, 1);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (12, 15, 1);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (12, 5, 2);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (12, 19, 1);
INSERT INTO pozycja (zamowienie_nr, towar_nr, ilosc) VALUES (12, 8, 3);

INSERT INTO zapas (towar_nr, ilosc) VALUES (1, 12);
INSERT INTO zapas (towar_nr, ilosc) VALUES (2, 2);
INSERT INTO zapas (towar_nr, ilosc) VALUES (4, 8);
INSERT INTO zapas (towar_nr, ilosc) VALUES (5, 3);
INSERT INTO zapas (towar_nr, ilosc) VALUES (7, 8);
INSERT INTO zapas (towar_nr, ilosc) VALUES (8, 18);
INSERT INTO zapas (towar_nr, ilosc) VALUES (10, 1);
INSERT INTO zapas (towar_nr, ilosc) VALUES (12, 8);
INSERT INTO zapas (towar_nr, ilosc) VALUES (13, 5);
INSERT INTO zapas (towar_nr, ilosc) VALUES (15, 14);
INSERT INTO zapas (towar_nr, ilosc) VALUES (16, 11);
INSERT INTO zapas (towar_nr, ilosc) VALUES (18, 9);
INSERT INTO zapas (towar_nr, ilosc) VALUES (19, 1);

--
-- Name: klient_nr_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--
SELECT pg_catalog.setval('klient_nr_seq', 23, true);
--
-- Name: towar_nr_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--
SELECT pg_catalog.setval('towar_nr_seq', 19, true);
--
-- Name: zamowienie_nr_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--
SELECT pg_catalog.setval('zamowienie_nr_seq', 12, true);
--
-- PostgreSQL database dump complete
--

