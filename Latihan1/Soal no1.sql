-- Soal no2

USE pertemuan3

SELECT 
  c.custid,
  COUNT(DISTINCT o.orderid) AS numorders,
  SUM(od.qty) AS totalqty
FROM Sales.Customers c
JOIN Sales.Orders o ON c.custid = o.custid
JOIN Sales.OrderDetails od ON o.orderid = od.orderid
WHERE c.country = 'USA'
GROUP BY c.custid
ORDER BY c.custid;