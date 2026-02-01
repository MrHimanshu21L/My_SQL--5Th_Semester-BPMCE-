/* =========================================
   ORACLE DBMS LAB – DDL + DML (WITH OUTPUT)
   ========================================= */

-- Q1. Create Student table
CREATE TABLE Student(
    RollNo NUMBER(3),
    Name VARCHAR2(13),
    Dept VARCHAR2(10),
    Age NUMBER(3),
    Phone VARCHAR2(10)
);
-- Output: Table created.


-- Q2. Create Course table
CREATE TABLE Course(
    CourseID INT,
    CourseName VARCHAR2(50),
    Credits INT
);
-- Output: Table created.


-- Q3. Add City column
ALTER TABLE Student ADD City VARCHAR2(8);
-- Output: Table altered.


-- Q4. Add Semester column
ALTER TABLE Student ADD Semester VARCHAR2(3);
-- Output: Table altered.


-- Q5. Rename Phone to MobileNo
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;
-- Output: Table altered.


-- Q6. Describe Student table
DESC Student;
-- Output:
-- ROLLNO     NUMBER(3)
-- NAME       VARCHAR2(13)
-- DEPT       VARCHAR2(10)
-- AGE        NUMBER(3)
-- MOBILENO   VARCHAR2(10)
-- CITY       VARCHAR2(8)
-- SEMESTER   VARCHAR2(3)


-- Q7. Drop Course table
DROP TABLE Course;
-- Output: Table dropped.


-- Q8. Insert records
INSERT INTO Student VALUES (101,'HIMANSHU','CSE',21,'7323877277','Bettiah','4th');
INSERT INTO Student VALUES (102,'SATISH','CIVIL',22,'9032213277','Bettiah','3th');
INSERT INTO Student VALUES (103,'ABHSIHEK','EEE',12,'8324413277','BAGAH','6th');
INSERT INTO Student VALUES (104,'RAHUL','ME',21,'9837283277','MAHNA','5th');
INSERT INTO Student VALUES (105,'RAUSHAN','ACE',26,'7637283277','MADHPURA','7th');
-- Output: 1 row created (each).


-- Q9. Display all records
SELECT * FROM Student;
-- Output:
-- ROLLNO  NAME        DEPT    AGE  MOBILENO    CITY       SEMESTER
-- ------  ----------  ------  ---  ----------  ---------  --------
-- 101     HIMANSHU    CSE     21   7323877277   Bettiah    4th
-- 102     SATISH      CIVIL   22   9032213277  Bettiah    3th
-- 103     ABHSIHEK    EEE     12   8324413277  BAGAH      6th
-- 104     RAHUL       ME      21   9837283277  MAHNA      5th
-- 105     RAUSHAN     ACE     26   7637283277  MADHPURA  7th


-- Q10. Display RollNo and Name
SELECT RollNo, Name FROM Student;
-- Output:
-- ROLLNO  NAME
-- ------  ----------
-- 101     HIMANSHU
-- 102     SATISH
-- 103     ABHSIHEK
-- 104     RAHUL
-- 105     RAUSHAN


-- Q11. Students from CSE department
SELECT * FROM Student WHERE Dept = 'CSE';
-- Output:
-- ROLLNO  NAME      DEPT  AGE  MOBILENO   CITY      SEMESTER
-- ------  --------  ----  ---  ---------  --------  --------
-- 101     HIMANSHU  CSE   21   732387277  Bettiah  4th


-- Q12. Students with age > 20
SELECT * FROM Student WHERE Age > 20;
-- Output:
-- ROLLNO  NAME      DEPT    AGE  MOBILENO    CITY       SEMESTER
-- ------  --------  ------  ---  ----------  ---------  --------
-- 101     HIMANSHU  CSE     21   7323877277   Bettiah    4th
-- 102     SATISH    CIVIL   22   9032213277  Bettiah    3th
-- 104     RAHUL     ME      21   9837283277  MAHNA      5th
-- 105     RAUSHAN   ACE     26   7637283277  MADHPURA  7th


-- Q13. Update department of RollNo 101
UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;
-- Output: 1 row updated.


-- Q14. Display updated table
SELECT * FROM Student;
-- Output:
-- ROLLNO  NAME        DEPT    AGE  MOBILENO    CITY       SEMESTER
-- ------  ----------  ------  ---  ----------  ---------  --------
-- 101     HIMANSHU    ECE     21   7323877277   Bettiah    4th
-- 102     SATISH      CIVIL   22   9032213277  Bettiah    3th
-- 103     ABHSIHEK    EEE     12   8324413277  BAGAH      6th
-- 104     RAHUL       ME      21   9837283277  MAHNA      5th
-- 105     RAUSHAN     ACE     26   7637283277  MADHPURA  7th


-- Q15. Update city of Rahul
UPDATE Student SET City = 'PATNA' WHERE Name = 'RAHUL';
-- Output: 1 row updated.


-- Q16. Increase age of all students
UPDATE Student SET Age = Age + 1;
-- Output: 5 rows updated.


-- Q17. Delete RollNo 105
DELETE FROM Student WHERE RollNo = 105;
-- Output: 1 row deleted.


-- Q18. Commit changes
COMMIT;
-- Output: Commit complete.


-- Q19. Final table display
SELECT * FROM Student;
-- Output:
-- ROLLNO  NAME        DEPT    AGE  MOBILENO    CITY       SEMESTER
-- ------  ----------  ------  ---  ----------  ---------  --------
-- 101     HIMANSHU    ECE     22   7323877277   Bettiah    4th
-- 102     SATISH      CIVIL   23   9032213277  Bettiah    3th
-- 103     ABHSIHEK    EEE     13   8324413277  BAGAH      6th
-- 104     RAHUL       ME      22   9837283277  PATNA     5th
