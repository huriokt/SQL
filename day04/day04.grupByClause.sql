--GROUP BY CLAUSE--sonuclari bir veya birden fazla sutuna gore gruplamak icin Select komutu ile kullanilir

CREATE TABLE manav
(
isim varchar(50),  Urun_adi varchar(50),  Urun_miktar int
);
INSERT INTO manav VALUES( 'Ali', 'Elma', 5);
INSERT INTO manav VALUES( 'Ayse', 'Armut', 3);
INSERT INTO manav VALUES( 'Veli', 'Elma', 2);
INSERT INTO manav VALUES( 'Hasan', 'Uzum', 4);
INSERT INTO manav VALUES( 'Ali', 'Armut', 2);
INSERT INTO manav VALUES( 'Ayse', 'Elma', 3);
INSERT INTO manav VALUES( 'Veli', 'Uzum', 5);
INSERT INTO manav VALUES( 'Ali', 'Armut', 2);
INSERT INTO manav VALUES( 'Veli', 'Elma', 3);
INSERT INTO manav VALUES( 'Ayse', 'Uzum', 2);

Select * From manav
--Isme gore alinan toplam urunleri listeleyiniz
Select isim,sum(Urun_miktar) From manav
Group By isim;

--Isme gore alinan toplam urunleri bulup buyukten listeleyiniz

Select isim,sum(Urun_miktar) As aldigi_toplam_urun From manav
Group By isim Order By aldigi_toplam_urun desc;

-- Urun ismine gore urunu alan toplam kisi sayisi
Select Urun_adi ,count(isim) From manav
Group By Urun_adi;

-- Urun ismine gore alinan toplam urun sayisini  siralayiniz

Select Urun_adi,sum(Urun_miktar) As alinan_toplam_urun From manav
Group By  Urun_adi 

-- Urun ismine gore urunu alinan toplam urun sayisini kucukten buyuge siralayiniz

Select Urun_adi,sum(Urun_miktar) As alinan_toplam_urun From manav
Group By  Urun_adi Order By alinan_toplam_urun asc;

--Bir kisinin kac csit urun aldigini listeleyelim 
Select isim ,count(Urun_adi) As aldigi_urun_cesidi From manav
Group By isim;

