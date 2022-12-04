--FOREIGN KEY

/*Practice 4:
“tedarikciler3” isimli bir tablo olusturun. Tabloda “tedarikci_id”, “tedarikci_ismi”, “iletisim_isim” field’lari olsun ve “tedarikci_id” yi Primary Key yapin.
“urunler” isminde baska bir tablo olusturun “tedarikci_id” ve “urun_id” field’lari olsun ve
“tedarikci_id” yi Foreign Key yapin.*/

CREATE TABLE tedarikciler4
(
tedarikci_id char(5) Primary kEY,
	tedarikci_ismi varchar(20),
	iletisim_ismi  varchar(20)
);
CREATE TABLE urunler
(
tedarikci_id char(5) ,
	tedarikci_ismi varchar(20),
	urun_id char(5),
	
Constraint urun_fk	FOREIGN KEY (tedarikci_id) REFERENCES tedarikciler3(tedarikci_id)
);
