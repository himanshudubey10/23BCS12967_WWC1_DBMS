-- Session 4
-- Ques 1

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

INSERT INTO Students (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(13, 'John'),
(6, 'Alex');

CREATE TABLE Subjects (
    subject_name VARCHAR(50) PRIMARY KEY
);

INSERT INTO Subjects (subject_name) VALUES
('Math'),
('Physics'),
('Programming');

CREATE TABLE Examinations (
    student_id INT,
    subject_name VARCHAR(50)
);

INSERT INTO Examinations (student_id, subject_name) VALUES
(1, 'Math'),
(1, 'Physics'),
(1, 'Programming'),
(2, 'Programming'),
(1, 'Physics'),
(1, 'Math'),
(13, 'Math'),
(13, 'Programming'),
(13, 'Physics'),
(2, 'Math'),
(1, 'Math');

-- Solution
SELECT ST.student_id, ST.student_name, SB.subject_name, COUNT(E.subject_name) AS attended_exams
FROM Students ST
CROSS JOIN Subjects SB
LEFT JOIN Examinations E
ON ST.student_id = E.student_id AND SB.subject_name = E.subject_name
GROUP BY ST.student_id, SB.subject_name
ORDER BY ST.student_id, SB.subject_name;