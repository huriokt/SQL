CREATE TABLE ogrenciler
(
ogrenci_no char(7),
isim varchar(20),
soyisim varchar(25),
not_ort real,--Ondalikli sayilar icin kullanilir(double)
kayit_tarih date
);

--VAROLAN BIR TABLODAN YENIBIR TABLO OLUSTURMA
CREATE TABLE NOTLAR
AS
SELECT isim,not_ort FROM ogrenciler;

select * from notlar;

INSERT INTO notlar Values('bilge',98.5);
INSERT INTO notlar Values('elif',78.5);
INSERT INTO notlar Values('nigar',58.5);
INSERT INTO notlar Values('nuriye',78.5);
INSERT INTO notlar Values('kerem',91.5);

select * from notlar;

--VAROLAN BIR TABLODAN YENIBIR TABLO OLUSTURMA
CREATE TABLE talebeler
(isim varchar(10),
notlar real);
INSERT INTO notlar Values('bilge',98.5);
INSERT INTO notlar Values('elif',78.5);
INSERT INTO notlar Values('nigar',58.5);
INSERT INTO notlar Values('nuriye',78.5);
INSERT INTO notlar Values('kerem',91.5);
select * from notlar;

--CONSTRAINT
--UNIQEU


CREATE TABLE ogrenciler2
(
ogrenci_no char(7) unique,
isim varchar(20) not null,
soyisim varchar(25),
not_ort real,
kayit_tarih date
);
select * from ogrenciler2;

INSERT INTO ogrenciler2 VALUES ('1234567','Erol','Evren',75.5,now());
INSERT INTO ogrenciler2 VALUES ('1234568','ali','veli',75.5,now());
INSERT INTO ogrenciler2 VALUES ((ogrenci_no,soyisim,ot_ort )VALUES('1234568','ali','veli',75.5); NOT  NULL kisitlamasi
		
CREATE TABLE ogrenciler3
(
ogrenci_no char(7) Primary Key,
isim varchar(20) ,
soyisim varchar(25),
not_ort real,
kayit_tarih date
);
--Primary Key, oluturmanin 2. yolu								
CREATE TABLE ogrenciler4
(
ogrenci_no char(7) ,
isim varchar(20) ,
soyisim varchar(25),
not_ort real,
kayit_tarih date,
CONSTRAINT ogr PRIMARY KEY (ogrenci_no)
);	
								
	--Primary Key, oluturmanin 3. yolu								
CREATE TABLE ogrenciler5
(
ogrenci_no char(7) ,
isim varchar(20) ,
soyisim varchar(25),
not_ort real,
kayit_tarih date,
 PRIMARY KEY (ogrenci_no)
);							
								