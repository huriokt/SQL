/*“calisanlar” isimli bir Tablo olusturun. Icinde “id”, “isim”, “maas”, 
“ise_baslama” field’lari olsun. “id” yi Primary Key yapin, “isim” i Unique, 
“maas” i Not Null yapın.
“adresler” isminde baska bir tablo olusturun.Icinde “adres_id”, “sokak”, “cadde” ve “sehir” fieldlari olsun. 
“adres_id” field‘i ile Foreign Key oluşturun.*/



CREATE TABLE calisanlar(
id char(5) PRIMARY KEY,
isim varchar(20) unique,
maas int NOT NULL,
ise_baslama date
);
CREATE TABLE adresler(
adres_id char(5),
sokak varchar(15),
cadde varchar(15),
sehir varchar(15),
FOREIGN KEY (adres_id) REFERENCES calisanlar(id)
);
INSERT INTO calisanlar VALUES('10002', 'Mehmet Yılmaz' ,12000, '2018-04-14'); 
INSERT INTO calisanlar VALUES('10008', null, 5000, '2018-04-14');
--INSERT INTO calisanlar VALUES('10010', 'Mehmet Yılmaz', 5000, '2018-04-14'); -- UNIQUE CONS. Kabul etmez
INSERT INTO calisanlar VALUES('10004', 'Veli Han', 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10005', 'Mustafa Ali', 5000, '2018-04-14');
--INSERT INTO calisanlar VALUES('10006', 'Canan Yaş', NULL, '2019-04-12'); -- NOT NULL CONS. Kabul etmez
INSERT INTO calisanlar VALUES('10003', 'CAN', 5000, '2018-04-14');
--INSERT INTO calisanlar VALUES('10007', 'CAN', 5000, '2018-04-14'); -- UNIQUE CONS. Kabul etmez
--INSERT INTO calisanlar VALUES('10009', 'cem', '', '2018-04-14'); -- INT / STRING
INSERT INTO calisanlar VALUES('', 'osman', 2000, '2018-04-14');
--INSERT INTO calisanlar VALUES('', 'osman can', 2000, '2018-04-14'); -- PRIMARY KEY
--INSERT INTO calisanlar VALUES( '10002', 'ayse Yılmaz' ,12000, '2018-04-14'); -- PRIMARY KEY 
--INSERT INTO calisanlar VALUES( null, 'filiz ' ,12000, '2018-04-14'); -- PRIMARY KEY

INSERT INTO adresler VALUES('10003','Mutlu Sok', '40.Cad.','IST');
INSERT INTO adresler VALUES('10003','Can Sok', '50.Cad.','Ankara');
INSERT INTO adresler VALUES('10002','Ağa Sok', '30.Cad.','Antep');

-- Parent tabloda olmayan id ile child a ekleme yapamayiz
INSERT INTO adresler VALUES('10012','Ağa Sok', '30.Cad.','Antep');
   
-- FK'ye null değeri atanabilir.
INSERT INTO adresler VALUES(NULL,'Ağa Sok', '30.Cad.','Antep');
INSERT INTO adresler VALUES(NULL,'Ağa Sok', '30.Cad.','Maraş');

SELECT * FROM calisanlar;
SELECT * FROM adresler;
--************************

CREATE TABLE calisanlar1(
id char(5) PRIMARY KEY,
isim varchar(20) unique,
maas int NOT NULL,
ise_baslama date
);
CREATE TABLE adresler1(
adres_id char(5),
sokak varchar(15),
cadde varchar(15),
sehir varchar(15),
FOREIGN KEY (adres_id) REFERENCES calisanlar1(id)
);
INSERT INTO calisanlar1 VALUES('10002', 'Mehmet Yılmaz' ,12000, '2018-04-14'); 
INSERT INTO calisanlar1 VALUES('10008', null, 5000, '2018-04-14');
--INSERT INTO calisanlar1 VALUES('10010', 'Mehmet Yılmaz', 5000, '2018-04-14'); -- UNIQUE CONS. Kabul etmez
INSERT INTO calisanlar1 VALUES('10004', 'Veli Han', 5000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10005', 'Mustafa Ali', 5000, '2018-04-14');
--INSERT INTO calisanlar1 VALUES('10006', 'Canan Yaş', NULL, '2019-04-12'); -- NOT NULL CONS. Kabul etmez
INSERT INTO calisanlar1 VALUES('10003', 'CAN', 5000, '2018-04-14');
--INSERT INTO calisanlar1 VALUES('10007', 'CAN', 5000, '2018-04-14'); -- UNIQUE CONS. Kabul etmez
--INSERT INTO calisanlar1 VALUES('10009', 'cem', '', '2018-04-14'); -- INT / STRING
INSERT INTO calisanlar1 VALUES('', 'osman', 2000, '2018-04-14');
--INSERT INTO calisanlar1 VALUES('', 'osman can', 2000, '2018-04-14'); -- PRIMARY KEY
--INSERT INTO calisanlar1 VALUES( '10002', 'ayse Yılmaz' ,12000, '2018-04-14'); -- PRIMARY KEY 
--INSERT INTO calisanlar1 VALUES( null, 'filiz ' ,12000, '2018-04-14'); -- PRIMARY KEY

INSERT INTO adresler1 VALUES('10003','Mutlu Sok', '40.Cad.','IST');
INSERT INTO adresler1 VALUES('10003','Can Sok', '50.Cad.','Ankara');
INSERT INTO adresler1 VALUES('10002','Ağa Sok', '30.Cad.','Antep');

-- Parent tabloda olmayan id ile child a ekleme yapamayiz
INSERT INTO adresler1 VALUES('10012','Ağa Sok', '30.Cad.','Antep');
   
-- FK'ye null değeri atanabilir.
INSERT INTO adresler1 VALUES(NULL,'Ağa Sok', '30.Cad.','Antep');
INSERT INTO adresler1 VALUES(NULL,'Ağa Sok', '30.Cad.','Maraş');

SELECT * FROM calisanlar1;
SELECT * FROM adresler1;

--CHECK CONSTRAINT

CREATE TABLE calisanlar2(
id char(5) PRIMARY KEY,
isim varchar(20) unique,
maas int Check(maas>10000)

);
INSERT INTO calisanlar2 VALUES('10002', 'Mehmet Yılmaz' ,12000, '2018-04-14'); 
INSERT INTO calisanlar2 VALUES('10008', null, 15000, '2018-04-14');
INSERT INTO calisanlar2 VALUES('10004', 'Veli Han', 15000, '2018-04-14');
INSERT INTO calisanlar2 VALUES('10003', 'CAN', 50000, '2018-04-14');
SELECT * FROM calisanlar2;

--DQL --Where Kullanimi

SELECT * FROM calisanlar2;
SELECT isim FROM calisanlar2;

Calisanlar Tablosundan maasi 5000 dn buyuk olan isimleri listeleyiniz.
SELECT isim,maas FROM calisanlar Where maas>5000;

--calisanlar tablosundan ismi VeliHan olan tum verileri listeleyiniz.
SELECT * FROM calisanlar Where isim ='Veli Han';

--calisanlar tablosundan maasi 5000 olan tum verileri listeleyiniz.
SELECT * FROM calisanlar Where maas =5000;

--DML --DELETE KOMUTU
DELETE FROM adresler1 ;--Eger parent tblo baska bit child tablo ile iliskili ise once child tablo silinmelidir.
SELECT * FROM adresler1;

--Adresler tablosundan sehri Antep olan verileri silelim
DELETE FROM adresler1 Where sehir='Antep'
DELETE FROM adresler1 Where sokak='Ağa Sok'



CREATE TABLE ogrenciler7
(
id int,
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu int       
);
INSERT INTO ogrenciler7 VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO ogrenciler7 VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO ogrenciler7 VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO ogrenciler7 VALUES(126, 'Nesibe Yilmaz', 'Ayse',95);
INSERT INTO ogrenciler7 VALUES(127, 'Mustafa Bak', 'Can',99);
INSERT INTO ogrenciler7 VALUES(127, 'Mustafa Bak', 'Ali', 99);




