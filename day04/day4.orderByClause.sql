--Order By Clause --Belli bir field e gore Naturel Order olarak siralama yapmak icin kullanilir
--Order By Clause --Bu komut Sadece Select kmutu ile kullanilir.
/*Tablolardaki verileri sıralamak için ORDER BY komutu kullanırız
Büyükten küçüğe yada küçükten büyüğe sıralama yapabiliriz
Default olarak küçükten büyüğe sıralama yapar (ASC)
Eğer BÜYÜKTEN KÜÇÜĞE sıralmak istersek ORDER BY komutundan sonra DESC komutunu kullanırız    */ 

CREATE TABLE insanlar2
(
ssn char(9),
isim varchar(50),
soyisim varchar(50),  
adres varchar(50)
);
--Insanlar tablosundaki datalari adres’e gore siralayin  

INSERT INTO insanlar2 VALUES(123456789, 'Ali','Can', 'Istanbul');
INSERT INTO insanlar2 VALUES(234567890, 'Veli','Cem', 'Ankara');  
INSERT INTO insanlar2 VALUES(345678901, 'Mine','Bulut', 'Ankara');  
INSERT INTO insanlar2 VALUES(256789012, 'Mahmut','Bulut', 'Istanbul'); 
INSERT INTO insanlar2 VALUES (344678901, 'Mine','Yasa', 'Ankara');  
INSERT INTO insanlar2 VALUES (345678901, 'Veli','Yilmaz', 'Istanbul');


Select * From  insanlar2

Select * From insanlar2 Order By adres ;

Select * From insanlar2 Order By soyisim ;

--Insanlar tablosundaki ismi Mine olanlari SSN sirali olarak listeleyin
Select * From insanlar2 Where isim = 'Mine' Order By ssn

--Insanlar tablosundaki soyismi Bulut olanlari isim sirali olarak listeleyin 

Select * From insanlar2 Where soyisim='Bulut' Order By isim 
--NOT : Order By komutundan sonra field(sutun) ismi yerine field(sutun) numarasi da kullanilabilir
Select * From insanlar2 Where soyisim='Bulut' Order By 2

-- Insanlar tablosundaki tum kayitlari SSN numarasi buyukten kucuge olarak siralayin

Select * From insanlar2 Order By ssn Desc  ---Buyukten kucuge siralama

-- Insanlar tablosundaki tum kayitlari isimler Natural sirali, Soyisimler ters sirali olarak listeleyin

Select * From insanlar2 Order By isim asc ,soyisim desc ;  --Mine Bulut ve Mine Yasa yer degistiriyor

-- İsim ve soyisim değerlerini soyisim kelime uzunluklarına göre sıralayınız

/*Eğer sutun uzunluğuna göre sıralamak istersek LENGTH komutu kullanırız 
Ve yine uzunluğu büyükten küçüğe sıralamak istersek sonuna DESC komutunu ekleriz*/

Select isim,soyisim From insanlar2 Order By length (soyisim);

Select isim,soyisim From insanlar2 Order By length (soyisim) desc; --uzunlugun tersten siralamasi

-- Tüm isim ve soyisim değerlerini aynı sutunda çağırarak her bir sütun değerini uzunluğuna göre sıralayınız

Select isim|| ' '||soyisim As isim_soyisim From insanlar2 Order By length(isim||soyisim)

Select isim|| ' '||soyisim As isim_soyisim From insanlar2 Order By length(isim)+length(soyisim)

Select Concat(isim,' ',soyisim) As isim_soyisim From insanlar2 Order By length(isim)+length(soyisim)

Select Concat(isim,' ',soyisim) As isim_soyisim From insanlar2 Order By length(Concat(isim,soyisim))



