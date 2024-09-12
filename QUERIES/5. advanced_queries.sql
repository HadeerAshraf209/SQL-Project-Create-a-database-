--Select students who enrolled in a specific course
SELECT
	s.student_id,
	s.first_name,
	s.last_name
FROM Students AS s
JOIN Enrollments AS e ON s.student_id = e.student_id
WHERE e.course_id = 3;

--Select courses with more than 5 students
SELECT
	c.course_id,
	c.course_name,
	COUNT(e.student_id) AS number_of_students
FROM Courses AS c
JOIN Enrollments AS e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
HAVING COUNT(e.student_id) > 5;

--Update a student's email
UPDATE Students
SET email = 'updated.email@alexu.com'
WHERE student_id = 4;

--Delete a course that no students are enrolled in
DELETE FROM Courses
WHERE course_id NOT IN (
	SELECT DISTINCT course_id
	FROM Enrollments
);

--Calculate the average age of students
SELECT 
	AVG(
		DATEDIFF(
			YEAR, date_of_birth, GETDATE()
				)
		) AS students_average_age
FROM Students;

--Find the course with the maximum enrollments
SELECT
	TOP 1 c.course_id,
	c.course_name,
	COUNT(e.student_id) AS number_of_enrollments
FROM Courses AS c
JOIN Enrollments AS e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
ORDER BY number_of_enrollments DESC;

--List courses along with the number of students enrolled (use GROUP BY)
SELECT 
	c.course_id,
	c.course_name,
	COUNT(e.student_id) AS number_of_students
FROM Courses AS c
JOIN Enrollments AS e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;