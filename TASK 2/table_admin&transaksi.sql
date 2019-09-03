CREATE TABLE Admin(
    idAdmin CHAR(10) NOT NULL,
    idObat char(6) NOT NULL,
    nama VARCHAR(30),
    username VARCHAR(30),
    password VARCHAR(30),
    alamat VARCHAR(90),
    jk CHAR(1),
    noHp CHAR(12),
    tglLahir DATE,
    CONSTRAINT admin_pk PRIMARY KEY (idAdmin) ENABLE
);

CREATE TABLE Transaksi(
    idTransaksi CHAR(10) NOT NULL,
    idKeranjang CHAR(10) NOT NULL,
    tanggal DATE,
    statusTransaksi VARCHAR (20),
    totalBayar NUMBER,
    CONSTRAINT Transaksi_pk PRIMARY KEY (idTransaksi) ENABLE
);

    ALTER TABLE Admin ADD CONSTRAINT Admin_fk1 FOREIGN KEY (idObat)
        REFERENCES Obat (idObat) ON DELETE CASCADE;
    ALTER TABLE Transaksi ADD CONSTRAINT Transaksi_fk1 FOREIGN KEY (idKeranjang)
        REFERENCES Keranjang (idKeranjang) ON DELETE CASCADE;
    --ddl end
    --dml start

    alter session set nls_date_format= 'dd-mm-yyyy';

    INSERT INTO Admin ('admin00001','obt001','kang mimin','mimin','mimin123','Jl.bojong soang','L','081212179428','05-11-1999');

    INSERT Transaksi ('trk0000001','krj0000001','10-10-2010','sudah bayar',100000);
    --dml end
