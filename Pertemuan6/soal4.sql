SELECT e.Name, s.Salaries
FROM Employee e
FULL JOIN Salaries s ON e.EmployeeID = s.EmployeeID;

