-- 23BCS12967, Himanshu Dubey

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

INSERT INTO Employee (emp_id, emp_name, department, salary) VALUES
(101, 'Karan', 'HR',52000),
(102, 'Ishita', 'Finance',68000),
(103, 'Rahul', 'IT',47000),
(104, 'Sneha', 'Marketing',78000),
(105, 'Vivek', 'Sales',62000),
(106, 'Ananya', 'IT',91000);

CREATE VIEW Employee_View AS
SELECT 
    emp_id, 
    emp_name, 
    department, 
    salary
FROM Employee;

CREATE ROLE Data_Analyst;

GRANT SELECT ON Employee_View TO Data_Analyst;
