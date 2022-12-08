-- LIKE CONDITION --Ozel Semboller kullanimi

CREATE TABLE musteriler  (
id int UNIQUE,
isim varchar(50) NOT NULL,
gelir int
);
INSERT INTO musteriler (id, isim, gelir) VALUES (1001, 'Ali', 62000);  
INSERT INTO musteriler (id, isim, gelir) VALUES (1002, 'Ayse', 57500);  
INSERT INTO musteriler (id, isim, gelir) VALUES (1003, 'Feride', 71000);
INSERT INTO musteriler (id, isim, gelir) VALUES (1004, 'Fatma', 42000);  
INSERT INTO musteriler (id, isim, gelir) VALUES (1005, 'Kasim', 44000);
INSERT INTO musteriler (id, isim, gelir) VALUES (1006, 'ahmet', 82000);
INSERT INTO musteriler (id, isim, gelir) VALUES (1007, 'erhan', 92000);
INSERT INTO musteriler (id, isim, gelir) VALUES (1006, 'ahmet', 82000);  


Select * From musteriler
-- --Example:Ismi A harfi ile baslayan musterilerin tum bilgilerini yazdiran QUERY yazin
Select * From musteriler Where isim LIKE 'A%'
/*LIKE yerine ~~ sembollerini kullanabiliriz.*/
Select * From musteriler Where isim ~~ 'A%'

/*LIKE kullanımında büyük küçük harf gözetmeksizin sonuç almak istersek ILIKE kullanırız*/
Select * From musteriler Where isim ILIKE 'A%'

/*  ILIKE yerine ~~* sembollerini kullanırız*/
Select * From musteriler Where isim ~~* 'A%'

--Ismi e harfi ile biten musterilerin isimlerini ve gelir’lerini yazdiran QUERY yazin
Select gelir,isim From musteriler Where isim ~~'%e' 
Select gelir,isim From musteriler Where isim Like '%e' --2.YOL

--Isminin icinde er olan musterilerin isimlerini ve gelir’lerini yazdiran QUERY yazin
Select gelir,isim From musteriler Where isim ~~'%er%' 

--Ismi 5 harfli olup son 4 harfi atma olan musterilerin tum bilgilerini yazdiran QUERY yazin
Select * From musteriler  Where isim ~~'_atma'

--Ikinci harfi a olan musterilerin tum bilgilerini yazdiran QUERY yazin
Select * From musteriler Where isim ~~ '_a%'

--Ucuncu harfi s olan musterilerin tum bilgilerini yazdiran QUERY yazin
Select * From musteriler Where isim Like '__s%'

--Ucuncu harfi s olan ismi 4 harfli  musterilerin tum bilgilerini yazdiran QUERY yazin
Select * From musteriler Where isim ~~ '__s_'

--Ilk  harfi F olan ismi 4 harfli  musterilerin tum bilgilerini yazdiran QUERY yazin
Select * From musteriler Where isim Like 'F___%'


--Ilk  harfi F olan ismi 4 harfli  musterilerin tum bilgilerini yazdiran QUERY yazin
Select * From musteriler Where isim Like 'F___%'
