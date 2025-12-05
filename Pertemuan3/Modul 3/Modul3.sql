SELECT * FROM Production.Product;

SELECT Name, ProductNumber, ListPrice
FROM Production.Product;

SELECT Name AS [Nama Barang], ListPrice AS 'Harga Jual'
FROM Production.Product;

SELECT Name, ListPrice, (ListPrice * 1.1) AS HargaBaru
FROM Production.Product;

SELECT Name + ' (' + ProductNumber + ')' AS ProdukLengkap
FROM Production.Product;

SELECT Name, Color, ListPrice
FROM Production.Product
WHERE Color = 'Red';

SELECT Name, ListPrice
FROM Production.Product
WHERE ListPrice > 1000;

SELECT Name, Color, ListPrice
FROM Production.Product
WHERE Color = 'Black' AND ListPrice > 500;

SELECT Name, Color
FROM Production.Product
WHERE Color IN ('Red', 'Blue', 'Black');

SELECT Name, ProductNumber
FROM Production.Product
WHERE Name LIKE '%Road%';

SELECT COUNT(*) AS TotalProduk
FROM Production.Product;

SELECT Color, COUNT(*) AS JumlahProduk
FROM Production.Product
GROUP BY Color;

SELECT ProductID, SUM(OrderQty) AS TotalTerjual, AVG(UnitPrice) AS RataRataHarga
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

SELECT Color, Size, COUNT(*) AS Jumlah
FROM Production.Product
GROUP BY Color, Size;

-- QUERY ERROR
SELECT Color, Name, COUNT(*)
FROM Production.Product
GROUP BY Color;

--Revisi
SELECT Color, Name, COUNT(*)
FROM Production.Product
GROUP BY Color,Name;

SELECT Color, COUNT(*) AS Jumlah
FROM Production.Product
GROUP BY Color
HAVING COUNT(*) > 20;

SELECT Color, COUNT(*) AS Jumlah
FROM Production.Product
WHERE ListPrice > 500 -- Filter baris dulu (Step 2)
GROUP BY Color -- Kelompokkan sisa baris (Step 3)
HAVING COUNT(*) > 10;-- Filter hasil kelompok (Step 4)

SELECT ProductID, SUM(OrderQty) AS TotalQty
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(OrderQty) > 1000;

SELECT SpecialOfferID, AVG(OrderQty) AS RataRataBeli
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID
HAVING AVG(OrderQty) < 2

SELECT Color
FROM Production.Product
GROUP BY Color
HAVING MAX(ListPrice) > 3000;

SELECT DISTINCT JobTitle
FROM HumanResources.Employee;

SELECT Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

SELECT TOP 5 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

SELECT Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC
OFFSET 10 ROWS
FETCH NEXT 5 ROWS ONLY;

SELECT TOP 3 Color, SUM(ListPrice) AS TotalNilaiStok
FROM Production.Product
WHERE ListPrice > 0 -- Step 2: Filter sampah
GROUP BY Color -- Step 3: Kelompokkan
ORDER BY TotalNilaiStok DESC;-- Step 6: Urutkan
