-- IN CONDITION  Birden fazla mantiksal ifade ile tanimlayabilecegimiz durumlari
--(Condition)tek komutla yazabilme imkani verir

---DROP TABLE if exists musteriler.Daha once bu isimle olusmus tablo varsa hata verir.
---Bu kodu yazdigmiza eski tabloyu otomatik siler bunu olusturur

CREATE TABLE musteriler  (
urun_id int,  
musteri_isim varchar(50), 
urun_isim varchar(50)
);
INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');  
INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');  
INSERT INTO musteriler VALUES (20, 'John', 'Apple');  
INSERT INTO musteriler VALUES (30, 'Amy', 'Palm');  
INSERT INTO musteriler VALUES (20, 'Mark', 'Apple');  
INSERT INTO musteriler VALUES (10, 'Adem', 'Orange');  
INSERT INTO musteriler VALUES (40, 'John', 'Apricot');  
INSERT INTO musteriler VALUES (20, 'Eddie', 'Apple');
 
SELECT * FROM musteriler

-- Qestion:Musteriler tablosundan urun ismi orange, apple veya apricot olan tüm verileri listeleyiniz

SELECT * FROM musteriler WHERE urun_isim='Orange' or urun_isim='Apple' or urun_isim = 'Apricot';

SELECT * FROM musteriler WHERE urun_isim='Orange' and urun_id=10

---IN CONDITION
SELECT * FROM musteriler WHERE urun_isim IN ('Orange','Apple' ,'Apricot');

---NOT IN CONDITION -->Qestion: Yazdığımız verilerin dışındakileri getirir
SELECT * FROM musteriler WHERE urun_isim NOT IN ('Orange','Apple','Apricot');


--BETWEEN CONDITION---iKI MANTIKSAL IFADE ILE TANIMLAYABILECEGIMIZ DURUMLARI TEK KOMUTLA yazabilme imkani verir
--Yazdigimiz iki sinir da araliga dahildir.

-- Qestion:Musteriler tablosundan urun_id'si 20 ile 40 arasında olan tüm verileri listeleyiniz
SELECT * FROM musteriler WHERE urun_id>=20 and urun_id<=40;  --1.Yol

SELECT * FROM musteriler WHERE urun_id BETWEEN 20 and 40 ;  --2.Yol

--BETWEEN CONDITION---> Aralik disindakilerri listeler
SELECT * FROM musteriler WHERE urun_id NOT BETWEEN 20 and 40;






























