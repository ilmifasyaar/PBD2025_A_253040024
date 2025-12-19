use KampusDB;

SELECT D.NamaDosen
FROM Dosen D
JOIN MataKuliah MK ON D.DosenID = MK.DosenID
WHERE MK.NamaMK = 'Basis Data'

SELECT D.NamaDosen
FROM Dosen D
WHERE D.DosenID = (
	SELECT DosenID 
	FROM MataKuliah
	WHERE NamaMK = 'Basis Data'
);

--CTE TABEL SEMENTARA
WITH MK_Dosen AS (
	SELECT D.*
	FROM Dosen D
	JOIN MataKuliah MK ON D.DosenID = MK.DosenID
)
SELECT * FROM MK_Dosen