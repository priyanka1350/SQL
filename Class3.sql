-- Create the Library database
CREATE DATABASE Library;

-- Use the newly created database
USE Library;

-- Create the Authors table without foreign key
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    BirthYear INT
);
insert into Authors values(001,'John','Smith',1954);
insert into Authors values(002,'Joy','rob',1964), (003,'abram','link',1897);
insert into Authors values(04,'robert','blue',1990),(040,'samual','sam',1990),(005,'ankith','chanchal',2010);
select * from Authors 


-- Update the AuthorID
UPDATE Authors
SET AuthorID = 006
WHERE FirstName = 'samual';




CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255),
    Genre VARCHAR(100),
    PublishedYear INT,
    AuthorID INT  
);

INSERT INTO Books (Title, Genre, PublishedYear, AuthorID) VALUES
('The Great Gatsby', 'Fiction', 1925, 1),
('To Kill a Mockingbird', 'Fiction', 1960, 2),
('1984', 'Dystopian', 1949, 3),
('Pride and Prejudice', 'Romance', 1813, 4),
('The Catcher in the Rye', 'Fiction', 1951, 5);

select * from Books


-- Create the Members table without foreign key
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    JoinDate DATE
);
INSERT INTO Members (FirstName, LastName, JoinDate) VALUES
('Alice', 'Johnson', '2022-01-15'),
('Bob', 'Smith', '2021-06-23'),
('Catherine', 'Brown', '2023-03-10'),
('David', 'Williams', '2022-11-05'),
('Emily', 'Jones', '2020-09-20');
select * from Members

-- Create the BorrowedBooks table without foreign key
CREATE TABLE BorrowedBooks (
    BorrowID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,  -- No foreign key constraint
    MemberID INT,  -- No foreign key constraint
    BorrowDate DATE,
    ReturnDate DATE
);
INSERT INTO BorrowedBooks (BookID, MemberID, BorrowDate, ReturnDate) VALUES
(1, 1, '2023-09-01', '2023-09-15'),
(2, 2, '2023-09-05', '2023-09-19'),
(3, 3, '2023-09-07', '2023-09-21'),
(4, 4, '2023-09-10', '2023-09-24'),
(5, 5, '2023-09-12', '2023-09-26');
select * from BorrowedBooks
