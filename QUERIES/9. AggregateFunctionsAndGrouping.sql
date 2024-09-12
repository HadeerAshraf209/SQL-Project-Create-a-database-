
USE StudentCourseManagement;

--Calculate the total number of students.
SELECT COUNT(DISTINCT student_id) AS total_students
FROM students;

--Calculate the average, minimum, and maximum number of enrollments per course.
SELECT 
    AVG(number_of_students) AS average_enrollments,
    MIN(number_of_students) AS minimum_enrollments,
    MAX(number_of_students) AS maximum_enrollments
FROM
    (SELECT 
        c.course_id,
        c.course_name,
        COUNT(e.student_id) AS number_of_students
    FROM Courses AS c
	JOIN Enrollments AS e ON c.course_id = e.course_id 
    GROUP BY c.course_id, c.course_name) 
    AS enrollments_per_course;


