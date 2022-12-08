-- UNION KULLANIMI--
/*Iki farkli sorgulamanin sonucunu birlestiren islemdir.Secilen Field sayisi ve Data Type'i ayni omalidir.*/

Select * From personel2

--Example:Maasi 4000’den cok olan isci isimlerini ve 5000 liradan fazla maas alinan  sehirleri	gosteren sorguyu yaziniz
Select isim as isim_ve_sehirler,maas From personel2 Where maas>4000
Union
Select sehir ,maas From personel2 Where maas>5000

-- Mehmet Ozturk ismindeki kisilerin aldigi maaslari ve
--  Istanbul’daki personelin maaslarini bir tabloda gosteren sorgu yaziniz
Select isim  As sehir_maas,maas From personel2 where isim='Mehmet Ozturk'
Union
Select sehir,maas From personel2 where sehir='Istanbul'
Order By maas Desc
--Eeger listeyi maasa gore siralamak isersek de Order By kullanabiliriz.Buyukten kucuge istersek Desc kullaniriz
DROP TABLE if exists personel-- Eger tabloyu temizlemek istersek 




