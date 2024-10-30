SELECT e.Name, d.DepartmentName
FROM Employee e
INNER JOIN Departments d ON e.DepartmentsID = d.DepartmentsID;
