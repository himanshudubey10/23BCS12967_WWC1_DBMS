-- DROP TABLE STUDENT
-- DROP TABLE  Enrollments 
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);



CREATE TABLE Enrollments (
    student_id INT,
    course VARCHAR(50)
);


INSERT INTO Student (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David');

-- DROP TABLE STUDENT

INSERT INTO Enrollments (student_id, course) VALUES
(1, 'DBMS'),
(3, 'Java'),
(5, 'Python');

-- Solution
SELECT S.student_id, S.student_name, FROM Students S
LEFT JOIN Enrollments E
ON S.student_id = E.student_id
WHERE E.course IS NULL;
