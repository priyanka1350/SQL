CREATE DATABASE XworkzDB;

USE XworkzDB;

CREATE TABLE Students (
    ID INT PRIMARY KEY,         -- Student ID
    Name VARCHAR(50),           -- Student name
    Age INT,                    -- Student age
    Batch INT(5)            -- Student Batch
);
insert into Students(ID, Name, Age, Batch) values (1, 'joe', 23, 2024); 
select * from Students;

