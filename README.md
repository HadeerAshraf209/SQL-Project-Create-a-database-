## **Student Course Management Database Project**

**Objective:**
* Create a database to effectively manage student course information.
* Practice SQL queries to perform various operations on the data.

**Tools:**
* **Database Management System (DBMS):** SQL Server
* **IDE:** SQL Server Management Studio (SSMS)

**Database Structure:**

* **Tables:**
    * **students**
        * `student_id` (Primary Key, INT, AUTO_INCREMENT)
        * `first_name` (VARCHAR)
        * `last_name` (VARCHAR)
        * `email` (VARCHAR)
        * `date_of_birth` (DATE)
    * **courses**
        * `course_id` (Primary Key, INT, AUTO_INCREMENT)
        * `course_name` (VARCHAR)
        * `course_description` (TEXT)
    * **instructors**
        * `instructor_id` (Primary Key, INT, AUTO_INCREMENT)
        * `first_name` (VARCHAR)
        * `last_name` (VARCHAR)
        * `email` (VARCHAR)
    * **enrollments**
        * `enrollment_id` (Primary Key, INT, AUTO_INCREMENT)
        * `student_id` (Foreign Key, INT)
        * `course_id` (Foreign Key, INT)
        * `enrollment_date` (DATE)

**Project Tasks:**

1. **Data Population:**
   * Insert sample data for students, courses, instructors, and enrollments.

2. **Basic Queries:**
   * Retrieve all students, courses, and enrollments.
   * Find enrollments with student and course names.

3. **Advanced Queries:**
   * Filter students based on course enrollment.
   * Find courses with a specific number of students.
   * Update student information and delete courses.
   * Calculate student averages and course enrollments.
   * Group courses by enrollments.

4. **Join Queries:**
   * Relate students to their enrolled courses.
   * List instructors and their courses.
   * Identify students without enrollments.

5. **Subqueries and Set Operations:**
   * Find students in multiple courses.
   * Retrieve courses taught by a specific instructor.
   * Select top students based on enrollments.
   * Combine query results using UNION.

6. **Functions and Stored Procedures:**
   * Create procedures for adding students and calculating ages.

7. **Aggregate Functions and Grouping:**
   * Calculate total students and enrollment statistics.

8. **Additional Tasks:**
   * Use aliases and EXISTS.
   * Add comments for clarity.


