-- EXCEPT(MINUS) KULLANIMI
/*İki sorgulamada harici bir sorgulama istenirse EXCEPT komutu kullanılır*/
select * from personel3
select * from personel_bilgi

-- 5000’den az maas alip Honda’da calismayanlari yazdirin
Select isim ,sirket From personel3 where maas<5000
except
Select isim ,sirket From personel3 where sirket='Honda'