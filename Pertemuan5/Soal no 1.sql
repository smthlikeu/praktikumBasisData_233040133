CREATE TABLE jurusan (
id INT PRIMARY KEY,
nama_jurusan VARCHAR(255)
);

CREATE TABLE Mahasiswa (
id INT PRIMARY KEY,
NPM INT,
nama VARCHAR(255),
tanggal_lahir DATE,
alamat VARCHAR(255),
no_hp INT,
jurusan_id BIGINT,
);

