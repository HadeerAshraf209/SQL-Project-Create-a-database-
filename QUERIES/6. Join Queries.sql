--Select all students with their enrolled courses (use JOIN).
SELECT 
	s.first_name,
	s.last_name,
	c.course_name
FROM Students AS s
JOIN Enrollments AS e ON s.student_id = e.student_id
JOIN Courses AS c ON e.course_id = c.course_id

--List all instructors and their courses
SELECT
	i.first_name,
	i.last_name,
	c.course_name
FROM Instructors AS i
JOIN Courses AS c ON i.instructor_id = c.instructor_id

--Find students who are not enrolled in any course
SELECT
	s.student_id,
	s.first_name,
	s.last_name
FROM Students AS s
LEFT JOIN Enrollments AS e ON s.student_id = e.student_id
WHERE e.enrollment_id IS NULL;

