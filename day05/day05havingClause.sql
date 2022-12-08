--HAVING CLAUSE----
/*Having komutu yanlızca group by komutu ile kullanılır.Eğer gruplamadan sonra bir şart varsa having komutu kullanılır
Gruplamadan once bir sart varsa 'where' kullaniyoruz.Where kullanımı ile aynı mantıkta çalışır*/

CREATE TABLE personel2
(
id int,
isim varchar(50),  sehir varchar(50),  maas int,  
sirket varchar(20)
);
INSERT INTO personel2 VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda');  
INSERT INTO personel2 VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');  
INSERT INTO personel2 VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500, 'Honda');  
INSERT INTO personel2 VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford');  
INSERT INTO personel2 VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');  
INSERT INTO personel2 VALUES(456789012, 'Veli Sahin', 'Ankara', 4500, 'Ford');  
INSERT INTO personel2 VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');

Select * From personel2

--Her sirketin MIN maaslarini eger 2000’den buyukse goster
Select sirket,min(maas) As en_dusuk_maas From personel2
Group By sirket
Having min(maas)>4000

-- Ayni isimdeki kisilerin aldigi toplam gelir 10000 liradan fazla ise ismi  ve toplam maasi gosteren sorgu yaziniz
Select isim , sum(maas) as toplam_maas From personel2
Group By isim
Having sum(maas)>10000

-- Eger bir sehirde calisan personel sayisi 1’den coksa sehir ismini ve personel sayisini veren sorgu yaziniz
Select sehir, count(isim) As ayni_sehirli From personel2
Group By sehir
Having count(isim)>1

-- Eger bir sehirde alinan MAX maas 5000’den dusukse sehir ismini ve MAX maasi veren sorgu yaziniz
Select sehir ,max(maas) From personel2
Group By sehir
Having max(maas)<5000

