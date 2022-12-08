CREATE TABLE ogrenciler92
(
ogrenci_no char(7) PRIMARY KEY,
isim varchar(20) PRIMARY KEY ,  
soyisim varchar(25),            
not_ort real,
kayit_tarih date,
);
--Bu sekilde iki tane Primary Key atamasi ve unique yapmaya izin vermez.
--Bu sekilde iki tane Primary Key(Compositr Key) veya unique atamak istersek asagdaki yontem kullanilir

CREATE TABLE ogrenciler93
(
ogrenci_no char(7),
isim varchar(20), 
soyisim varchar(25),
not_ort real,
kayit_tarih date,
PRIMARY KEY(ogrenci_no,isim),  --COMPOSİTE PK  
unique (soyisim,not_ort)
);

select * from ogrenciler93