USE pertemuan3

SELECT *
FROM HR.Employees;

SELECT city, COUNT(*)
FROM HR.Employees
GROUP BY city;

SELECT titleofcourtesy, COUNT(*)AS Number
FROM HR.Employees
GROUP BY titleofcourtesy;

SELECT TOP(5)city
FROM HR.Employees

SELECT birthdate
FROM HR.Employees
WHERE hiredate 
BETWEEN '1947-09-19' AND '2003-05-03';

SELECT *
FROM HR.Employees
WHERE city IN ('London', 'Seattle');

SELECT *
FROM HR.Employees
WHERE title
LIKE 'Sales%';


