-- Soal no3

USE pertemuan3

SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C   
INNER JOIN Sales.Orders AS O     
ON C.custid = O.custid;