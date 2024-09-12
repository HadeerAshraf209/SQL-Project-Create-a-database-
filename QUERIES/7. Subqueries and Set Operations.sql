USE StudentCourseManagement;

--Select students enrolled in more than one course.
SELECT 
    s.student_id,
    s.first_name,
    s.last_name,
    COUNT(e.course_id) AS course_count
FROM Students AS s
JOIN Enrollments AS e ON s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name
HAVING COUNT(e.course_id) > 1
ORDER BY course_count DESC;


--Find courses taught by a specific instructor.
SELECT
	i.first_name + ' ' + i.last_name AS instructor_name,
	c.course_id,
	c.course_name,
	c.course_description
FROM Courses AS c
JOIN Instructors AS i ON c.instructor_id = i.instructor_id
WHERE c.instructor_id = 2;



--Select the top 3 students with the most enrollments.
SELECT 
    TOP 3 s.student_id,
    s.first_name,
    s.last_name,
    COUNT(e.course_id) AS enrollment_count
FROM Students AS s
JOIN Enrollments AS e ON s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name
ORDER BY enrollment_count DESC;



--Use UNION to combine results of two different SELECT queries.
SELECT first_name
FROM Students
WHERE date_of_birth < '2001-12-31'
UNION
SELECT course_name
FROM Courses
WHERE course_id = 2;


