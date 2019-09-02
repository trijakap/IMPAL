-- DDL STARTS HERE
CREATE TABLE Pembeli(
    idPembeli CHAR(10) NOT NULL,
    nama VARCHAR(30),
    username VARCHAR(30),
    password VARCHAR(30),
    alamat VARCHAR(90),
    jk CHAR(1),
    noHp CHAR(12),
    tglLahir DATE,
    CONSTRAINT pembeli_pk PRIMARY KEY (idPembeli) ENABLE
);

CREATE TABLE Obat(
    idObat CHAR(6) NOT NULL,
    namaObat VARCHAR(30),
    deskripsi VARCHAR(120),
    harga NUMBER,
    CONSTRAINT obat_pk PRIMARY KEY (idObat) ENABLE
);

CREATE TABLE Keranjang(
    idKeranjang CHAR(10) NOT NULL,
    idPembeli CHAR(10) NOT NULL,
    idObat CHAR(10) NOT NULL,
    CONSTRAINT keranjang_pk PRIMARY KEY (idKeranjang) ENABLE
)

ALTER TABLE Keranjang ADD CONSTRAINT keranjang_fk1 FOREIGN KEY (idPembeli)
    REFERENCES Pembeli (idPembeli) ON DELETE CASCADE;
ALTER TABLE Keranjang ADD CONSTRAINT keranjang_fk2 FOREIGN KEY (idObat)
    REFERENCES Obat (idObat) ON DELETE CASCADE;

-- DDL ENDS HERE
-- DML Start Here
alter session set nls_date_format= 'dd-mm-yyyy';

INSERT INTO Pembeli ('1301170001','Endang Sukamti','endangsukamti','endangcantikparah','Komplek TKI 1 Blok A No. 10','P','081322222222',01-01-1971);
INSERT INTO Pembeli ('1301170002','Antonio Simajuntak','antoganteng','emangsih','Komplek TKI 2 Blok B No. 20','L','081322222223',01-01-1972);
INSERT INTO Pembeli ('1301170003','Mamang Jebred','mamankedan','resepngajebred','Komplek TKI 3 Blok F No. 30','L','081322222221',02-01-1971);
INSERT INTO Pembeli ('1301170004','Dodi Sudrajat','dodidodi','123456','Komplek TKI 5 Blok Z No. 100','L','081322222224',03-01-1971);
INSERT INTO Pembeli ('1301170005','Nana Merana','nanasedih','sedihsekali','Komplek TKI 3 Blok B No. 12','P','081322222225',03-01-1971);
INSERT INTO Pembeli ('1301170006','Dodo','dodo','dodo','Komplek TKI 3 Blok B No. 13','L','081322222226',04-01-1971);
INSERT INTO Pembeli ('1301170007','Rudiana','rudiana','password','Komplek TKI 3 Blok B No. 14','L','081322222227',05-01-1971);
INSERT INTO Pembeli ('1301170008','Gungun','gungun','password','Komplek TKI 3 Blok B No. 15','L','081322222228',06-01-1971);
INSERT INTO Pembeli ('1301170009','Wibowo Chandramukti','rorojonggrang','password','Komplek TKI 3 Blok B No. 16','L','081322222229',07-01-1971);
INSERT INTO Pembeli ('1301170010','Raden Gilang Pramudya','aduh','kenapa','Komplek TKI 3 Blok B No. 17','L','081322222230',07-01-1971);

INSERT INTO Obat ('obt001','Amoxicillin','20-40mg/kgBB/hari (3x)','Caps 250mg, Kaptab500mg, Syr125;250mg/5ml, Inj. 1g/vial',4500);
INSERT INTO Obat ('obt002','Ampicillin','50-100mg/kgBB/hari (4x)IV: 100-200mg/kgBB/hari (4x)','Caps 250mg, Kaptab500mg, Syr125;250mg/5ml, Inj.0,5;1g/vial',18900);
INSERT INTO Obat ('obt003','As. Nalidiksat','55mg/kgBB/hari (4x','Tab 500mg',20000);
INSERT INTO Obat ('obt004','Ceftriaxone','50-80mg/kgBB/hari (1x)','Inj. 500mg;1g/vial (IM/IV)',8000);
INSERT INTO Obat ('obt005','Cefixime','3-10mg/kgBB/hari (2x)','Caps 50;100mg, Syr100mg/5ml',12000);
INSERT INTO Obat ('obt006','Cefadroxil','25-30mg/kgBB/hari (2x)Dewasa 500mg/kali (2-4x)','Caps 250;500mg, Syr125;500mg/5ml',1500);
INSERT INTO Obat ('obt007','Cefuroxime','20mg/kgBB/hari (2x)','Tab 500mg, Kap250;500mg, Inj.750mg;1g/vial',10000);
INSERT INTO Obat ('obt008','Cefotaxime','Anak: 50-100mg/kgBB/hari(3x)BB <50kg: 100-200mg/kgBB/hari (3-4x)IM/IV BB>50kg: 1-2g (3-4x)Dewasa: 1g/kali (2x)','Inj. 500mg;1g/vial',11500);
INSERT INTO Obat ('obt009','Cotrimoxazole','T: 6-12mg/kgBB/hari (2x)S: 30-50mg/kgBB/hari (2x)','Pedtab 120mg, Tab480;960mg, Susp.240mg/5ml',1600);
INSERT INTO Obat ('obt010','Chloramphenicol','Usia >1bln: 50-75mg/kgBB/hari (4x','Caps 250;500mg, Syr125mg/5ml, Inj. 1g/vial',4600);

INSERT INTO Keranjang ('krj0000001','1301170001','obt001');
INSERT INTO Keranjang ('krj0000002','1301170001','obt003');
INSERT INTO Keranjang ('krj0000003','1301170001','obt002');
INSERT INTO Keranjang ('krj0000004','1301170001','obt006');
INSERT INTO Keranjang ('krj0000005','1301170001','obt004');
INSERT INTO Keranjang ('krj0000006','1301170002','obt001');
INSERT INTO Keranjang ('krj0000007','1301170002','obt002');
INSERT INTO Keranjang ('krj0000008','1301170002','obt003');
INSERT INTO Keranjang ('krj0000009','1301170002','obt004');
INSERT INTO Keranjang ('krj0000010','1301170002','obt005');

-- DML ENDS HERE

SELECT * FROM Pembeli;
SELECT * FROM Obat;
SELECT * FROM Keranjang;