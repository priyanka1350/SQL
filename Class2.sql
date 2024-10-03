CREATE DATABASE XworkzDB;

USE XworkzDB;

CREATE TABLE Students (
    ID INT PRIMARY KEY,         -- Student ID
    Name VARCHAR(50),           -- Student name
    Age INT,                    -- Student age
    Batch INT(5)            -- Student Batch
);
insert into Students(ID, Name, Age, Batch,SEC, Grade) values (1, 'joe', 23, 2024); 
select * from Students;

 /*add 2 columns to the existing table*/

ALTER TABLE Students ADD column SEC varchar(2);
ALTER TABLE Students ADD column Grade INT(5);
UPDATE Students
SET Grade = '3'   -- new value for the sec column
WHERE ID = 1;  -- specify the condition (e.g., student ID)


insert into Students(ID, Name, Age, Batch,SEC, Grade) values (2, 'cloe', 23, 2024, 'A' , 1); 

/* REMOVE 2 COLUMNS*/

ALTER table Students Drop column  SEC;
ALTER table Students Drop column  Grade;

/* RENAME 3 COLUMNS*/

ALTER TABLE Students RENAME COLUMN Batch to Year;
ALTER TABLE Students RENAME COLUMN Age to Stud_Age ,RENAME COLUMN Name to Stud_Name;

select * from Students;

/* CHANGE DATATYPE FOR 3 COLUMNS */

ALTER TABLE Students change column ID ID varchar(10);
insert into Students(ID, Stud_Name, Stud_Age, Year) values ('Ab', 'JOY', 24, 2024); 

ALTER TABLE Students change column Stud_Name Stud_Name INT; 
ALTER TABLE Students change column Stud_Age Stud_Age varchar(10); 

insert into Students(ID, Stud_Name, Stud_Age, Year) values ('bv', 123, 'ABC', 2024); 
desc Students

/* RENAME TABLE NAME */


ALTER TABLE Students 
RENAME TO Student_info;
