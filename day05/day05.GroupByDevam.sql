--Group By (Devam)
Select * From personel2

--Example : personel2 tablosundaki Ismlere gore toplam maaslari bulunuz.

Select isim,sum(maas) As toplam_maas From personel2
Group By isim

--Example : personel2 tablosundaki sirketlere gore maasi 5000 den buyuk olan personel sayisini bulunuz.

Select sirket ,count(*) As calisan_sayisi From personel2 where maas>5000
Group By sirket
