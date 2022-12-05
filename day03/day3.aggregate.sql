-- AGGREGATE METHOD(Sum,Count.Min,Max.Avg) --Subquery icinde kullanilabilir.Ancak sorgu tekbir deger donduruyor olmali 
-- Syntax sum() seklinde olmali sum ile () arasinda bosluk olmamali

CREATE TABLE calisanlar3 
(
id int, 
isim VARCHAR(50), 
sehir VARCHAR(50), 
maas int, 
isyeri VARCHAR(20)
);
INSERT INTO calisanlar3 VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar3 VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar3 VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar3 VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar3 VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar3 VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar3 VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Vakko');
INSERT INTO calisanlar3 VALUES(123456710, 'Fatma Yasa', 'Bursa', null, 'Vakko');
select * from calisanlar3
--Ex:Calisanlar tablosunda maksimum maası listeleyiniz

SELECT max(maas) From calisanlar3
SELECT max(maas) AS maksimum_maas FROM calisanlar2;

  --  Eğer bir sütuna geçici olarak bir isim vermek istersek AS komutunu yazdıktan sonra vermek
--istediğimiz ismi yazarız
*/
-- Ex : Calisanlar tablosunda minimum maası listeleyiniz
SELECT min(maas) From calisanlar3
SELECT max(maas) AS maksimum_maas FROM calisanlar3;

-- Ex : Calisanlar tablosunda  maaslar toplamini bulunuz. 

SELECT sum(maas) From calisanlar3;

--Ex : Calisanlar tablosunda  maas ortalamasini bulunuz
SELECT avg(maas) From calisanlar3;
SELECT round(avg(maas)) From calisanlar3;//sayiyi yuvarlamak icin round methodu kullanilir
SELECT round(avg(maas),2) From calisanlar3//vigulden sonra iki basamak verir

-- Ex : Calisanlar tablosunda  maas sayisini bulunuz

SELECT count(maas) From calisanlar3;
SELECT count(*) From calisanlar3;//Satir sayisini verdi
