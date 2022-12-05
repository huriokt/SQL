--AGGREGATE METHODLARDA SUBQUERY
-- Her markanin id’sini, ismini ve toplam kaç şehirde 
-- bulunduğunu listeleyen bir SORGU yaziniz

CREATE TABLE markalar
(
marka_id int, 
marka_isim VARCHAR(20), 
calisan_sayisi int
);
INSERT INTO markalar VALUES(100, 'Vakko', 12000);
INSERT INTO markalar VALUES(101, 'Pierre Cardin', 18000);
INSERT INTO markalar VALUES(102, 'Adidas', 10000);
INSERT INTO markalar VALUES(103, 'LCWaikiki', 21000);
INSERT INTO markalar VALUES(104, 'Nike', 19000);

select * from markalar

CREATE TABLE calisanlar2 
(
id int, 
isim VARCHAR(50), 
sehir VARCHAR(50), 
maas int, 
isyeri VARCHAR(20)
);
INSERT INTO calisanlar2 VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar2 VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar2 VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar2 VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar2 VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar2 VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar2 VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Vakko');

select * from calisanlar2


-- Ex : Her markanin id’sini, ismini ve toplam kaç şehirde 
-- bulunduğunu listeleyen bir SORGU yaziniz
SELECT marka_id , marka_isim,(SELECT count(sehir) as sehir_sayisi From calisanlar2 WHERE  marka_isim = isyeri)
From markalar

--Ex :  Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin 
-- maksimum ve minumum maaşini listeleyen bir Sorgu yaziniz.

SELECT marka_isim,calisan_sayisi ,(SELECT max(maas )as max_maas From calisanlar2)
From markalar


SELECT marka_isim,calisan_sayisi ,(SELECT min(maas) as minimum_maas From calisanlar2)
From markalar

--Yukaridaki islemi tek sutunda yazirmak icin
SELECT marka_isim,calisan_sayisi ,(SELECT max(maas )as max_maas From calisanlar2),(SELECT min(maas) as minimum_maas From calisanlar2)
From markalar

/***** VIEW*****
Yaptığımız sorguları hafızaya alır ve tekrar bizden isten sorgulama yenine
view'e atadığımız ismi SELECT komutuyla çağırırız
*/

--VIEW Kullanimi maxminmaas
CREATE  VIEW maxminmaas
AS
SELECT marka_isim,calisan_sayisi ,(SELECT max(maas )as max_maas From calisanlar2)
,(SELECT min(maas) as minimum_maas From calisanlar2)
From markalar

Select * From maxminmaas;


--Ex :  Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin 
-- toplam maaşini listeleyen bir Sorgu yaziniz.
CREATE VIEW summaas
AS
SELECT marka_isim,calisan_sayisi ,(SELECT sum(maas) From calisanlar2 Where isyeri =marka_isim) as toplam_maas
From markalar

Select * From summaas

