CREATE TABLE jurusan(
    id BIGINT PRIMARY KEY NOT NULL,
    nama_jurusan VARCHAR(255) NOT NULL
);

CREATE TABLE dosen_wali(
    id BIGINT PRIMARY KEY NOT NULL,
    NIP BIGINT NOT NULL,
    nama VARCHAR(255) NOT NULL,
    tanggal_lahir DATE,
    alamat VARCHAR(255),
    no_hp VARCHAR(15)
);

CREATE TABLE Mahasiswa(
    id BIGINT PRIMARY KEY NOT NULL,
    NPM VARCHAR(20) NOT NULL,
    nama VARCHAR(255) NOT NULL,
    tanggal_lahir DATE,
    alamat VARCHAR(255),
    no_hp VARCHAR(15),
    jurusan_id BIGINT,
    dosen_wali_id BIGINT,
    FOREIGN KEY (jurusan_id) REFERENCES jurusan(id),
    FOREIGN KEY (dosen_wali_id) REFERENCES dosen_wali(id)
);
