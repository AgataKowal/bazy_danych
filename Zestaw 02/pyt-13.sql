-- wymieñ pary zamówieñ pochodz¹cych od tego samego klienta
SELECT Z1.nr AS zam1, Z2.nr AS zam2, Z2.klient_nr
FROM zamowienie AS Z1, zamowienie Z2
WHERE Z1.klient_nr=Z2.klient_nr
      AND z1.nr<z2.nr;

-- zad P13: wymieñ pary klientów mieszkaj¹cych w tym samym mieœcie.
-- Wymieñ pary towarów maj¹cych tê sam¹ cenê, ten sam koszt.
SELECT K1.nr AS klient_1, K2.nr AS klient_2, K2.miasto
FROM klient AS K1, klient K2
WHERE K1.miasto=K2.miasto
      AND K1.nr<K2.nr;

SELECT T1.nr AS towar_1, T2.nr AS towar_2, T2.cena
FROM towar AS T1, towar T2
WHERE T1.cena=T2.cena
      AND T1.nr<T2.nr;
	  
SELECT T1.nr AS towar_1, T2.nr AS towar_2, T2.koszt
FROM towar AS T1, towar T2
WHERE T1.koszt=T2.koszt
      AND T1.nr<T2.nr;
