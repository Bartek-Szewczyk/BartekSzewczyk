use projekt111;

create table produkty(
	id_produkt INT NOT NULL,
	id_kategorie_producenci INT NOT NULL,
	nazwa_produktu VARCHAR(50),
	typ_produktu varchar (50),
	cena DECIMAL(10,2),
	cena_z_rabatem DECIMAL(10,2), --kazdy produkt ma indywidualny rabat i zysk sklepu
	zysk_sklepu DECIMAL(10,2),
	CONSTRAINT pk_pr PRIMARY KEY (id_produkt)
);

create table kategorie_producenci(
	id_kategorie_producenci INT NOT NULL,
	id_kategoria INT NOT NULL,
	id_producent INT NOT NULL,
	CONSTRAINT pk_kp PRIMARY KEY (id_kategorie_producenci)
);

create table producenci(
	id_producent INT NOT NULL,
	nazwa_producenta VARCHAR (20),
	CONSTRAINT pk_marka PRIMARY KEY (id_producent)
);

create table kategorie(
	id_kategoria INT NOT NULL,
	nazwa_kategorii VARCHAR(20),
	CONSTRAINT pk_kat PRIMARY KEY (id_kategoria)
);

create table zamowienia_produkty(
	id_zamowione_produkty INT NOT NULL,
	id_zamowienia INT NOT NULL,
	id_produkt INT NOT NULL,
	ilosc INT,
	CONSTRAINT pk_zp PRIMARY KEY (id_zamowione_produkty)
);

create table zamowienia(
	id_zamowienia INT NOT NULL,
	id_klient INT NOT NULL,
	id_pracownik INT NOT NULL,
	data_zamowienia DATETIME,
	zaplacono VARCHAR(15),
	CONSTRAINT pk_z PRIMARY KEY (id_zamowienia)
);

create table klienci(
	id_klient INT NOT NULL,
	id_adres INT NOT NULL,
	id_kontakt INT NOT NULL,
	imie VARCHAR(25),
	nazwisko VARCHAR(25),
	CONSTRAINT pk_k PRIMARY KEY (id_klient)
);

create table pracownicy(
	id_pracownik INT NOT NULL,
	id_kontakt INT NOT NULL,
	id_adres INT NOT NULL,
	imie VARCHAR(25),
	nazwisko VARCHAR(25),
	stanowisko varchar(30),
	CONSTRAINT pk_p PRIMARY KEY (id_pracownik)
);

create table adres(
	id_adres INT NOT NULL,
	miasto VARCHAR(20),
	wojewodztwo VARCHAR(20),
	kod_pocztowy VARCHAR(20),
	ulica VARCHAR(30),
	nr_domu VARCHAR(10),
	nr_lokalu VARCHAR(10),
	CONSTRAINT pk_a PRIMARY KEY (id_adres)
);

create table kontakt(
	id_kontakt INT NOT NULL,
	telefon VARCHAR(14),
	email VARCHAR(40),
	CONSTRAINT pk_kon PRIMARY KEY (id_kontakt)
);



ALTER TABLE produkty 
ADD CONSTRAINT fk_prkat 
FOREIGN KEY (id_kategorie_producenci) REFERENCES kategorie_producenci (id_kategorie_producenci);

ALTER TABLE kategorie_producenci 
ADD CONSTRAINT fk_pro
FOREIGN KEY (id_producent) REFERENCES producenci (id_producent);

ALTER TABLE kategorie_producenci
ADD CONSTRAINT fk_kat
FOREIGN KEY (id_kategoria) REFERENCES kategorie (id_kategoria);

ALTER TABLE zamowienia_produkty 
ADD CONSTRAINT fk_zpp
FOREIGN KEY (id_produkt) REFERENCES produkty (id_produkt);

ALTER TABLE zamowienia_produkty
ADD CONSTRAINT fk_zam
FOREIGN KEY (id_zamowienia) REFERENCES zamowienia (id_zamowienia);

ALTER TABLE zamowienia 
ADD CONSTRAINT fk_kli
FOREIGN KEY (id_klient) REFERENCES klienci (id_klient);

ALTER TABLE zamowienia 
ADD CONSTRAINT fk_pra
FOREIGN KEY (id_pracownik) REFERENCES pracownicy (id_pracownik);

ALTER TABLE klienci 
ADD CONSTRAINT fk_kon 
FOREIGN KEY (id_kontakt) REFERENCES kontakt (id_kontakt);

ALTER TABLE klienci 
ADD CONSTRAINT fk_adr
FOREIGN KEY (id_adres) REFERENCES adres (id_adres);

ALTER TABLE pracownicy 
ADD CONSTRAINT fk_konp
FOREIGN KEY (id_kontakt) REFERENCES kontakt (id_kontakt);

ALTER TABLE pracownicy 
ADD CONSTRAINT fk_adrp
FOREIGN KEY (id_adres) REFERENCES adres (id_adres);

