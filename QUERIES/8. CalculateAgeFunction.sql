--Create a function to calculate the age of a student based on their date of birth.

CREATE FUNCTION CalculateAge
(
    @date_of_birth DATE
)
RETURNS INT
AS
BEGIN
    DECLARE @age INT;
    
    SET @age = DATEDIFF(YEAR, @date_of_birth, GETDATE()) - 
                CASE 
                    WHEN MONTH(@date_of_birth) > MONTH(GETDATE()) 
                         OR (MONTH(@date_of_birth) = MONTH(GETDATE()) 
                         AND DAY(@date_of_birth) > DAY(GETDATE())) 
                    THEN 1 
                    ELSE 0 
                END;
    
    RETURN @age;
END;

/*SELECT CalculateAge(date_of_birth) AS Age
FROM Students
WHERE student_id = 1;  -- Replace with the desired student_id
*/
