	CREATE TABLE mahasiswa(
id int primary key,
nim int,
nama varchar(100),
jurusan varchar(100),
tanggalLahir date
)

INSERT INTO mahasiswa (id,nim,nama,jurusan,tanggalLahir)
VALUES (1,233040133,'Tenz','Teknik Informatika','2000-01-01'),
(2,233040101,'El Gasing','Teknik Informatika','2005-02-02'),
(3,233040102,'Anthony santos','Teknik Informatika','2005-02-03'),
(4,233040103,'Mata kiri','Teknik Informatika','2005-02-04'),
(5,233040104,'Alfi','Teknik Informatika','2005-02-02'),
(6,233040100,'Teing','Teknik Informatika','2005-02-02')

SELECT mahasiswa.*
from mahasiswa
