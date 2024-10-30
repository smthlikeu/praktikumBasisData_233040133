SELECT e.Name,m.Name
FROM Employee e
LEFT JOIN Employee m ON e.ManagerID = m.EmployeeID;
