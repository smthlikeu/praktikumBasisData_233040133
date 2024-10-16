USE pertemuan4

SELECT *
FROM mahasiswa
WHERE mahasiswa_id IN (

SELECT mahasiswa_id
FROM dpp_mahasiswa
WHERE status_pembayaran = 'Lunas'
);
