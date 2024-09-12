--Select all students.
SELECT *
FROM Students;

--Select all courses.
SELECT *
FROM Courses;

--Select all enrollments with student names and course names.
SELECT
	e.enrollment_id,
	s.first_name +' '+ s.last_name AS student_name,
	c.course_name
	
FROM Enrollments AS e
JOIN Students AS s ON e.student_id = s.student_id
JOIN Courses AS c ON e.course_id = c.course_id;