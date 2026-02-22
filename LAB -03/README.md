# 🎓 College Database Management System (Oracle SQL)

## 📌 Project Overview

This project implements a **College Database Management System** using **Oracle SQL**.
It models core academic entities such as departments, faculty, students, courses, and enrollments while maintaining referential integrity through primary and foreign keys.

The goal of this project is to demonstrate practical understanding of:

* Relational database design
* SQL DDL & DML operations
* Table relationships and constraints
* Realistic academic data modeling

---

## 🏗️ Database Schema

The system consists of the following tables:

### 1️⃣ Department

Stores information about college departments.

Attributes:

* `Dept_ID` (Primary Key)
* `Dept_Name`
* `Office_Location`

---

### 2️⃣ Faculty

Stores faculty details and their department.

Attributes:

* `Faculty_ID` (Primary Key)
* `Name`
* `Designation`
* `Email`
* `Dept_ID` (Foreign Key → Department)

---

### 3️⃣ Student

Stores student personal and academic department data.

Attributes:

* `Student_ID` (Primary Key)
* `Name`
* `DOB`
* `Gender`
* `Contact_No`
* `Dept_ID` (Foreign Key → Department)

---

### 4️⃣ Course

Stores course offerings by department and assigned faculty.

Attributes:

* `Course_ID` (Primary Key)
* `Course_Name`
* `Credits`
* `Dept_ID` (Foreign Key → Department)
* `Faculty_ID` (Foreign Key → Faculty)

---

### 5️⃣ Enrollment

Stores which students are enrolled in which courses.

Attributes:

* `Student_ID` (Foreign Key → Student)
* `Course_ID` (Foreign Key → Course)
* `Semester`
* `Grade`

Composite Primary Key:

```
(Student_ID, Course_ID, Semester)
```

---

## 🔗 Relationships

* One Department → Many Faculty
* One Department → Many Students
* One Department → Many Courses
* One Faculty → Many Courses
* Many Students ↔ Many Courses (via Enrollment)

---

## ⚙️ Technologies Used

* Oracle Database 21c XE
* SQL*Plus
* SQL (DDL, DML, Constraints)

---

## 🚀 How to Run the Project

1. Open **SQL*Plus**
2. Connect to Oracle database
3. Run the script:

```
@path_to_file/lab3.sql
```

Example:

```
@"D:\DBMS\lab3.sql"
```

4. Verify data:

```
SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Student;
SELECT * FROM Course;
SELECT * FROM Enrollment;
```

---

## 🎯 Learning Outcomes

Through this project, the following database concepts are demonstrated:

* Table creation using DDL
* Data insertion using DML
* Primary & Foreign Key constraints
* Composite keys
* Referential integrity
* Structured academic data modeling

---

## 👨‍💻 Author

**Himanshu Kumar Gupta**
CSE (AI & ML) Student
Registration Number-> 23157128056
DBMS Practical Project

---

## 📄 License

This project is for educational purposes only.
