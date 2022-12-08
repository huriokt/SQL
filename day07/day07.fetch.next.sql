-- FETCH NEXT (SAYI) ROW ONLY- OFFSET
-- 1) Tabloyu urun_id ye gore siralayiniz
-- 2) Sirali tablodan ilk 3 kaydi listeleyin
-- 3) Sirali tablodan 4. kayittan 7.kayida kadar olan kayitlari listeleyin

select * From musteri_urun

-- Musteri urun tablosundan ilk 3 kaydi listeleyiniz.
select * From musteri_urun Order By urun_id
FETCH NEXT 3 ROW ONLY

--LIMIT
Select * From musteri_urun Order By urun_id 
LIMIT 3

-- Musteri urun tablosundan son 3 kaydi listeleyiniz.
Select * from musteri_urun Order By urun_id Desc Limit 3

--Sıralama ile oynamadan son 3'ü aldıran var mı hocam
select * from musteri_urun offset 5 row fetch next 3 row only

CREATE TABLE maas 
(
id int, 
musteri_isim varchar(50),
maas int 
);
INSERT INTO maas VALUES (10, 'Ali', 5000); 
INSERT INTO maas VALUES (10, 'Ali', 7500); 
INSERT INTO maas VALUES (20, 'Veli', 10000); 
INSERT INTO maas VALUES (30, 'Ayse', 9000); 
INSERT INTO maas VALUES (20, 'Ali', 6500); 
INSERT INTO maas VALUES (10, 'Adem', 8000); 
INSERT INTO maas VALUES (40, 'Veli', 8500); 
INSERT INTO maas VALUES (20, 'Elif', 5500);

Select * From maas

--En yuksek maasi alan musteriyi listeleyiniz.
SELECT * FROM maas ORDER BY maas DESC
LIMIT 1

--En yuksek ikinci  maasi alan musteriyi listeleyiniz.
SELECT * FROM maas ORDER BY maas DESC LIMIT 1
/*
OFFSET --> Satır atlamak istediğimizde offset komutunu kullanırız
*/

select * from maas order by maas desc offset 1 limit 1
select * from maas order by maas desc limit 1 offset 1
select * from maas order by maas desc offset 1 fetch next 1 row only

-- Maas tablosundan en dusuk 4. maasi listeleyiniz
select * from maas order by maas desc offset 3 limit 1 
select * from maas order by maas offset 3 fetch next 1 row only --2. YOL

-- Maas tablosundan en dusuk 4.ve5. maasi listeleyiniz
select * from maas order by maas desc offset 3 limit 2 