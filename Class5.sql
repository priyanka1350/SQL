use Xworkzdb;

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100),
    genre VARCHAR(50),
    published_year INT,
    total_copies INT NOT NULL
);
select * from Books;


INSERT INTO Books (book_id, title, author, genre, published_year, total_copies)
VALUES
(101, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925, 5),
(102, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 7),
(103, '1984', 'George Orwell', 'Dystopian', 1949, 6),
(104, 'Moby ', 'Herman Melville', 'Adventure', 1851, 4),
(105, 'War and Peace', 'Leo Tolstoy', 'Historical', 1869, 3),
(106, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813, 8),
(107, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951, 5),
(108, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 9),
(109, 'The Road', 'Cormac McCarthy', 'Post-apocalyptic', 2006, 7),
(110, 'The Alchemist', 'Paulo Coelho', 'Adventure', 1988, 10);

select * from Books;
UPDATE BOOKS SET TITLE='the great time' WHERE BOOK_ID=103;
update books set author='leo' where Book_id=103;

/* UPDATE THE COLUMS WITH AND OPERATOR*/
update books set title='who will cry when you die',author='Robin Sharma' where book_id=104 AND published_year=1851;

/* UPDATE THE COLUMS WITH OR OPERATOR*/
update BOOKS SET TITLE= 'atomic habbit' where author='Paulo Coelho' OR BOOK_ID=108;

/* UPDATE THE COLUMS WITH OR OPERATOR*/
update books set title='The Alchemist soul' where book_id IN (110,109,107);

CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(100) NOT NULL,
    contact_number VARCHAR(15),
    address VARCHAR(200),
    email VARCHAR(100) UNIQUE,
    join_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
select * from  Members;
INSERT INTO Members (member_id, member_name, contact_number, address, email, join_date)
VALUES
(201, 'Alice Johnson', '9876543210', '123 Main St, CityA', 'alice.j@example.com', '2023-01-05'),
(202, 'Bob Smith', '8765432109', '456 Oak St, CityB', 'bob.smith@example.com', '2023-02-14'),
(203, 'Charlie Brown', '7654321098', '789 Pine St, CityC', 'charlie.b@example.com', '2023-03-20'),
(204, 'David Williams', '6543210987', '101 Maple St, CityD', 'david.w@example.com', '2023-04-10'),
(205, 'Eve Davis', '5432109876', '202 Cedar St, CityE', 'eve.davis@example.com', '2023-05-17'),
(206, 'Frank Miller', '4321098765', '303 Birch St, CityF', 'frank.m@example.com', '2023-06-09'),
(207, 'Grace Lee', '3210987654', '404 Elm St, CityG', 'grace.lee@example.com', '2023-07-22'),
(208, 'Henry Wilson', '2109876543', '505 Willow St, CityH', 'henry.wilson@example.com', '2023-08-03'),
(209, 'Ivy Moore', '1098765432', '606 Chestnut St, CityI', 'ivy.moore@example.com', '2023-09-11'),
(210, 'Jack Taylor', '0987654321', '707 Spruce St, CityJ', 'jack.taylor@example.com', '2023-10-01');
select * from  Members;

update members set member_name='eve moore', email='eve.moore@example.com' where member_id=209;
update members set member_name='jackie chan', email='jackiechan@example.com' where member_id=210;

/* fetch THE COLUMS WITH OR OPERATOR*/
select member_name from members where  member_id=201 or address='404 Elm St, CityG';
/* fetch 2 rows from the table*/

select * from members where member_name IN ('jackie chan','eve moore');
/* DELETE THE ROW FROM MEMBERS*/
delete from MEMBERS where member_id=205;

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    book_id INT NOT NULL,
    member_id INT NOT NULL,
    issue_date DATE,
    return_date DATE,
    due_date DATE
);
select * from  Transactions;

INSERT INTO Transactions (transaction_id, book_id, member_id, issue_date, return_date, due_date)
VALUES
(301, 101, 201, '2023-07-01', '2023-07-15', '2023-07-10'),
(302, 102, 202, '2023-08-03', '2023-08-18', '2023-08-13'),
(303, 103, 203, '2023-09-05', '2023-09-19', '2023-09-15'),
(304, 104, 204, '2023-09-25', '2023-10-10', '2023-10-05'),
(305, 105, 205, '2023-10-01', NULL, '2023-10-15'),
(306, 106, 206, '2023-10-05', NULL, '2023-10-19'),
(307, 107, 207, '2023-10-10', NULL, '2023-10-24'),
(308, 108, 208, '2023-10-12', NULL, '2023-10-26'),
(309, 109, 209, '2023-10-14', NULL, '2023-10-28'),
(310, 110, 210, '2023-10-15', NULL, '2023-10-29');

update transactions set issue_date='2023-10-28'  where member_id=210;
update transactions set issue_date='2023-10-02', return_date= '2023-10-10'  where member_id=205;

/* DELETE THE ROW*/
delete from transactions where member_id=204;
/* DROP INLY ONE COLUMN */
ALTER TABLE Transactions
DROP COLUMN due_date;
