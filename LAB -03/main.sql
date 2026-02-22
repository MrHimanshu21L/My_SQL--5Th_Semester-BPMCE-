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

DELETE FROM Enrollment;
DELETE FROM Course;
DELETE FROM Student;
DELETE FROM Faculty;
DELETE FROM Department;
COMMIT;


DESC Department;
DESC Faculty;
DESC Student;
DESC Course;
DESC Enrollment;

-- Departmenat fill

INSERT INTO Department VALUES ('D001','CSE','Block A');
INSERT INTO Department VALUES ('D002','CSE(AIML)','Block B');
INSERT INTO Department VALUES ('D003','EEE','Block C');
INSERT INTO Department VALUES ('D004','CE','Block D');
INSERT INTO Department VALUES ('D005','CSE(AIML)','Block E');
INSERT INTO Department VALUES ('D006','CEWCA','Block E');
INSERT INTO Department VALUES ('D009','3DAG','Block F');


-- Faculty wala

--CIVIL
INSERT INTO Faculty VALUES ('F401','Akhilesh Kumar','Asst Pro','akhileshkumar3804@gmail.com','D004');
INSERT INTO Faculty VALUES ('F402','Kunal Kumar','AsstPro HoD','kunal1989kumar@gmail.com','D004');
INSERT INTO Faculty VALUES ('F403','Nishikant Kumar','Asst Pro','nishikantbpmce32@gmail.com','D004');
INSERT INTO Faculty VALUES ('F404','Raushan Anand','Asst Pro','raushanbpmc@gmail.com','D004');
INSERT INTO Faculty VALUES ('F405','Vicky Anand','Asst Pro','Vickya.pg18.ce@Nitp.ac.in','D004');

--CEWCA

INSERT INTO Faculty VALUES ('F501','Akhilesh Kumar','AsstPro HoD','akhileshkumar3804@gmail.com','D005');
INSERT INTO Faculty VALUES ('F502','Kunal Kumar','Asst Pro','kunal1989kumar@gmail.com','D005');
INSERT INTO Faculty VALUES ('F503','Nishikant Kumar','Asst Pro','nishikantbpmce32@gmail.com','D005');
INSERT INTO Faculty VALUES ('F504','Vicky Anand','Asst Pro','Vickya.pg18@Nitp.ac.in','D005');
INSERT INTO Faculty VALUES ('F505','Pankaj Kumar','Asst Pro','pankajkumarpk8888@gmail.com','D005');

--ME

INSERT INTO Faculty VALUES ('F601','Arbind Kumar Amar','PrincipalIC','ak_amar73@yahoo.com','D006');
INSERT INTO Faculty VALUES ('F602','Ajay Giri','AsstPro HoD','ajay_giri05@rediffmail.com','D006');
INSERT INTO Faculty VALUES ('F603','Uttam Kumar','Asst Pro','uttamiitp1@gmail.com','D006');
INSERT INTO Faculty VALUES ('F604','Firoz Akhtar','Asst Pro','firozakhtar1581@gmail.com','D006');
INSERT INTO Faculty VALUES ('F605','Rahul Ranjan Bharti','Asst Pro','15rahulbharti@gmail.com','D006');

--EEE

INSERT INTO Faculty VALUES ('F301','Hare Krishna Mishra','Asst Pro','hare.dbit@gmail.com','D003');
INSERT INTO Faculty VALUES ('F302','Ashish Kumar Suman','Asst Pro','sumanashish.rkt@gmail.com','D003');
INSERT INTO Faculty VALUES ('F303','Mitesh Kumar','Asst Pro','mitesh.sva@gmail.com','D003');
INSERT INTO Faculty VALUES ('F304','Nitish Kumar','Asst Pro','nitianj@gmail.com','D003');
INSERT INTO Faculty VALUES ('F305','Mithlesh Kumar','AsstPro HoD','bpmceeee110@gmail.com','D003');

--CSE
INSERT INTO Faculty VALUES ('F101','Murlidhar Prasad Singh','AsstPro HoD','singhmurlidhar@gmail.com','D001');
INSERT INTO Faculty VALUES ('F102','Md Ehtashamoul Haque','Asst Pro','ehtasham47@gmail.com','D001');
INSERT INTO Faculty VALUES ('F103','Amit Kumar','Asst Pro','amitbcebhagalpur@gmail.com','D001');
INSERT INTO Faculty VALUES ('F104','Md Izhar','Asst Pro','mdizhar1996@gmail.com','D001');
INSERT INTO Faculty VALUES ('F105','Manisha Kumari Singh','Asst Pro','manisha.ks241@gmail.com','D001');

