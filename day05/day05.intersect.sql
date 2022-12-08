-- INTERSECT (Kesişim)
/*Farkli iki tablodaki ortak verileri INTERSECT komutu ile getirebiliriz*/
select * from personel3
select * from personel_bilgi
--Personel tablosundan Istanbul veya Ankara’da calisanlarin id’lerini yazdir
--Personel_bilgi tablosundan 2 veya 3 cocugu olanlarin id lerini yazdirin

Select id From personel3 where sehir In ('Istanbul','Ankara') 
Intersect
Select id From personel_bilgi where cocuk_sayisi In (2,3) 

--Maasi 4800 den az veya 5000 den cok olanlarin id lerini listeleyiniz
--Personel bilgi tablosundan 2 veya 3 cocugu olanlarin id lerini yazdirin.
Select id  From personel3 where maas  Not BETWEEN 4800 AND 5000 
Intersect
Select id From personel_bilgi where cocuk_sayisi IN(2,3)

--Honda,Ford ve Tofas’ta calisan ortak isimde personel varsa listeleyin
Select isim From personel3 where sirket='Honda'
Intersect
Select isim  From personel3 where sirket ='Ford'
Intersect
Select isim From personel3 where sirket='Tofas'

