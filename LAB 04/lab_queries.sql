/* 
   EXPERIMENT: DATA RETRIEVAL USING SQL (READ ONLY QUERIES)
   PURPOSE: Practice SELECT queries without modifying data
    */


/* 
   PART A — BASIC DATA DISPLAY WITH ALIASES
    */

/* 1. Display all columns from Student with aliases */
SELECT 
    Student_ID AS Roll_No,
    Name AS Student_Name,
    DOB AS Date_of_Birth,
    Gender AS Gender,
    Contact_No AS Contact_Number,
    Dept_ID AS Department
FROM Student;

/* 2. Display only StudentID, Name, Dept_ID with aliases */
SELECT 
    Student_ID AS Roll_No,
    Name AS Student_Name,
    Dept_ID AS Dept_ID
FROM Student;

/* 3. Display Faculty details with readable names */
SELECT 
    Faculty_ID AS Faculty_ID,
    Name AS Faculty_Name,
    Designation AS Position,
    Email AS Email_Address
FROM Faculty;

/* 4. Display Course table with renamed headers */
SELECT 
    Course_ID AS Course_Code,
    Course_Name AS Course_Title,
    Credits AS Credit_Value,
    Dept_ID AS Department,
    Faculty_ID AS Instructor
FROM Course;

/* 5. Display Enrollment table with aliases */
SELECT 
    Student_ID AS Student,
    Course_ID AS Course,
    Semester AS Sem,
    Grade AS Final_Grade
FROM Enrollment;



/* 
   PART B — CONDITIONAL DATA DISPLAY (WHERE CLAUSE)
   */

/* 6. Students from department D001 */
SELECT * FROM Student
WHERE Dept_ID = 'D001';

/* 7. Female students */
SELECT * FROM Student
WHERE Gender = 'Female';

/* 8. Faculty with designation Asst Pro */
SELECT * FROM Faculty
WHERE Designation = 'Asst Pro';

/* 9. Faculty from department D002 */
SELECT * FROM Faculty
WHERE Dept_ID = 'D002';

/* 10. Courses with credits >= 4 */
SELECT * FROM Course
WHERE Credits >= 4;

/* 11. Students born after 1 Jan 2003 */
SELECT * FROM Student
WHERE DOB > DATE '2003-01-01';

/* 12. Enrollment records for semester S3 */
SELECT * FROM Enrollment
WHERE Semester = 'S3';



/* 
   PART C — SORTING AND LIMITING RESULTS
    */

/* 13. Students sorted by name ascending */
SELECT * FROM Student
ORDER BY Name ASC;

/* 14. Students sorted by DOB descending */
SELECT * FROM Student
ORDER BY DOB DESC;

/* 15. Faculty sorted by designation */
SELECT * FROM Faculty
ORDER BY Designation ASC;

/* 16. Courses sorted by credits descending */
SELECT * FROM Course
ORDER BY Credits DESC;

/* 17. First 3 students */
SELECT * FROM Student
FETCH FIRST 3 ROWS ONLY;

/* 18. First 5 courses */
SELECT * FROM Course
FETCH FIRST 5 ROWS ONLY;



/* 
   PART D — DERIVED / COMPUTED OUTPUT
    */

/* 19. Student name with calculated age */
SELECT
    Name,
    FLOOR(MONTHS_BETWEEN(SYSDATE, DOB)/12) AS Years
FROM Student;

/* 20. Course name with updated credits */
SELECT 
    Course_Name,
    Credits + 1 AS Updated_Credits
FROM Course;

/* 21. Enrollment with grade renamed */
SELECT 
    Student_ID,
    Course_ID,
    Semester,
    Grade AS Final_Grade
FROM Enrollment;

/* 22. Student name with birth year */
SELECT 
    Name,
    EXTRACT(YEAR FROM DOB) AS Birth_Year
FROM Student;

/* 23. Faculty name with email domain */
SELECT 
    Name,
    SUBSTR(Email, INSTR(Email,'@')+1) AS Email_Domain
FROM Faculty;