--CSE(AIML)
INSERT INTO Faculty VALUES ('F201','Md Ehteshamoul Hoque','AsstPro HoD','ehtasham47@gmail.com','D002');
INSERT INTO Faculty VALUES ('F202','Sujeet Kumar','Asst Pro','ksujeet.cs@gmail.com','D002');
INSERT INTO Faculty VALUES ('F203','Praveen Kumar','Asst Pro','praveenkumaryadav782@gmail.com','D002');
INSERT INTO Faculty VALUES ('F204','Manisha Kumari Singh','Asst Pro','manisha.ks241@gmail.com','D002');
INSERT INTO Faculty VALUES ('F205','Md Izhar','Asst Pro','mdizhar1996@gmail.com','D002');


-- 3DAG

INSERT INTO Faculty VALUES ('F901','Murlidhar Prasad Singh','AsstPro HoD','singhmurlidhar@gmail.com','D009');
INSERT INTO Faculty VALUES ('F902','Md Ehteshamoul Hoque','Asst Pro','ehtasham47@gmail.com','D009');
INSERT INTO Faculty VALUES ('F903','Sujeet Kumar','Asst Pro','ksujeet.cs@gmail.com','D009');
INSERT INTO Faculty VALUES ('F904','Praveen Kumar','Asst Pro','praveenkumaryadav782@gmail.com','D009');
INSERT INTO Faculty VALUES ('F905','Manisha Kumari Singh','Asst Pro','manisha.ks241@gmail.com','D009');

-- Now Students ka data

--CSE (D001) — 10 Students
INSERT INTO Student VALUES ('S101','Rahul Kumar',TO_DATE('12-01-2004','DD-MM-YYYY'),'Male',9123456781,'D001');
INSERT INTO Student VALUES ('S102','Aman Singh',TO_DATE('22-03-2004','DD-MM-YYYY'),'Male',9234567812,'D001');
INSERT INTO Student VALUES ('S103','Priya Sharma',TO_DATE('10-02-2004','DD-MM-YYYY'),'Female',9345678123,'D001');
INSERT INTO Student VALUES ('S104','Neha Kumari',TO_DATE('17-05-2004','DD-MM-YYYY'),'Female',9456781234,'D001');
INSERT INTO Student VALUES ('S105','Vikas Raj',TO_DATE('01-07-2004','DD-MM-YYYY'),'Male',9567812345,'D001');
INSERT INTO Student VALUES ('S106','Pooja Singh',TO_DATE('11-04-2004','DD-MM-YYYY'),'Female',9678123456,'D001');
INSERT INTO Student VALUES ('S107','Rohit Yadav',TO_DATE('19-08-2004','DD-MM-YYYY'),'Male',9781234567,'D001');
INSERT INTO Student VALUES ('S108','Soni Kumari',TO_DATE('09-09-2004','DD-MM-YYYY'),'Female',9892345678,'D001');
INSERT INTO Student VALUES ('S109','Deepak Kumar',TO_DATE('25-06-2004','DD-MM-YYYY'),'Male',9913456789,'D001');
INSERT INTO Student VALUES ('S110','Anjali Verma',TO_DATE('30-11-2004','DD-MM-YYYY'),'Female',9024567891,'D001');

--CSE-AIML (D002)
INSERT INTO Student VALUES ('S201','Aditya Kumar',TO_DATE('15-02-2004','DD-MM-YYYY'),'Male',9135678912,'D002');
INSERT INTO Student VALUES ('S202','Riya Sharma',TO_DATE('19-03-2004','DD-MM-YYYY'),'Female',9246789123,'D002');
INSERT INTO Student VALUES ('S203','Kunal Singh',TO_DATE('05-05-2004','DD-MM-YYYY'),'Male',9357891234,'D002');
INSERT INTO Student VALUES ('S204','Sneha Kumari',TO_DATE('18-06-2004','DD-MM-YYYY'),'Female',9468912345,'D002');
INSERT INTO Student VALUES ('S205','Harsh Raj',TO_DATE('27-07-2004','DD-MM-YYYY'),'Male',9579123456,'D002');
INSERT INTO Student VALUES ('S206','Komal Singh',TO_DATE('11-08-2004','DD-MM-YYYY'),'Female',9681234567,'D002');
INSERT INTO Student VALUES ('S207','Nitesh Kumar',TO_DATE('03-01-2004','DD-MM-YYYY'),'Male',9792345678,'D002');
INSERT INTO Student VALUES ('S208','Shivani Singh',TO_DATE('14-09-2004','DD-MM-YYYY'),'Female',9813456789,'D002');
INSERT INTO Student VALUES ('S209','Abhishek Raj',TO_DATE('21-10-2004','DD-MM-YYYY'),'Male',9924567891,'D002');
INSERT INTO Student VALUES ('S210','Muskan Kumari',TO_DATE('02-12-2004','DD-MM-YYYY'),'Female',9035678912,'D002');

