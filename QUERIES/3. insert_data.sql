INSERT INTO Students (first_name, last_name, email, date_of_birth) VALUES
('Ahmed', 'Nasser', 'ahmed.nasser@alexu.com', '2001-05-12'),
('Fatima', 'Saeed', 'fatima.saeed@alexu.com', '2003-11-24'),
('Omar', 'Khaled', 'omar.khaled@alexu.com', '2002-02-18'),
('Sara', 'Hassan', 'sara.hassan@alexu.com', '2004-07-29'),
('Youssef', 'Ali', 'youssef.ali@alexu.com', '2001-09-15'),
('Mariam', 'Adel', 'mariam.adel@alexu.com', '2003-04-07'),
('Mohamed', 'Fathy', 'mohamed.fathy@alexu.com', '2002-12-10'),
('Noor', 'Ibrahim', 'noor.ibrahim@alexu.com', '2005-01-19'),
('Hala', 'Mostafa', 'hala.mostafa@alexu.com', '2004-06-03'),
('Rami', 'Ziad', 'rami.ziad@alexu.com', '2001-08-27');

INSERT INTO Instructors (first_name, last_name, email) VALUES
('Ahmed', 'Shawky', 'ahmed.shawky@alexu.edu.eg'),
('Hoda', 'Hassan', 'hoda.hassan@alexu.edu.eg'),
('Aymen', 'Khalil', 'aymen.khalil@alexu.edu.eg');


INSERT INTO Courses (course_name, course_description, instructor_id) VALUES
('Introduction to Programming', 'Learn the basics of programming with Python.', 1),
('Data Structures and Algorithms', 'An in-depth study of data structures and algorithms.', 2),
('Web Development', 'Building websites and web applications with HTML, CSS, and JavaScript.', 3),
('Database Management Systems', 'Understanding and managing relational databases.', 3),
('Machine Learning', 'Introduction to machine learning concepts and techniques.', 1);

INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES
(4, 3, '2023-10-15'),
(2, 2, '2023-09-20'),
(3, 4, '2023-09-10'),
(4, 3, '2023-10-25'),
(5, 1, '2023-10-14'),
(6, 5, '2023-09-30'),
(7, 2, '2023-09-22'),
(8, 3, '2023-09-18'),
(9, 1, '2023-09-05'),
(10, 5, '2023-10-01'),
(4, 2, '2023-09-01'),
(10, 4, '2023-10-01'),
(9, 3, '2023-10-01'),
(4, 5, '2023-10-01'),
(2, 1, '2023-10-05'),
(6, 1, '2023-10-06'),
(8, 1, '2023-10-07'),
(9, 1, '2023-10-08'),
(10, 1, '2023-10-09');
