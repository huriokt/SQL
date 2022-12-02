--	DATABASE(veriTabani) Olusturma
--create database ayse;
Create database orenciler;
--DDL -DATA DEFINITION LANG.
--CREATE-TABLO OLUSTURMA
CREATE TABLE orenciler
(
ogrenci_no char(7),
isim varchar(20),
soyisim varchar(25),
not_ort real,--Ondalikli sayilar icin kullanilir(double)
kayit_tarih date
);

--VAROLAN TABLODAN YENİ BİR TABLO OLUŞTURMA
CREATE TABLE ogrenci_notlari
AS -- Benzer tablodaki başlıklarla ve data tipleriyle yeni bir tablo oluşturmak için
--normal tablo oluştururken ki parantezler yerine AS kullanıp Select komutuyla almak istediğimiz verileri alırız
SELECT isim,soyisim,not_ort FROM orenciler

--DML - DATA MANIPULATION LANG.
--INSERT (Database Veri Eklme)
INSERT INTO orenciler VALUES ('1234567','Huri','Oktay',89.9,now());
INSERT INTO orenciler VALUES ('1234567','Huri','Oktay',89.9,'2022-11-1');

-- BIR TABLOYA PARÇALI VERİ EKLEMEK İSTERSEK
INSERT INTO orenciler (isim,soyisim) VALUES ('Ayse','Sahin');
-- DQL - DATA QUERY LANG.--create
-- SELECT
select * FROM orenciler; -- Burdaki * sembolü herşeyi anlamındadır