--CIVIL (D004)
INSERT INTO Student VALUES ('S401','Manish Kumar',TO_DATE('08-02-2004','DD-MM-YYYY'),'Male',9146789123,'D004');
INSERT INTO Student VALUES ('S402','Ravi Kumar',TO_DATE('18-03-2004','DD-MM-YYYY'),'Male',9257891234,'D004');
INSERT INTO Student VALUES ('S403','Priti Kumari',TO_DATE('21-04-2004','DD-MM-YYYY'),'Female',9368912345,'D004');
INSERT INTO Student VALUES ('S404','Sunil Yadav',TO_DATE('25-05-2004','DD-MM-YYYY'),'Male',9479123456,'D004');
INSERT INTO Student VALUES ('S405','Anita Kumari',TO_DATE('29-06-2004','DD-MM-YYYY'),'Female',9581234567,'D004');
INSERT INTO Student VALUES ('S406','Vivek Singh',TO_DATE('12-07-2004','DD-MM-YYYY'),'Male',9692345678,'D004');
INSERT INTO Student VALUES ('S407','Rakesh Kumar',TO_DATE('15-08-2004','DD-MM-YYYY'),'Male',9713456789,'D004');
INSERT INTO Student VALUES ('S408','Kavita Sharma',TO_DATE('22-09-2004','DD-MM-YYYY'),'Female',9824567891,'D004');
INSERT INTO Student VALUES ('S409','Mukesh Kumar',TO_DATE('11-10-2004','DD-MM-YYYY'),'Male',9935678912,'D004');
INSERT INTO Student VALUES ('S410','Suman Kumari',TO_DATE('09-12-2004','DD-MM-YYYY'),'Female',9046789123,'D004');

-- CEWCA (D005)
INSERT INTO Student VALUES ('S501','Saurabh Kumar',TO_DATE('17-01-2004','DD-MM-YYYY'),'Male',9157891234,'D005');
INSERT INTO Student VALUES ('S502','Ritu Kumari',TO_DATE('23-02-2004','DD-MM-YYYY'),'Female',9268912345,'D005');
INSERT INTO Student VALUES ('S503','Gaurav Singh',TO_DATE('12-03-2004','DD-MM-YYYY'),'Male',9379123456,'D005');
INSERT INTO Student VALUES ('S504','Pallavi Sharma',TO_DATE('06-04-2004','DD-MM-YYYY'),'Female',9481234567,'D005');
INSERT INTO Student VALUES ('S505','Nikhil Raj',TO_DATE('29-05-2004','DD-MM-YYYY'),'Male',9592345678,'D005');
INSERT INTO Student VALUES ('S506','Jyoti Kumari',TO_DATE('14-06-2004','DD-MM-YYYY'),'Female',9613456789,'D005');
INSERT INTO Student VALUES ('S507','Ankur Kumar',TO_DATE('20-07-2004','DD-MM-YYYY'),'Male',9724567891,'D005');
INSERT INTO Student VALUES ('S508','Rashmi Singh',TO_DATE('05-08-2004','DD-MM-YYYY'),'Female',9835678912,'D005');
INSERT INTO Student VALUES ('S509','Prakash Kumar',TO_DATE('09-09-2004','DD-MM-YYYY'),'Male',9946789123,'D005');
INSERT INTO Student VALUES ('S510','Shalini Kumari',TO_DATE('30-10-2004','DD-MM-YYYY'),'Female',9057891234,'D005');

--ME (D006)

