use projekt111


--Kto, co kupi³ i za ile

SELECT k.imie,nazwisko,kat.nazwa_kategorii, pr.nazwa_producenta,p.nazwa_produktu,typ_produktu,cena,cena_z_rabatem
FROM klienci k INNER JOIN zamowienia z ON k.id_klient=z.id_klient 
INNER JOIN zamowienia_produkty zp ON z.id_zamowienia=zp.id_zamowienia
INNER JOIN produkty p ON zp.id_produkt=p.id_produkt
INNER JOIN kategorie_producenci kp ON p.id_kategorie_producenci=kp.id_kategorie_producenci
INNER JOIN kategorie kat ON kp.id_kategoria=kat.id_kategoria
INNER JOIN producenci pr ON kp.id_producent=pr.id_producent;


--jaki jest zysk sklepu w podanym okresie czasu

SELECT SUM(p.zysk_sklepu) AS zysk_sklepu_styczeñ2020
FROM produkty p INNER JOIN zamowienia_produkty zp ON p.id_produkt=zp.id_produkt
INNER JOIN zamowienia z ON zp.id_zamowienia=z.id_zamowienia WHERE data_zamowienia BETWEEN '2020-01-01' AND '2020-02-01';


--który produkt nigdy siê nie sprzeda³

SELECT kat.nazwa_kategorii, pr.nazwa_producenta,p.nazwa_produktu,typ_produktu, id_zamowione_produkty
FROM zamowienia_produkty zp RIGHT JOIN produkty p ON zp.id_produkt=p.id_produkt
RIGHT JOIN kategorie_producenci kp ON p.id_kategorie_producenci=kp.id_kategorie_producenci
INNER JOIN kategorie kat ON kp.id_kategoria=kat.id_kategoria
INNER JOIN producenci pr ON kp.id_producent=pr.id_producent
WHERE id_zamowione_produkty IS NULL;


--bilans sprzeda¿y dla ka¿dego producenta

SELECT p.nazwa_producenta,SUM(cena_z_rabatem*ilosc) AS bilans
FROM producenci p INNER JOIN kategorie_producenci kp ON p.id_producent=kp.id_producent
INNER JOIN produkty pr ON kp.id_kategorie_producenci=pr.id_kategorie_producenci
LEFT JOIN zamowienia_produkty zp ON pr.id_produkt=zp.id_produkt GROUP BY nazwa_producenta;
