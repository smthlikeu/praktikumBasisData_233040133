CREATE TABLE Departments (
DepartmentsID INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
DepartmentName VARCHAR(50) NOT NULL
)

CREATE TABLE Projects (
ProjectsID INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
ProjectName VARCHAR(50) NOT NULL,
DepartmentsID int,
FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID)
ON UPDATE CASCADE ON DELETE CASCADE
)

CREATE TABLE Employee (
EmployeeID INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
Name VARCHAR(50) NOT NULL,
DepartmentsID int,
FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID)
ON UPDATE CASCADE ON DELETE CASCADE,
ManagerID int
FOREIGN KEY (ManagerID) REFERENCES Employee (EmployeeID) -- Self references tidak perlu mengunakan ON UPDATE CASCADE ON DELETE CASCADE
)

CREATE TABLE Salaries (
EmployeeID int,
FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
ON UPDATE CASCADE ON DELETE CASCADE,
Salaries DECIMAL(10,2) NOT NULL
)


INSERT INTO Departments (DepartmentName)
VALUES 
('Human Resources'),
('Finance'),
('IT');

INSERT INTO Employee (Name,DepartmentsID,ManagerID)
VALUES
('Dadang', 1, NULL), -- HR Manager
('Vincensus', 1, 1),
('Ratna Sari', 1, 1),
('Budi Santoso', 1, 1),
('Maya Wijaya', 1, 1),
('Reza Pratama', 2, NULL), -- Finance Manager
('Dian Kusuma', 2, 6),
('Eko Prasetyo', 2, 6),
('Siti Nurhayati', 2, 6),
('Ahmad Faisal', 2, 6),
('Linda Permata', 3, NULL), -- IT Manager
('Dewi Safitri', 3, 11),
('Surya Darma', 3, 11),
('Putri Indah', 3, 11),
('Rico Wijaya', 3, 11);

INSERT INTO Projects (ProjectName, DepartmentsID)
VALUES 
('Recruitment System Update', 1),           -- HR Project
('Employee Training Program', 1),           -- HR Project
('Performance Review System', 1),           -- HR Project
('Annual Budget Planning', 2),             -- Finance Project
('Cost Optimization Initiative', 2),        -- Finance Project
('Financial Reporting System', 2),          -- Finance Project
('Database Migration Project', 3),          -- IT Project
('Network Security Upgrade', 3),            -- IT Project
('Mobile App Development', 3),              -- IT Project
('System Integration Project', 3);          -- IT Project

INSERT INTO Salaries (EmployeeID, Salaries)
VALUES 
(1, 15000000),  -- Dadang (HR Manager)
(2, 8500000),   -- Vincensus (HR Staff)
(3, 8000000),   -- Ratna Sari (HR Staff)
(4, 8200000),   -- Budi Santoso (HR Staff)
(5, 8300000),   -- Maya Wijaya (HR Staff)
(6, 16000000),  -- Reza Pratama (Finance Manager)
(7, 9000000),   -- Dian Kusuma (Finance Staff)
(8, 8800000),   -- Eko Prasetyo (Finance Staff)
(9, 8700000),   -- Siti Nurhayati (Finance Staff)
(10, 8900000),  -- Ahmad Faisal (Finance Staff)
(11, 17000000), -- Linda Permata (IT Manager)
(12, 10000000), -- Dewi Safitri (IT Staff)
(13, 9800000),  -- Surya Darma (IT Staff)
(14, 9500000),  -- Putri Indah (IT Staff)
(15, 9700000);  -- Rico Wijaya (IT Staff)

SELECT * FROM Departments;
SELECT * FROM Employee;
SELECT * FROM Projects;
SELECT * FROM Salaries;