INSERT INTO Student VALUES ('S601','Ankit Kumar',TO_DATE('10-02-2004','DD-MM-YYYY'),'Male',9168912345,'D006');
INSERT INTO Student VALUES ('S602','Rohit Singh',TO_DATE('16-03-2004','DD-MM-YYYY'),'Male',9279123456,'D006');
INSERT INTO Student VALUES ('S603','Komal Kumari',TO_DATE('18-04-2004','DD-MM-YYYY'),'Female',9381234567,'D006');
INSERT INTO Student VALUES ('S604','Shubham Raj',TO_DATE('21-05-2004','DD-MM-YYYY'),'Male',9492345678,'D006');
INSERT INTO Student VALUES ('S605','Meena Kumari',TO_DATE('07-06-2004','DD-MM-YYYY'),'Female',9513456789,'D006');
INSERT INTO Student VALUES ('S606','Ritesh Kumar',TO_DATE('25-07-2004','DD-MM-YYYY'),'Male',9624567891,'D006');
INSERT INTO Student VALUES ('S607','Vandana Singh',TO_DATE('28-08-2004','DD-MM-YYYY'),'Female',9735678912,'D006');
INSERT INTO Student VALUES ('S608','Arun Kumar',TO_DATE('11-09-2004','DD-MM-YYYY'),'Male',9846789123,'D006');
INSERT INTO Student VALUES ('S609','Rekha Kumari',TO_DATE('13-10-2004','DD-MM-YYYY'),'Female',9957891234,'D006');
INSERT INTO Student VALUES ('S610','Dilip Kumar',TO_DATE('19-12-2004','DD-MM-YYYY'),'Male',9068912345,'D006');


--EEE(D003)
INSERT INTO Student VALUES ('S301','Kishan Kumar',TO_DATE('08-01-2004','DD-MM-YYYY'),'Male',9179123456,'D003');
INSERT INTO Student VALUES ('S302','Ranjan Singh',TO_DATE('14-02-2004','DD-MM-YYYY'),'Male',9281234567,'D003');
INSERT INTO Student VALUES ('S303','Neetu Kumari',TO_DATE('18-03-2004','DD-MM-YYYY'),'Female',9392345678,'D003');
INSERT INTO Student VALUES ('S304','Sandeep Kumar',TO_DATE('27-04-2004','DD-MM-YYYY'),'Male',9413456789,'D003');
INSERT INTO Student VALUES ('S305','Sarla Kumari',TO_DATE('05-05-2004','DD-MM-YYYY'),'Female',9524567891,'D003');
INSERT INTO Student VALUES ('S306','Ravi Raj',TO_DATE('09-06-2004','DD-MM-YYYY'),'Male',9635678912,'D003');
INSERT INTO Student VALUES ('S307','Pinky Kumari',TO_DATE('12-07-2004','DD-MM-YYYY'),'Female',9746789123,'D003');
INSERT INTO Student VALUES ('S308','Manoj Kumar',TO_DATE('19-08-2004','DD-MM-YYYY'),'Male',9857891234,'D003');
INSERT INTO Student VALUES ('S309','Seema Singh',TO_DATE('25-09-2004','DD-MM-YYYY'),'Female',9968912345,'D003');
INSERT INTO Student VALUES ('S310','Ashok Kumar',TO_DATE('03-10-2004','DD-MM-YYYY'),'Male',9079123456,'D003');

--3DAG
INSERT INTO Student VALUES ('S901','Ravi Kumar',TO_DATE('13-01-2004','DD-MM-YYYY'),'Male',9181234567,'D009');
INSERT INTO Student VALUES ('S902','Neha Kumari',TO_DATE('19-02-2004','DD-MM-YYYY'),'Female',9292345678,'D009');
INSERT INTO Student VALUES ('S903','Arvind Raj',TO_DATE('21-03-2004','DD-MM-YYYY'),'Male',9313456789,'D009');
INSERT INTO Student VALUES ('S904','Pooja Singh',TO_DATE('24-04-2004','DD-MM-YYYY'),'Female',9424567891,'D009');
INSERT INTO Student VALUES ('S905','Vikash Kumar',TO_DATE('29-05-2004','DD-MM-YYYY'),'Male',9535678912,'D009');
INSERT INTO Student VALUES ('S906','Suman Kumari',TO_DATE('11-06-2004','DD-MM-YYYY'),'Female',9646789123,'D009');
INSERT INTO Student VALUES ('S907','Rajesh Kumar',TO_DATE('16-07-2004','DD-MM-YYYY'),'Male',9757891234,'D009');
INSERT INTO Student VALUES ('S908','Anjali Singh',TO_DATE('22-08-2004','DD-MM-YYYY'),'Female',9868912345,'D009');
INSERT INTO Student VALUES ('S909','Kundan Kumar',TO_DATE('27-09-2004','DD-MM-YYYY'),'Male',9979123456,'D009');
INSERT INTO Student VALUES ('S910','Ritu Kumari',TO_DATE('01-11-2004','DD-MM-YYYY'),'Female',9081234567,'D009');



