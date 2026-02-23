# 📊 SQL Data Retrieval Lab — Read-Only Queries (Oracle)

## 📘 Overview
This repository contains SQL queries designed to demonstrate **data retrieval and analysis techniques** using an existing relational database.  
All queries are strictly **read-only**, ensuring that neither the database structure nor stored records are modified.

The lab focuses on how SQL is used in real systems for reporting, analytics, and backend data access.

---

## 🎯 Objectives

- Understand how to retrieve data using `SELECT`
- Practice filtering records using conditions
- Learn sorting and result organization
- Apply column aliasing for readability
- Generate derived/computed outputs
- Work with date values and string extraction

These skills are fundamental for database developers, analysts, and backend engineers.

---

## 🗂️ Database Schema

The queries operate on a college database containing the following tables:

| Table | Description |
|------|-------------|
| **Department** | Stores department information |
| **Faculty** | Stores faculty details and department mapping |
| **Student** | Stores student demographic and academic data |
| **Course** | Stores course details and assigned faculty |
| **Enrollment** | Stores course registrations and grades |

---

## 🧠 Concepts Implemented

### 🔹 Data Retrieval
Using SQL `SELECT` statements to display stored data.

### 🔹 Column Aliasing
Improving output readability using `AS` without altering schema.

### 🔹 Conditional Queries
Filtering rows using `WHERE` clauses.

### 🔹 Sorting Results
Organizing data using `ORDER BY`.

### 🔹 Result Limiting
Displaying only a subset of rows using Oracle row limiting.

### 🔹 Derived / Computed Output
Generating calculated values such as:

- Student age from DOB
- Updated credits
- Year extraction from dates
- Email domain extraction

---

## ▶️ How to Execute

1. Open **Oracle SQL\*Plus** or **SQL Developer**
2. Connect to your database
3. Run the SQL script:

```sql
@lab_queries.sql
