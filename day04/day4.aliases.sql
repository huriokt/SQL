--ALIASES (Iki fieldi birlestiriyor) 
-- Eğer iki sutunun verilerini birleştirmek istersek concat sembolu || kullanırız
CREATE TABLE calisanlar4
(
calisan_id char(9),
calisan_isim varchar(50),
calisan_dogdugu_sehir varchar(50)
);
INSERT INTO calisanlar4 VALUES(123456789, 'Ali Can', 'Istanbul');
INSERT INTO calisanlar4 VALUES(234567890, 'Veli Cem', 'Ankara');
INSERT INTO calisanlar4 VALUES(345678901, 'Mine Bulut','Izmir');

select from calisanlar4
delete  from calisanlar4
Select calisan_id As id , calisan_isim || calisan_dogdugu_sehir As calisan_bilgisi From calisanlar4
Select calisan_id As id , calisan_isim ||' '|| calisan_dogdugu_sehir As calisan_bilgisi From calisanlar4
--2.YOL
Select calisan_id As id , concat(calisan_isim , calisan_dogdugu_sehir) As calisan_bilgisi From calisanlar4
Select calisan_id As id , concat(calisan_isim ,' ', calisan_dogdugu_sehir) As calisan_bilgisi From calisanlar4
