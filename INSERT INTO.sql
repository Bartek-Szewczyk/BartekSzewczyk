use projekt111

INSERT INTO producenci
VALUES (1, 'Samsung');

INSERT INTO producenci
VALUES (2, 'Sony');

INSERT INTO producenci
VALUES (3, 'Bosch');

INSERT INTO producenci
VALUES (4, 'Sharp');

INSERT INTO producenci
VALUES (5, 'Electrolux');

INSERT INTO producenci
VALUES (6, 'LG');

INSERT INTO producenci
VALUES (7, 'Beko');

INSERT INTO producenci
VALUES (8, 'Philips');



INSERT INTO kategorie
VALUES (1, 'Telewizor');

INSERT INTO kategorie
VALUES (2, 'Lodówka');

INSERT INTO kategorie
VALUES (3, 'Prakla');

--telewizory

INSERT INTO kategorie_producenci
VALUES (1,1,1);

INSERT INTO kategorie_producenci
VALUES (2,1,2);

INSERT INTO kategorie_producenci
VALUES (3,1,4);

INSERT INTO kategorie_producenci
VALUES (4,1,6);

INSERT INTO kategorie_producenci
VALUES (5,1,8);

--lodowki

INSERT INTO kategorie_producenci
VALUES (6,2,1);

INSERT INTO kategorie_producenci
VALUES (7,2,3);

INSERT INTO kategorie_producenci
VALUES (8,2,4);

INSERT INTO kategorie_producenci
VALUES (9,2,5);

INSERT INTO kategorie_producenci
VALUES (10,2,6);

INSERT INTO kategorie_producenci
VALUES (11,2,7);

--pralki

INSERT INTO kategorie_producenci
VALUES (12,3,1);

INSERT INTO kategorie_producenci
VALUES (13,3,3);

INSERT INTO kategorie_producenci
VALUES (14,3,4);

INSERT INTO kategorie_producenci
VALUES (15,3,5);

INSERT INTO kategorie_producenci
VALUES (16,3,6);

INSERT INTO kategorie_producenci
VALUES (17,3,7);



INSERT INTO produkty
VALUES (1,1,'QLED60','60cali 4k',5000,4500,500);

INSERT INTO produkty
VALUES (2,2,'KD-65','65cali 4K',6800,6100,700);

INSERT INTO produkty
VALUES (3,3,'55-BL','55cali UHD',2000,1800,300);

INSERT INTO produkty
VALUES (4,4,'OLED55','55cali 4K',5600,5200,600);

INSERT INTO produkty
VALUES (5,5,'43PUS','43cale 4k',2200,2000,300);

INSERT INTO produkty
VALUES (6,6,'RS50N','357L/144L',4100,3800,500);

INSERT INTO produkty
VALUES (7,7,'KGN39','279L/87L',2500,2400,350);

INSERT INTO produkty
VALUES (8,8,'SJ-BB0','146L/84L',1000,920,150);

INSERT INTO produkty
VALUES (9,9,'ETR1502','115L/18L',900,850,110);

INSERT INTO produkty
VALUES (10,10,'GSB360','394L/219L',3300,3000,400);

INSERT INTO produkty
VALUES (11,11,'RCNA40','253L/109L',1800,1600,300);

INSERT INTO produkty
VALUES (12,12,'ADDWASH','8KG',2000,1850,350);

INSERT INTO produkty
VALUES (13,13,'WAB202','6KG',1000,900,130);

INSERT INTO produkty
VALUES (14,14,'ES-HFH','8KG',1350,1200,200);

INSERT INTO produkty
VALUES (15,15,'EW6S','8KG',1600,1450,270);

INSERT INTO produkty
VALUES (16,16,'SteamSpa','7KG',1800,1680,320);

INSERT INTO produkty
VALUES (17,17,'WRE55','5KG',800,690,130);


INSERT INTO kontakt
VALUES (1,176328645,'marek@wp.pl');

INSERT INTO kontakt
VALUES (2,752806518,'bozena@gmail.com');

INSERT INTO kontakt
VALUES (3,641963297,'ADAM123@onet.pl');

INSERT INTO kontakt
VALUES (4,895432765,'koala767@gmail.com');

INSERT INTO kontakt
VALUES (5,675342978,'michael908@wp.pl');

INSERT INTO kontakt
VALUES (6,564210786,'polfarm@65interia.pl');

INSERT INTO kontakt
VALUES (7,908132645,'rtveuro@ovp.pl');

INSERT INTO kontakt
VALUES (8,486239789,'linia@gmail.com');

