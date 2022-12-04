CREATE TABLE ogrenciler3
(
id int,
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu int       
);
INSERT INTO ogrenciler3 VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO ogrenciler3 VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO ogrenciler3 VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO ogrenciler3 VALUES(126, 'Nesibe Yilmaz', 'Ayse',95);
INSERT INTO ogrenciler3 VALUES(127, 'Mustafa Bak', 'Can',99);
INSERT INTO ogrenciler3 VALUES(127, 'Mustafa Bak', 'Ali', 99);

select * from ogrenciler3
-- İsmi Mustafa Bak ve Nesibe Yılmaz olan kayıtları silelim

--Delete from ogrenciler3 where isim = 'Mustafa Bak' or isim= 'Nesibe Yilmaz';

--Delete from ogrenciler3 where veli_isim='Hasan';
-- TRUNCATE -- 
-- Bir tablodaki tüm verileri geri alamayacağımız şekilde siler. Şartlı silme yapmaz
TRUNCATE ogrenciler3

-- ON DELETE CASCADE --Parent teki silinen bir kayit ile iliskili olan 
--tum child kayitlarini silebilir
--cascade yoksa once child temizlenir sonra parent

DROP TABLE if exists adresler -- Eğer tablo varsa tabloyu siler

CREATE TABLE talebe2
(
id CHAR(3) primary key,  
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu int
);
CREATE TABLE not1( 
talebe2_id char(3),
ders_adi varchar(30),
yazili_notu int,
CONSTRAINT notlar_fk FOREIGN KEY (talebe_id) REFERENCES talebe(id))
	
on delete cascade
);
INSERT INTO talebe2 VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO talebe2 VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO talebe2 VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO talebe2 VALUES(126, 'Nesibe Yılmaz', 'Ayse',95);
INSERT INTO talebe2 VALUES(127, 'Mustafa Bak', 'Can',99);

INSERT INTO not1 VALUES ('123','kimya',75);
INSERT INTO not1 VALUES ('124', 'fizik',65);
INSERT INTO not1 VALUES ('125', 'tarih',90);
INSERT INTO not1 VALUES ('126', 'Matematik',90);

Select * from talebe2;
Select * from not1;

-- Talebeler tablosundan talebe id'si 126 olan datayı silelim

Delete From not1 where talebe_id = '123'

--ON DELETE CASCADE talebe2 where talebe_id = '123'


-- Talebeler tablosundan talebe id'si 126 olan datayı silelim
DELETE FROM talbeler1 WHERE id='126'

CREATE TABLE talbeler1
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
*/
CREATE TABLE  ogrenciler
(
id CHAR(3) primary key,  
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu int
);

CREATE TABLE puanlar( 
ogrenciler_id char(3),
ders_adi varchar(30),
yazili_notu int,
CONSTRAINT puanlar_fk FOREIGN KEY (ogrenciler_id) REFERENCES talebe(id)
on delete cascade
);

INSERT INTO ogrenciler VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO ogrenciler VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO ogrenciler VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO ogrenciler VALUES(126, 'Nesibe Yılmaz', 'Ayse',95);
INSERT INTO ogrenciler VALUES(127, 'Mustafa Bak', 'Can',99);



INSERT INTO puanlar VALUES ('123','kimya',75);
INSERT INTO puanlar VALUES ('124', 'fizik',65);
INSERT INTO puanlar VALUES ('125', 'tarih',90);
INSERT INTO puanlar VALUES ('126', 'Matematik',90);



select * from ogrenciler;
select * from puanlar;

DELETE FROM ogrenciler WHERE id = '126'


-- IN CONDITION  Birden fazla mantiksal ifade ile tanimlayabilecegimiz durumlari
--(Condition)tek komutla yazabilme imkani verir


