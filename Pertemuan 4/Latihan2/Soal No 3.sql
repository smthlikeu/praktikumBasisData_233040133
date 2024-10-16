USE pertemuan4

SELECT mahasiswa_id, COUNT(*) AS jumlah_total_mahasiswa_informatika
FROM mahasiswa
GROUP BY mahasiswa_id;