--DML--> UPDATE (Ic Mimar)--Bu islemi yapmadan once tablolari eski haline getirmeliyiz.

CREATE TABLE tedarikciler -- parent
(
vergi_no int PRIMARY KEY,
firma_ismi VARCHAR(50),
irtibat_ismi VARCHAR(50)
);
INSERT INTO tedarikciler VALUES (101, 'IBM', 'Kim Yon');
INSERT INTO tedarikciler VALUES (102, 'Huawei', 'Çin Li');
INSERT INTO tedarikciler VALUES (103, 'Erikson', 'Maki Tammen');
INSERT INTO tedarikciler VALUES (104, 'Apple', 'Adam Eve');

CREATE TABLE urunler -- child
(
ted_vergino int, 
urun_id int, 
urun_isim VARCHAR(50), 
musteri_isim VARCHAR(50),
CONSTRAINT fk_urunler FOREIGN KEY(ted_vergino) REFERENCES tedarikciler(vergi_no)
on delete cascade
);    
INSERT INTO urunler VALUES(101, 1001,'Laptop', 'Ayşe Can');
INSERT INTO urunler VALUES(102, 1002,'Phone', 'Fatma Aka');
INSERT INTO urunler VALUES(102, 1003,'TV', 'Ramazan Öz');
INSERT INTO urunler VALUES(102, 1004,'Laptop', 'Veli Han');
INSERT INTO urunler VALUES(103, 1005,'Phone', 'Canan Ak');
INSERT INTO urunler VALUES(104, 1006,'TV', 'Ali Bak');
INSERT INTO urunler VALUES(104, 1007,'Phone', 'Aslan Yılmaz');

Select * From tedarikciler
Select * From urunler

-- Ex:vergi_no’su 102 olan tedarikcinin firma ismini 'Vestel' olarak güncelleyeniz.
/*
UPDATE tablo_adi
SET sutun_ismi = 'istenen veri' WHERE sutun_ismi='istenen veri'
*/
UPDATE tedarikciler 
Set firma_ismi='Vestel' where vergi_no =102; 

--Ex: vergi_no’su 101 olan tedarikçinin firma ismini 'casper' ve irtibat_ismi’ni 'Ali Veli' olarak güncelleyiniz.

Update tedarikciler
Set firma_ismi = 'Casper' , irtibat_ismi = 'Ali Veli' where vergi_no='101'


-- Ex: urunler tablosundaki 'Phone' değerlerini 'Telefon' olarak güncelleyiniz.

Update urunler
Set urun_isim = 'Telefon' where urun_isim = 'Phone';

-- Ex : urunler tablosundaki urun_id değeri 1004'ten büyük olanların urun_id’sini 1 arttırın.

Update urunler
Set urun_id = urun_id+1 where urun_id>1004

--Ex : urunler tablosundaki tüm ürünlerin urun_id değerini ted_vergino sutun değerleri ile toplayarak güncelleyiniz.

Update urunler 
Set urun_id =urun_id+ted_vergino

DELETE FROM tedarikciler -- tablo silindi insert into ile eski haline gtirebilirsin
Delete From urunler  -- tablo silindi insert into ile eski haline gtirebilirsin

-- Ex :  urunler tablosundan Ali Bak’in aldigi urunun ismini, tedarikci  tablosunda irtibat_ismi 
--'Adam Eve' olan firmanın ismi (firma_ismi) ile degistiriniz.

Update urunler 
Set urun_isim = (Select firma_ismi From tedarikciler where irtibat_ismi='Adam Eve')
Where musteri_isim='Ali Bak'

-- Ex : Urunler tablosunda laptop satin alan musterilerin ismini, firma_ismi Apple’in irtibat_isim'i ile degistirin.

Update urunler 
Set musteri_isim=(Select irtibat_ismi From tedarikciler where  firma_ismi = 'Apple')
Where urun_isim='Laptop'


