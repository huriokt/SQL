/*ALTER TABLE STATEMENT	
	ALTER TABLE statement tabloda add, Type(modify)/Set, Rename veya drop columns
	islemleri icin kullanilir.
	ALTER TABLE statement tablolari yeniden isimlendirmek icin de kullanilir. */
CREATE TABLE personel 
(
id int,
isim varchar(50), 
sehir varchar(50), 
maas int, 
sirket varchar(20),
CONSTRAINT personel_pk PRIMARY KEY (id)
);
INSERT INTO personel VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda'); 
INSERT INTO personel VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota'); 
INSERT INTO personel VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500, 'Honda'); 
INSERT INTO personel VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford'); 
INSERT INTO personel VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas'); 
INSERT INTO personel VALUES(456715012, 'Veli Sahin', 'Ankara', 4500, 'Ford'); 
INSERT INTO personel VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');

Select * From personel

--ADD default deger ile tabloya bir field ekleme
ALTER TABLE personel       --Bu sekilde null yapiyor.
ADD ulke_isim varchar(20)

ALTER TABLE personel
ADD ulke_isim varchar(20) DEFAULT 'Turkiye' -- DEFAULT yazarsak oluşturduğumuz sütüna 
--belirttiğimiz veriyi tüm satırlara girer

ALTER TABLE personel
ADD zipcode varchar(20)

ALTER TABLE personel
ADD adres varchar(20) DEFAULT 'Dunya'

1) ADD default deger ile tabloya bir field ekleme
2) Tabloya birden fazla field ekleme

3) DROP tablodan sutun silme

ALTER TABLE personel drop column zipcode

ALTER TABLE personel
drop ulke, drop adres --ikisini birden sildik

-- 4) RENAME COLUMN sutun adi degistirme
ALTER TABLE personel
RENAME COLUMN sehir TO il;

--5)RENAME TO tablo adi degistirme
ALTER TABLE personel
RENAME TO isci

Select * From isci

--6)TYPE/SET sutunlarin ozelliklerini degistirme

Alter Table isci
Alter Column il Type varchar(30),
Alter Column maas SEt Not null;

/*Eger numeric data tipine sahip bir sutunun data turune string bir data turu atamak istersek
TYPE varchar(30) USING(maas::varchar(30)) bu formati kullaniriz */

Alter Column maas Type varchar(30) Using (maas::varchar(30))

