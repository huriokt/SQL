-- UNION ALL
/*UNION tekrarli verileri teke düşürür ve bize o şekilde sonuç verir*/
/*UNION ALL ise tekrarli verilerle birlikte tüm sorguları getirir*/

select * from personel3
select * from personel_bilgi
--Personel tablosundada maasi 5000’den az olan tum isimleri ve maaslari bulunuz
Select isim , maas From personel3 where maas<5000
Union All
Select isim , maas From personel3 where maas<5000