-- CSE (D001)

INSERT INTO Course VALUES ('C101','DBMS',4,'D001','F101');
INSERT INTO Course VALUES ('C102','OS',4,'D001','F102');
INSERT INTO Course VALUES ('C103','CN',4,'D001','F103');
INSERT INTO Course VALUES ('C104','SE',3,'D001','F104');
INSERT INTO Course VALUES ('C105','DSA',4,'D001','F105');

-- CSE-AIML (D002)

INSERT INTO Course VALUES ('C201','ML',4,'D002','F201');
INSERT INTO Course VALUES ('C202','DL',4,'D002','F202');
INSERT INTO Course VALUES ('C203','DataMining',4,'D002','F203');
INSERT INTO Course VALUES ('C204','PythonAI',3,'D002','F204');
INSERT INTO Course VALUES ('C205','NLP',3,'D002','F205');

-- CIVIL(D004)

INSERT INTO Course VALUES ('C401','Survey',4,'D004','F401');
INSERT INTO Course VALUES ('C402','Soil',4,'D004','F402');
INSERT INTO Course VALUES ('C403','Structure',4,'D004','F403');
INSERT INTO Course VALUES ('C404','Concrete',3,'D004','F404');
INSERT INTO Course VALUES ('C405','Hydrology',3,'D004','F405');


--CEWCA(D005)

INSERT INTO Course VALUES ('C501','CAD',3,'D005','F501');
INSERT INTO Course VALUES ('C502','GIS',3,'D005','F502');
INSERT INTO Course VALUES ('C503','Python',3,'D005','F503');
INSERT INTO Course VALUES ('C504','DBMS',4,'D005','F504');
INSERT INTO Course VALUES ('C505','WebTech',3,'D005','F505');

--ME (D006)
INSERT INTO Course VALUES ('C601','Thermo',4,'D006','F601');
INSERT INTO Course VALUES ('C602','Fluid',4,'D006','F602');
INSERT INTO Course VALUES ('C603','Machine',4,'D006','F603');
INSERT INTO Course VALUES ('C604','Manufact',3,'D006','F604');
INSERT INTO Course VALUES ('C605','AutoCAD',3,'D006','F605');

-- EEE (D003)
INSERT INTO Course VALUES ('C301','Circuit',4,'D003','F301');
INSERT INTO Course VALUES ('C302','Machines',4,'D003','F302');
INSERT INTO Course VALUES ('C303','PowerSys',4,'D003','F303');
INSERT INTO Course VALUES ('C304','Control',3,'D003','F304');
INSERT INTO Course VALUES ('C305','Electro',3,'D003','F305');

-- 3DAG (D009)
INSERT INTO Course VALUES ('C901','Graphics',4,'D009','F901');
INSERT INTO Course VALUES ('C902','Anim',3,'D009','F902');
INSERT INTO Course VALUES ('C903','Model3D',4,'D009','F903');
INSERT INTO Course VALUES ('C904','VFX',3,'D009','F904');
INSERT INTO Course VALUES ('C905','Render',3,'D009','F905');

-- Enrollment waala


-- CSE Enrollment
INSERT INTO Enrollment VALUES ('S101','C101','S3','A');
INSERT INTO Enrollment VALUES ('S102','C102','S3','B');
INSERT INTO Enrollment VALUES ('S103','C103','S3','A');
INSERT INTO Enrollment VALUES ('S104','C104','S3','B+');
INSERT INTO Enrollment VALUES ('S105','C105','S3','A-');
INSERT INTO Enrollment VALUES ('S106','C101','S3','B');
INSERT INTO Enrollment VALUES ('S107','C102','S3','A');
INSERT INTO Enrollment VALUES ('S108','C103','S3','B');
INSERT INTO Enrollment VALUES ('S109','C104','S3','A');
INSERT INTO Enrollment VALUES ('S110','C105','S3','B+');

-- CSE-AIML Enrollment
INSERT INTO Enrollment VALUES ('S201','C201','S3','A');
INSERT INTO Enrollment VALUES ('S202','C202','S3','B');
INSERT INTO Enrollment VALUES ('S203','C203','S3','A');
INSERT INTO Enrollment VALUES ('S204','C204','S3','B+');
INSERT INTO Enrollment VALUES ('S205','C205','S3','A-');
INSERT INTO Enrollment VALUES ('S206','C201','S3','B');
INSERT INTO Enrollment VALUES ('S207','C202','S3','A');
INSERT INTO Enrollment VALUES ('S208','C203','S3','B');
INSERT INTO Enrollment VALUES ('S209','C204','S3','A');
INSERT INTO Enrollment VALUES ('S210','C205','S3','B+');

