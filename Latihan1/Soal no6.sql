-- Soal no6

USE pertemuan3

SELECT E.empid, E.FirstName, E.lastname
FROM HR.Employees E
WHERE E.empid NOT IN (
    SELECT DISTINCT empid
    FROM Sales.Orders
    WHERE orderdate >= '2016-05-01'
);