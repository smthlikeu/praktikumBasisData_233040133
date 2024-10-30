SELECT p.ProjectName,d.DepartmentName
FROM Departments d
RIGHT JOIN Projects p ON d.DepartmentsID = p.DepartmentsID; 

