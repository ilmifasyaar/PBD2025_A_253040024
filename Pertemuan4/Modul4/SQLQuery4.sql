SELECT M.NamaMahasiswa, MK.NamaMK
FROM Mahasiswa M
CROSS JOIN MataKuliah MK;

SELECT D.NamaDosen, R.KodeRuangan
FROM Dosen D
CROSS JOIN Ruangan R;

SELECT M.NamaMahasiswa, K.MataKuliahID
FROM Mahasiswa M
LEFT JOIN KRS K ON M.MahasiswaID = K.MahasiswaID;

SELECT MK.NamaMK, J.Hari 
FROM MataKuliah MK 
LEFT JOIN JadwalKuliah J ON MK.MataKuliahID = J.MataKuliahID;

SELECT NM.NamaMahasiswa, NA.NilaiAkhir 
FROM Mahasiswa NM
LEFT JOIN Nilai NA ON NM.MahasiswaID = NA.MahasiswaID;

SELECT J.Hari, MK.NamaMK
FROM JadwalKuliah J
LEFT JOIN MataKuliah MK ON J.MataKuliahID = MK.MataKuliahID;

