CREATE DATABASE student_management;
USE student_management;
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    date_of_birth DATE,
    gender VARCHAR(10)
);
CREATE TABLE instructors (
instructor_id INT PRIMARY KEY AUTO_INCREMENT,
instructor_name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE
);
CREATE TABLE courses (
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(100) NOT NULL,
instructor_id INT,
FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
);
CREATE TABLE enrollments (
enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
course_id INT,
enrollment_date DATE,
FOREIGN KEY (student_id) REFERENCES students(id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
CREATE TABLE grades (
grade_id INT PRIMARY KEY AUTO_INCREMENT,
enrollment_id INT,
score DECIMAL(5,2),
FOREIGN KEY (enrollment_id) REFERENCES enrollments(enrollment_id)
);
INSERT INTO students (first_name, last_name, email, date_of_birth, gender) VALUES 
('James', 'Okon', 'james1@mail.com', '2005-01-01', 'Male'),
('Blessing', 'Ade', 'bless2@mail.com', '2004-05-12', 'Female'),
('Chidi', 'Eze', 'chidi3@mail.com', '2003-11-20', 'Male'),
('Funke', 'Akindele', 'funke4@mail.com', '2005-02-15', 'Female'),
('Abubakar', 'Musa', 'musa5@mail.com', '2004-08-30', 'Male'),
('Chinelo', 'Obi', 'nello6@mail.com', '2003-03-10', 'Female'),
('Tunde', 'Bakare', 'tunde7@mail.com', '2005-06-25', 'Male'),
('Aisha', 'Bello', 'aisha8@mail.com', '2004-12-05', 'Female'),
('Emeka', 'Ofor', 'emeka9@mail.com', '2003-07-14', 'Male'),
('Zainab', 'Idris', 'zee10@mail.com', '2005-09-22', 'Female'),
('Olu', 'Segun', 'olu11@mail.com', '2004-01-19', 'Male'),
('Nkechi', 'Adams', 'nke12@mail.com', '2003-10-11', 'Female'),
('Ibrahim', 'Sani', 'sani13@mail.com', '2005-04-08', 'Male'),
('Fatima', 'Usman', 'fati14@mail.com', '2004-05-30', 'Female'),
('Samuel', 'Ajayi', 'sam15@mail.com', '2003-12-25', 'Male'),
('Grace', 'Umar', 'grace16@mail.com', '2005-08-12', 'Female'),
('Victor', 'Nnaji', 'vic17@mail.com', '2004-02-28', 'Male'),
('Esther', 'Duru', 'ess18@mail.com', '2003-06-17', 'Female'),
('Kazeem', 'Yusuf', 'kaz19@mail.com', '2005-03-05', 'Male'),
('Adaora', 'Onyeka', 'ada20@mail.com', '2004-11-13', 'Female'),
('Mubarak', 'Lawal', 'mub21@mail.com', '2003-09-01', 'Male'),
('Yinka', 'Dey', 'yinka22@mail.com', '2005-07-20', 'Female'),
('Benson', 'Idahosa', 'ben23@mail.com', '2004-10-10', 'Male'),
('Kemi', 'Nelson', 'kemi24@mail.com', '2003-01-05', 'Female'),
('David', 'Mark', 'david25@mail.com', '2005-05-15', 'Male'),
('Sarah', 'Jubril', 'sarah26@mail.com', '2004-04-22', 'Female'),
('Paul', 'Enenche', 'paul27@mail.com', '2003-08-30', 'Male'),
('Joy', 'Madaki', 'joy28@mail.com', '2005-12-10', 'Female'),
('Solomon', 'Lalong', 'solo29@mail.com', '2004-03-14', 'Male'),
('Ebele', 'Jonathan', 'ebe30@mail.com', '2003-05-25', 'Female'),
('Femi', 'Falana', 'femi31@mail.com', '2005-02-02', 'Male'),
('Bola', 'Tinubu', 'bola32@mail.com', '2004-06-18', 'Female'),
('Atiku', 'Abubakar', 'atiku33@mail.com', '2003-04-10', 'Male'),
('Patience', 'Ozokwor', 'mama34@mail.com', '2005-07-07', 'Female'),
('Pete', 'Edochie', 'pete35@mail.com', '2004-09-09', 'Male'),
('Genevieve', 'Nnaji', 'genny36@mail.com', '2003-11-11', 'Female'),
('Burna', 'Boy', 'burna37@mail.com', '2005-01-20', 'Male'),
('Tems', 'Openiyi', 'tems38@mail.com', '2004-03-03', 'Female'),
('Wiz', 'Kid', 'wiz39@mail.com', '2003-10-30', 'Male'),
('Sade', 'Adu', 'sade40@mail.com', '2005-06-12', 'Female');
INSERT INTO instructors (instructor_name, email) VALUES
('Dr. Adams','adams@mail.com'),
('Prof. Baker','baker@mail.com'),
('Dr. Carter','carter@mail.com'),
('Prof. Diaz','diaz@mail.com'),
('Dr. Evans','evans@mail.com');
INSERT INTO courses (course_name, instructor_id) VALUES
('Mathematics',1),
('Physics',2),
('Chemistry',3),
('Biology',4),
('Computer Science',5),
('Statistics',1),
('Economics',2),
('English',3);
INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
(1,1,'2024-01-10'),(1,2,'2024-01-10'),
(2,1,'2024-01-11'),(2,3,'2024-01-11'),
(3,4,'2024-01-12'),(3,5,'2024-01-12'),
(4,2,'2024-01-12'),(4,6,'2024-01-12'),
(5,7,'2024-01-13'),(5,8,'2024-01-13'),
(6,1,'2024-01-14'),(6,2,'2024-01-14'),
(7,3,'2024-01-15'),(7,4,'2024-01-15'),
(8,5,'2024-01-16'),(8,6,'2024-01-16'),
(9,7,'2024-01-17'),(9,8,'2024-01-17'),
(10,1,'2024-01-18'),(10,3,'2024-01-18'),
(11,2,'2024-01-19'),(11,4,'2024-01-19'),
(12,5,'2024-01-20'),(12,6,'2024-01-20'),
(13,7,'2024-01-21'),(13,8,'2024-01-21'),
(14,1,'2024-01-22'),(14,2,'2024-01-22'),
(15,3,'2024-01-23'),(15,4,'2024-01-23'),
(16,5,'2024-01-24'),(16,6,'2024-01-24'),
(17,7,'2024-01-25'),(17,8,'2024-01-25'),
(18,1,'2024-01-26'),(18,2,'2024-01-26'),
(19,3,'2024-01-27'),(19,4,'2024-01-27'),
(20,5,'2024-01-28'),(20,6,'2024-01-28');
INSERT INTO grades (enrollment_id, score) VALUES
(1,85),(2,78),(3,92),(4,88),(5,67),(6,73),(7,90),(8,81),
(9,45),(10,55),(11,77),(12,69),(13,83),(14,91),(15,74),(16,88),
(17,59),(18,62),(19,95),(20,87),(21,70),(22,79),(23,84),(24,66),
(25,58),(26,72),(27,93),(28,80),(29,68),(30,75),(31,89),(32,82),
(33,60),(34,71),(35,76),(36,64),(37,86),(38,90),(39,52),(40,73);
SELECT s.first_name, s.last_name, c.course_name
FROM students s
JOIN enrollments e ON s.id = e.student_id
JOIN courses c ON e.course_id = c.course_id;
SELECT c.course_id,
       c.course_name,
       COUNT(e.student_id) AS total_students
FROM courses c
JOIN enrollments e
ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
HAVING COUNT(e.student_id) >= 3;
SELECT CASE
    WHEN COUNT(*) = 0
    THEN 'All enrollments have one grade'
    ELSE 'Some enrollments are missing grades'
END AS validation_result
FROM enrollments e
LEFT JOIN grades g
ON e.enrollment_id = g.enrollment_id
WHERE g.enrollment_id IS NULL;
SELECT s.first_name, s.last_name, c.course_name
FROM students s
JOIN enrollments e ON s.id = e.student_id
JOIN courses c ON e.course_id = c.course_id;
SELECT i.instructor_name, c.course_name
FROM instructors i
JOIN courses c ON i.instructor_id = c.instructor_id;
SELECT s.first_name, g.score
FROM students s
JOIN enrollments e ON s.id=e.student_id
JOIN grades g ON e.enrollment_id=g.enrollment_id
WHERE g.score > 80;
SELECT c.course_name, AVG(g.score) AS avg_score
FROM courses c
JOIN enrollments e ON c.course_id=e.course_id
JOIN grades g ON e.enrollment_id=g.enrollment_id
GROUP BY c.course_name;
SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM courses c
JOIN enrollments e ON c.course_id=e.course_id
GROUP BY c.course_name;
SELECT s.first_name, s.last_name, AVG(g.score) AS avg_score
FROM students s
JOIN enrollments e ON s.id=e.student_id
JOIN grades g ON e.enrollment_id=g.enrollment_id
GROUP BY s.id
ORDER BY avg_score DESC
LIMIT 5;
SELECT s.first_name, g.score
FROM students s
JOIN enrollments e ON s.id=e.student_id
JOIN grades g ON e.enrollment_id=g.enrollment_id
WHERE g.score < 50;
SELECT c.course_name
FROM courses c
JOIN enrollments e ON c.course_id=e.course_id
GROUP BY c.course_name
HAVING COUNT(*) > 5;
SELECT * FROM students ORDER BY date_of_birth DESC LIMIT 1;
SELECT * FROM students ORDER BY date_of_birth ASC LIMIT 1;
SELECT s.* FROM students s
LEFT JOIN enrollments e
ON s.id=e.student_id
WHERE e.student_id IS NULL;
SELECT i.instructor_name,
COUNT(e.student_id) AS total_students
FROM instructors i
JOIN courses c ON i.instructor_id=c.instructor_id
JOIN enrollments e ON c.course_id=e.course_id
GROUP BY i.instructor_name;
SELECT s.id,
    s.first_name,
    s.last_name,
    AVG(g.score) AS avg_score,
    RANK() OVER (ORDER BY AVG(g.score) DESC) AS student_rank
FROM students s
JOIN enrollments e ON s.id = e.student_id
JOIN grades g ON e.enrollment_id = g.enrollment_id
GROUP BY s.id;