INSERT INTO kontakt
VALUES (9,527543768,'skupi@wp.pl');

INSERT INTO kontakt
VALUES (10,768823671,'bartel657@gmail.com');

INSERT INTO kontakt
VALUES (11,763456132,'sztos32@wp.pl');

INSERT INTO kontakt
VALUES (12,453986564,'KONIEC76@onet.pl');



INSERT INTO adres
VALUES (1,'Kraków','Ma³opolskie','31-416','Dobrego Pasterza',11,32);

INSERT INTO adres
VALUES (2,'Nowy S¹cz','Ma³opolskie','33-300','Wêgierska',27,null);

INSERT INTO adres
VALUES (3,'Warszawa','Mazowieckie','21-450','Józefa Pi³sudskiego',67,null);

INSERT INTO adres
VALUES (4,'Limanowa','Ma³opolskie','33-500','Opolska',15,null);

INSERT INTO adres
VALUES (5,'Stary S¹cz','Ma³opolksie','33-340','Partyzantów',46,null);

INSERT INTO adres
VALUES (6,'Katowice','Œl¹skie','40-001','Marcho³ta',56,12);

INSERT INTO adres
VALUES (7,'Gdañsk','Pomorskie','80-576','Rybacka',65,null);

INSERT INTO adres
VALUES (8,'Cyganowice','Ma³opolskie','33-345',null,13,null);

INSERT INTO adres
VALUES (9,'Krynica Zdrój','Ma³opolskie','30-200','Zdrojowa',57,null);

INSERT INTO adres
VALUES (10,'Krakówk','Ma³opolskie','31-750','Warszawska',23,21);

INSERT INTO adres
VALUES (11,'Piwniczna','Ma³opolskie','35-654','Polna',56,null);

INSERT INTO adres
VALUES (12,'Pcim','Ma³opolskie','31-816','D³uga',32,null);



INSERT INTO pracownicy
VALUES (1,1,1,'Janusz','Rejowski','M³odszy Mopowniczy');

INSERT INTO pracownicy
VALUES (2,2,2,'Mateusz','Jawor','Starszy Wyk³adowca');

INSERT INTO pracownicy
VALUES (3,3,3,'Micha³','Szewczyk','M³odszy Serwisowy');

INSERT INTO pracownicy
VALUES (4,4,4,'Karol','Nakielski','Menager');



INSERT INTO klienci
VALUES (1,5,5,'Adam','Nowak');

INSERT INTO klienci
VALUES (2,6,6,'Kinga','Kowalska');

INSERT INTO klienci
VALUES (3,7,7,'Martek','Sroka');

INSERT INTO klienci
VALUES (4,8,8,'Franciszek','Kulig');

INSERT INTO klienci
VALUES (5,9,9,'Bo¿ena','Król');

INSERT INTO klienci
VALUES (6,10,10,'Maria','Magdalena');

INSERT INTO klienci
VALUES (7,11,11,'Artur','Kowal');

INSERT INTO klienci
VALUES (8,12,12,'Przemek','Nowak');


INSERT INTO zamowienia
VALUES (1,1,1,'2019-11-26 12:28:15','tak');

INSERT INTO zamowienia
VALUES (2,2,1,'2019-12-5 11:45:59','nie');

INSERT INTO zamowienia
VALUES (3,3,2,'2019-11-30 16:56:23','tak');

INSERT INTO  zamowienia
VALUES (4,4,3,'2019-12-17 14:13:43','tak');

INSERT INTO zamowienia
VALUES (5,5,2,'2020-1-2 12:07:29','nie');

INSERT INTO zamowienia
VALUES (6,6,1,'2020-1-11 13:35:21','tak');

INSERT INTO zamowienia
VALUES (7,7,4,'2020-1-04 15:24:56','tak');

INSERT INTO zamowienia
VALUES (8,8,1,'2019-12-09 11:27:12','tak');



INSERT INTO zamowienia_produkty
VALUES (1,1,8,1);

INSERT INTO zamowienia_produkty
VALUES (2,2,5,2);

INSERT INTO zamowienia_produkty
VALUES (3,3,4,1);

INSERT INTO zamowienia_produkty
VALUES (4,4,2,3);

INSERT INTO zamowienia_produkty
VALUES (5,5,6,1);

INSERT INTO zamowienia_produkty
VALUES (6,6,16,1);

INSERT INTO zamowienia_produkty
VALUES (7,7,15,2);

INSERT INTO zamowienia_produkty
VALUES (8,8,13,1);

