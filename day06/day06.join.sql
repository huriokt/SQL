-- JOINS
-- INNER JOIN---- 1) INNER JOIN : iki tablodaki ortak dataları gösterir.
CREATE TABLE sirketler  (
sirket_id int,  
sirket_isim varchar(20)
);
INSERT INTO sirketler VALUES(100, 'Toyota');  
INSERT INTO sirketler VALUES(101, 'Honda');  
INSERT INTO sirketler VALUES(102, 'Ford');  
INSERT INTO sirketler VALUES(103, 'Hyundai');

CREATE TABLE siparisler  (
siparis_id int,  sirket_id int,  siparis_tarihi date
);
INSERT INTO siparisler VALUES(11, 101, '2020-04-17');  
INSERT INTO siparisler VALUES(22, 102, '2020-04-18');  
INSERT INTO siparisler VALUES(33, 103, '2020-04-19');  
INSERT INTO siparisler VALUES(44, 104, '2020-04-20');  
INSERT INTO siparisler VALUES(55, 105, '2020-04-21');

select * from sirketler
select * from siparisler


-- Iki Tabloda sirket_id’si ayni olanlarin sirket_ismi, siparis_id ve siparis_tarihleri ile yeni bir tablo olusturun

Select sirketler.sirket_isim , siparisler.siparis_id , siparisler.siparis_tarihi 
From sirketler INNER JOIN siparisler
ON sirketler.sirket_id=siparisler.sirket_id

-- LEFT JOIN--  2) LEFT JOIN : ilk tabloda var olan dataları gösterir.
-- Iki Tabloda sirket_id’si ayni olanlarin sirket_ismi, siparis_id ve siparis_tarihleri ile yeni bir tablo olusturun

Select sirketler.sirket_isim , siparisler.siparis_id , siparisler.siparis_tarihi 
From sirketler LEFT JOIN siparisler
ON sirketler.sirket_id=siparisler.sirket_id


-- 3) RIGHT JOIN :ikinci tabloda var olan dataları gösterir.

Select sirketler.sirket_isim , siparisler.siparis_id , siparisler.siparis_tarihi 
From sirketler RIGHT  JOIN siparisler
ON sirketler.sirket_id=siparisler.sirket_id

--ORNEK
Select sirket_id From sirketler
INTERSECT
Select sirket_id From siparisler 

-- 4) FULL JOIN: iki tablodaki var olan tüm dataları gösterir.

Select sirketler.sirket_isim , siparisler.siparis_id , siparisler.siparis_tarihi 
From sirketler FULL JOIN siparisler
ON sirketler.sirket_id=siparisler.sirket_id

-- 5) SELF JOIN: tabloyu kendi kendiyle birleştirme işlemi.

CREATE TABLE personel4  (
id int,
isim varchar(20),  
title varchar(60),  yonetici_id int
);
INSERT INTO personel4 VALUES(1, 'Ali Can', 'SDET', 2);
INSERT INTO personel4 VALUES(2, 'Veli Cem', 'QA', 3);
INSERT INTO personel4 VALUES(3, 'Ayse Gul', 'QA Lead', 4);  
INSERT INTO personel4 VALUES(4, 'Fatma Can', 'CEO', 5);

select * from personel4

--Her personelin yanina yonetici ismini yazdiran bir tablo olusturun
Select p1.isim As personel_ismi , p2.isim As yonetici_ismi
From personel4 p1 INNER JOIN personel4 p2
ON p1.yonetici_id = p2.id;









