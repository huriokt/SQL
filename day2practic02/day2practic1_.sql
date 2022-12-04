CREATE TABLE ogrenciler8
(
id int,
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu int
);
INSERT INTO ogrenciler8 VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO ogrenciler8 VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO ogrenciler8 VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO ogrenciler8 VALUES(126, 'Nesibe Yilmaz', 'Ayse',95);
INSERT INTO ogrenciler8 VALUES(127, 'Mustafa Bak', 'Can',99);
INSERT INTO ogrenciler8 VALUES(127, 'Mustafa Bak', 'Ali', 99);
select * from ogrenciler8
-- İsmi Mustafa Bak ve Nesibe Yılmaz olan kayıtları silelim
DELETE FROM ogrenciler8 WHERE isim='Mustafa Bak' or isim = 'Nesibe Yilmaz';
-- Veli ismi Hasan datayi silelim
DELETE FROM ogrenciler8 WHERE veli_isim='Hasan';
-- TRUNCATE --
-- Bir tablodaki tüm verileri geri alamayacağımız şekilde siler. Şartlı silme yapmaz
TRUNCATE ogrenciler8
-- ON DELETE CASCADE
DROP TABLE if exists adresler -- Eğer tablo varsa tabloyu siler
INSERT INTO talebe VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO talebe VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO talebe VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO talebe VALUES(126, 'Nesibe Yılmaz', 'Ayse',95);
INSERT INTO talebe VALUES(127, 'Mustafa Bak', 'Can',99);
INSERT INTO not1 VALUES ('123','kimya',75);
INSERT INTO not1 VALUES ('124', 'fizik',65);
INSERT INTO not1 VALUES ('125', 'tarih',90);
INSERT INTO not1 VALUES ('126', 'Matematik',90);
select * from talebeler2;
select * from notlar2;
-- Notlar tablosundan talebe_id'si 123 olan datayı silelim
DELETE FROM notlar WHERE talebe_id='123';
-- Talebeler tablosundan id'si 126 olan datayı silelim
DELETE FROM talebeler2 WHERE id='126';
CREATE TABLE talebe
(
id CHAR(3) primary key,
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu int
);
/*
    Her defasında önce child tablodaki verileri silmek yerine ON DELETE CASCADE silme özelliği ile
parent tablo dan da veri silebiliriz. Yanlız ON DELETE CASCADE komutu kullanımında parent tablodan sildiğimiz
data child tablo dan da silinir
*//*
    Her defasında önce child tablodaki verileri silmek yerine ON DELETE CASCADE silme özelliği ile
parent tablo dan da veri silebiliriz. Yanlız ON DELETE CASCADE komutu kullanımında parent tablodan sildiğimiz
data child tablo dan da silinir
*/
INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler VALUES (20, 'John', 'Apple');
INSERT INTO musteriler VALUES (30, 'Amy', 'Palm');
INSERT INTO musteriler VALUES (20, 'Mark', 'Apple');
INSERT INTO musteriler VALUES (10, 'Adem', 'Orange');
INSERT INTO musteriler VALUES (40, 'John', 'Apricot');
INSERT INTO musteriler VALUES (20, 'Eddie', 'Apple');
/*
