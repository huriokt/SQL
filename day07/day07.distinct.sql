-- DISTINCT--- DISTINCT genelde tek bir sutun gormek istenildiginde kullanilir,
--Group By ise daha komplike aggregate methodlar falan varsa kullanilir dedi
-- DISTINCT clause, çağrılan terimlerden tekrarlı olanların sadece birincisini alır.
--İkisinin calısma mantıgı farklı biri ilk birincisini alıyor. Diğeri grupluyor
CREATE TABLE musteri_urun 
(
urun_id int, 
musteri_isim varchar(50),
urun_isim varchar(50) 
);
INSERT INTO musteri_urun VALUES (10, 'Ali', 'Portakal'); 
INSERT INTO musteri_urun VALUES (10, 'Ali', 'Portakal'); 
INSERT INTO musteri_urun VALUES (20, 'Veli', 'Elma'); 
INSERT INTO musteri_urun VALUES (30, 'Ayse', 'Armut'); 
INSERT INTO musteri_urun VALUES (20, 'Ali', 'Elma'); 
INSERT INTO musteri_urun VALUES (10, 'Adem', 'Portakal'); 
INSERT INTO musteri_urun VALUES (40, 'Veli', 'Kaysi'); 
INSERT INTO musteri_urun VALUES (20, 'Elif', 'Elma');

select * From musteri_urun

-- Musteri urun tablosundan urun isimlerini tekrarsız(grup) listeleyiniz
--Group By Cozumu :
Select  urun_isim From musteri_urun Group By urun_isim

--Distinct Cozumu :
Select Distinct(urun_isim) From musteri_urun

-- Tabloda kac farkli meyve vardir ?
Select urun_isim,count(urun_isim) As meyve_cesitleri From musteri_urun
Group By urun_isim

Select urun_isim,count(Distinct urun_isim) As meyve_cesitleri From musteri_urun
Group By urun_isim


