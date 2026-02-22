
CREATE TABLE Department (
    Dept_ID VARCHAR(10) PRIMARY KEY,
    Dept_Name VARCHAR(15) NOT NULL,
    Office_Location VARCHAR(16)
);

CREATE TABLE Faculty (
    Faculty_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(28) NOT NULL,
    Designation VARCHAR(15),
    Email VARCHAR(35),
    Dept_ID VARCHAR(10),
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

CREATE TABLE Student (
    Student_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    DOB DATE,
    Gender VARCHAR(6),
    Contact_No NUMBER(10),
    Dept_ID VARCHAR(10),
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

CREATE TABLE Course (
    Course_ID VARCHAR(10) PRIMARY KEY,
    Course_Name VARCHAR(13) NOT NULL,
    Credits NUMBER(3),
    Dept_ID VARCHAR(10),
    Faculty_ID VARCHAR(10),
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID),
    FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
);

CREATE TABLE Enrollment (
    Student_ID VARCHAR(10),
    Course_ID VARCHAR(10),
    Semester VARCHAR(5),
    Grade VARCHAR(5),
    PRIMARY KEY (Student_ID, Course_ID, Semester),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);