-- CIVIL Enrollment
INSERT INTO Enrollment VALUES ('S401','C401','S3','A');
INSERT INTO Enrollment VALUES ('S402','C402','S3','B');
INSERT INTO Enrollment VALUES ('S403','C403','S3','A');
INSERT INTO Enrollment VALUES ('S404','C404','S3','B+');
INSERT INTO Enrollment VALUES ('S405','C405','S3','A-');
INSERT INTO Enrollment VALUES ('S406','C401','S3','B');
INSERT INTO Enrollment VALUES ('S407','C402','S3','A');
INSERT INTO Enrollment VALUES ('S408','C403','S3','B');
INSERT INTO Enrollment VALUES ('S409','C404','S3','A');
INSERT INTO Enrollment VALUES ('S410','C405','S3','B+');

-- CEWCA Enrollment
INSERT INTO Enrollment VALUES ('S501','C501','S3','A');
INSERT INTO Enrollment VALUES ('S502','C502','S3','B');
INSERT INTO Enrollment VALUES ('S503','C503','S3','A');
INSERT INTO Enrollment VALUES ('S504','C504','S3','B+');
INSERT INTO Enrollment VALUES ('S505','C505','S3','A-');
INSERT INTO Enrollment VALUES ('S506','C501','S3','B');
INSERT INTO Enrollment VALUES ('S507','C502','S3','A');
INSERT INTO Enrollment VALUES ('S508','C503','S3','B');
INSERT INTO Enrollment VALUES ('S509','C504','S3','A');
INSERT INTO Enrollment VALUES ('S510','C505','S3','B+');

-- ME Enrollment
INSERT INTO Enrollment VALUES ('S601','C601','S3','A');
INSERT INTO Enrollment VALUES ('S602','C602','S3','B');
INSERT INTO Enrollment VALUES ('S603','C603','S3','A');
INSERT INTO Enrollment VALUES ('S604','C604','S3','B+');
INSERT INTO Enrollment VALUES ('S605','C605','S3','A-');
INSERT INTO Enrollment VALUES ('S606','C601','S3','B');
INSERT INTO Enrollment VALUES ('S607','C602','S3','A');
INSERT INTO Enrollment VALUES ('S608','C603','S3','B');
INSERT INTO Enrollment VALUES ('S609','C604','S3','A');
INSERT INTO Enrollment VALUES ('S610','C605','S3','B+');

-- EEE Enrollment
INSERT INTO Enrollment VALUES ('S301','C301','S3','A');
INSERT INTO Enrollment VALUES ('S302','C302','S3','B');
INSERT INTO Enrollment VALUES ('S303','C303','S3','A');
INSERT INTO Enrollment VALUES ('S304','C304','S3','B+');
INSERT INTO Enrollment VALUES ('S305','C305','S3','A-');
INSERT INTO Enrollment VALUES ('S306','C301','S3','B');
INSERT INTO Enrollment VALUES ('S307','C302','S3','A');
INSERT INTO Enrollment VALUES ('S308','C303','S3','B');
INSERT INTO Enrollment VALUES ('S309','C304','S3','A');
INSERT INTO Enrollment VALUES ('S310','C305','S3','B+');

-- 3DAG Enrollment
INSERT INTO Enrollment VALUES ('S901','C901','S3','A');
INSERT INTO Enrollment VALUES ('S902','C902','S3','B');
INSERT INTO Enrollment VALUES ('S903','C903','S3','A');
INSERT INTO Enrollment VALUES ('S904','C904','S3','B+');
INSERT INTO Enrollment VALUES ('S905','C905','S3','A-');
INSERT INTO Enrollment VALUES ('S906','C901','S3','B');
INSERT INTO Enrollment VALUES ('S907','C902','S3','A');
INSERT INTO Enrollment VALUES ('S908','C903','S3','B');
INSERT INTO Enrollment VALUES ('S909','C904','S3','A');
INSERT INTO Enrollment VALUES ('S910','C905','S3','B+');


-- data dekhne ke kiye

SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Student;
SELECT * FROM Course;
SELECT * FROM Enrollment;

