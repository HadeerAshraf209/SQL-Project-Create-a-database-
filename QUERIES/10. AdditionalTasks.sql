USE StudentCourseManagement;

--Create aliases for complex column names.
SELECT 
    course_id AS CourseID,
    course_name AS CourseName
FROM Courses;


--Use CASE to categorize students based on their age.
SELECT 
    first_name,
    last_name,
    CASE
        WHEN DATEDIFF(YEAR, date_of_birth, GETDATE()) < 18 THEN 'Younger than 18'
        WHEN DATEDIFF(YEAR, date_of_birth, GETDATE()) BETWEEN 18 AND 24 THEN '18 - 24 '
        WHEN DATEDIFF(YEAR, date_of_birth, GETDATE()) BETWEEN 25 AND 34 THEN 'Bigger than 25'
    END AS AgeCategory
FROM Students;



--Use EXISTS to find courses with at least one enrolled student.
SELECT 
    course_id,
    course_name
FROM Courses AS c
WHERE EXISTS (
    SELECT 1
    FROM Enrollments AS e
    WHERE e.course_id = c.course_id
);

