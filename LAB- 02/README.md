# 🎓 College Database Design – ER Model & SQL Implementation

This project demonstrates the design and implementation of a **College Database System** using the **Entity–Relationship (ER) model** and SQL schema creation.

The objective of this assignment is to understand how real-world entities in a college environment can be modeled conceptually and then converted into relational tables.

---

## 📌 Project Objective

* Understand **Entity–Relationship modeling**
* Convert ER diagram into relational tables
* Implement tables using SQL
* Apply primary and foreign key constraints

---

## 🧩 Entities in the Database

The following main entities are modeled:

* **Department** – Stores academic department details
* **Student** – Stores student information
* **Faculty** – Stores faculty member information
* **Course** – Stores course details offered by departments
* **Enrollment** – Represents student course registrations

---

## 🔗 Relationships Modeled

* One department can have many students
* One department can have many faculty members
* One department can offer many courses
* One faculty member can teach multiple courses
* Students can enroll in multiple courses (many-to-many)
* Enrollment table resolves this many-to-many relationship

---

## 📐 ER Diagram

The ER diagram was created using **draw.io (diagrams.net)**.

It shows:

* Entities and attributes
* Primary keys
* Relationships
* Cardinality (1-M, M-N)

📂 File included in repository:

```
ER_Diagram.png
```

---

## 🧱 Relational Tables Created

The ER model is converted into the following tables:

1. Department
2. Student
3. Faculty
4. Course
5. Enrollment

Each table includes appropriate:

* Primary Keys
* Foreign Keys
* Constraints

---

## 💾 SQL Implementation

All tables are created using SQL `CREATE TABLE` statements.

📂 SQL file included:

```
college_database.sql
```

This file contains:

* Table creation queries
* Key constraints
* Data types

---

## 🚀 How to Use

1. Clone this repository
2. Open your SQL environment (Oracle / MySQL / PostgreSQL)
3. Run the SQL file
4. Tables will be created automatically

---

## 📚 Learning Outcome

Through this assignment, we learned:

* How ER diagrams represent real-world systems
* How to convert conceptual design into relational schema
* How primary and foreign keys maintain relationships
* How SQL implements database structure

---

## 👨‍💻 Author

**Himanshu Kumar Gupta**
CSE (AI & ML) Student
reg. No->> 23157128056
