-- IS NULL CONDITION (Arama yapilan feild de Null degeri almis kayitlari getirir)

CREATE TABLE insanlar
(
ssn char(9),
name varchar(50),  
adres varchar(50)
);
INSERT INTO insanlar VALUES(123456789, 'Ali Can', 'Istanbul');  
INSERT INTO insanlar VALUES(234567890, 'Veli Cem', 'Ankara');  
INSERT INTO insanlar VALUES(345678901, 'Mine Bulut', 'Izmir');  
INSERT INTO insanlar (ssn, adres) VALUES(456789012, 'Bursa'); 
INSERT INTO insanlar (ssn, adres) VALUES(567890123, 'Denizli');

select * from insanlar

-- Name sutununda null olan değerleri listeleyelim
Select name From insanlar Where name is Null

-- Insanlar taplosunda sadece null olmayan değerleri listeleyiniz

Select name From insanlar Where name is not Null

-- Insanlar toplasunda null değer almış verileri no name olarak değiştiriniz

Update insanlar Set name = 'No name' where name  is null



