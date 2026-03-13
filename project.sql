CREATE DATABASE IF NOT EXISTS library_db
;

SHOW DATABASES;

USE  library_db;

CREATE TABLE IF NOT EXISTS `books`
(book_id  INT AUTO_INCREMENT PRIMARY KEY,
 title VARCHAR(500) NOT NULL,
 author VARCHAR(500) NOT NULL,
 category VARCHAR(100) NOT NULL,
 publication_year INT NOT NULL,
 edition INT CHECK (edition >= 1),
 available_copies INT NOT NULL CHECK (available_copies >= 0)
 );

CREATE TABLE IF NOT EXISTS `members`
(member_id INT AUTO_INCREMENT PRIMARY KEY,
 member_name VARCHAR(200) NOT NULL,
 date_of_birth DATE NOT NULL,
 gender VARCHAR(50),
 occupation TEXT,
 email VARCHAR(300) NOT NULL UNIQUE,
 phone_number VARCHAR(50) NOT NULL UNIQUE,
 member_joined DATE NOT NULL)
 ;

CREATE TABLE IF NOT EXISTS `loans`
(loan_id INT AUTO_INCREMENT PRIMARY KEY,
member_id INT NOT NULL,
book_id INT NOT NULL,
date_loaned TIMESTAMP NOT NULL,
due_date DATE,
date_returned DATE,

CONSTRAINT FK_member
FOREIGN KEY (member_id)
REFERENCES members(member_id),

CONSTRAINT FK_book
FOREIGN KEY (book_id) 
REFERENCES books(book_id)
);

INSERT INTO books (title, author, category, publication_year, edition, available_copies)
VALUES
('The Silent Patient','Alex Michaelides','Mystery',2019,1,5),
('Atomic Habits','James Clear','Self-Help',2018,1,8),
('The Psychology of Money','Morgan Housel','Finance',2020,1,6),
('Rich Dad Poor Dad','Robert Kiyosaki','Finance',1997,2,7),
('Think and Grow Rich','Napoleon Hill','Self-Help',1937,1,4),
('The Midnight Library','Matt Haig','Fiction',2020,1,5),
('Sherlock Holmes: The Complete Novels','Arthur Conan Doyle','Mystery',1892,3,2),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925, 1, 3),
('1984', 'George Orwell', 'Dystopian', 1949, 1, 5),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 1, 2),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951, 1, 4),
('Pride and Prejudice', 'Jane Austen', 'Romance', 1813, 2, 6),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 3, 0),
('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy', 1997, 1, 10),
('The Da Vinci Code', 'Dan Brown', 'Mystery', 2003, 1, 7),
('The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 1, 5),
('Sapiens', 'Yuval Noah Harari', 'Non-Fiction', 2011, 1, 8),
('Educated', 'Tara Westover', 'Memoir', 2018, 1, 2),
('Becoming', 'Michelle Obama', 'Memoir', 2018, 1, 3),
('The Silent Patient', 'Alex Michaelides', 'Thriller', 2019, 1, 4),
('Atomic Habits', 'James Clear', 'Self-Help', 2018, 1, 6),
('The Subtle Art of Not Giving a F*ck', 'Mark Manson', 'Self-Help', 2016, 1, 2),
('Dune', 'Frank Herbert', 'Sci-Fi', 1965, 2, 3),
('Neuromancer', 'William Gibson', 'Sci-Fi', 1984, 1, 1),
('The Martian', 'Andy Weir', 'Sci-Fi', 2014, 1, 5),
('Gone Girl', 'Gillian Flynn', 'Mystery', 2012, 1, 2),
('The Girl on the Train', 'Paula Hawkins', 'Mystery', 2015, 1, 0);

INSERT INTO members (member_name, date_of_birth, gender, occupation, email, phone_number, member_joined) VALUES
('Ada Lovelace', '1990-12-10', 'Female', 'Software Engineer', 'ada@example.com', '08012345601', '2021-03-15'),
('Alan Turing', '1985-06-23', 'Male', 'Mathematician', 'alan@example.com', '08012345602', '2020-08-12'),
('Grace Hopper', '1992-12-09', NULL, 'Computer Scientist', 'grace@example.com', '08012345603', '2019-01-20'),
('Linus Torvalds', '1988-12-28', 'Male', NULL, 'linus@example.com', '08012345604', '2022-06-05'),
('Zainab Musa','1999-05-12','Female','Student','zainab@example.com','08012345621',CURRENT_DATE()),
('Katherine Johnson', '1995-08-26', 'Female', 'Physicist', 'katherine@example.com', '08012345605', '2020-02-17'),
('Tim Berners-Lee', '1983-05-08', NULL, 'Engineer', 'tim@example.com', '08012345606', '2021-11-11'),
('Margaret Hamilton', '1987-08-17', 'Female', 'Programmer', 'margaret@example.com', '08012345607', '2018-09-19'),
('Dennis Ritchie', '1984-09-09', 'Male', NULL, 'dennis@example.com', '08012345608', '2019-05-05'),
('Daniel Okafor','1994-11-30',NULL,'Entrepreneur','daniel@example.com','08012345623',CURRENT_DATE()),
('John von Neumann', '1991-12-28', 'Male', 'Mathematician', 'johnvn@example.com', '08012345609', '2021-07-07'),
('Barbara Liskov', '1989-11-07', 'Female', 'Engineer', 'barbara@example.com', '08012345610', '2022-01-02'),
('Margaret Chen', '1996-02-14', 'Female', 'Data Analyst', 'margaretc@example.com', '08012345611', '2023-03-01'),
('Samuel Eto’o', '1990-03-10', 'Male', 'Athlete', 'samuel@example.com', '08012345612', '2022-05-23'),
('Ada Okeke', '1998-09-19', 'Female', NULL, 'adaok@example.com', '08012345613', '2020-11-20'),
('Chinedu Uzo', '1995-12-12', 'Male', 'Teacher', 'chinedu@example.com', '08012345614', '2019-09-14'),
('Ngozi Ibe', '1993-07-22', NULL, 'Doctor', 'ngozi@example.com', '08012345615', '2018-12-01'),
('Emeka Obi', '1988-04-16', 'Male', 'Engineer', 'emeka@example.com', '08012345616', '2021-02-28'),
('Funke Adebayo', '1994-10-11', 'Female', 'Lawyer', 'funke@example.com', '08012345617', '2022-08-17'),
('Ifeanyi Nwosu', '1992-01-30', NULL, NULL, 'ifeanyi@example.com', '08012345618', '2020-10-10'),
('Ngozi Chukwu', '1997-03-23', 'Female', 'Nurse', 'ngozych@example.com', '08012345619', '2023-01-05'),
('Tunde Balogun', '1991-07-12', 'Male', 'Teacher', 'tunde@example.com', '08012345620', '2019-11-25'),
('Oluwaseun Ade','1996-03-09','Male','Designer','seun@example.com','08012345622',CURRENT_DATE())
;

INSERT INTO loans (member_id, book_id, date_loaned, due_date, date_returned) VALUES
(1, 1, '2023-03-01 10:00:00', '2023-03-15', '2023-03-14'),
(2, 2, '2023-03-05 14:30:00', '2023-03-20', NULL),
(3, 3, '2023-03-06 09:00:00', '2023-03-21', '2023-03-20'),
(4, 4, '2023-03-07 12:15:00', '2023-03-22', NULL),
(5, 5, '2023-03-08 16:00:00', '2023-03-23', '2023-03-23'),
(6, 6, '2023-03-09 10:30:00', '2023-03-24', NULL),
(7, 7, '2023-03-10 11:00:00', '2023-03-25', '2023-03-24'),
(8, 8, '2023-03-11 15:45:00', '2023-03-26', NULL),
(9, 9, '2023-03-12 10:20:00', '2023-03-27', '2023-03-26'),
(10, 10, '2023-03-13 09:15:00', '2023-03-28', NULL),
(11, 11, '2023-03-14 13:00:00', '2023-03-29', '2023-03-29'),
(12, 12, '2023-03-15 14:40:00', '2023-03-30', NULL),
(13, 13, '2023-03-16 10:10:00', '2023-03-31', NULL),
(14, 14, '2023-03-17 11:35:00', '2023-04-01', '2023-03-31'),
(15, 15, '2023-03-18 09:50:00', '2023-04-02', NULL),
(16, 16, '2023-03-19 12:00:00', '2023-04-03', '2023-04-02'),
(17, 17, '2023-03-20 10:05:00', '2023-04-04', NULL),
(18, 18, '2023-03-21 14:30:00', '2023-04-05', '2023-04-04'),
(19, 19, '2023-03-22 11:15:00', '2023-04-06', NULL),
(20, 20, '2023-03-23 10:25:00', '2023-04-07', NULL),
(1, 2, '2023-03-24 09:45:00', '2023-04-08', NULL),
(2, 3, '2023-03-25 13:30:00', '2023-04-09', '2023-04-08'),
(3, 4, '2023-03-26 15:00:00', '2023-04-10', NULL),
(4, 5, '2023-03-27 10:20:00', '2023-04-11', '2023-04-10'),
(5, 6, '2023-03-28 12:30:00', '2023-04-12', NULL),
(6, 7, '2023-03-29 14:40:00', '2023-04-13', '2023-04-12'),
(7, 8, '2023-03-30 09:10:00', '2023-04-14', NULL),
(8, 9, '2023-03-31 11:20:00', '2023-04-15', NULL),
(9, 10, '2023-04-01 10:05:00', '2023-04-16', '2023-04-15'),
(10, 11, '2023-04-02 14:30:00', '2023-04-17', NULL),
(21,5,NOW(),DATE(DATE_ADD(NOW(), INTERVAL 14 DAY)),NULL),
(22,3,NOW(),DATE(DATE_ADD(NOW(), INTERVAL 14 DAY)),NULL),
(23,7,NOW(),DATE(DATE_ADD(NOW(), INTERVAL 14 DAY)),NULL);

SELECT member_id, member_name
FROM members;

SELECT * FROM books;

SELECT * FROM loans;

-- Phase 3: A: View all books --
SELECT * FROM books;

-- Show all registered members --
SELECT member_id, member_name
FROM members;

-- Find all loans made on a specific date --
SELECT * FROM loans
WHERE DATE(date_loaned) = '2023-03-21';

-- Display all books with more than 3 available copies --
SELECT book_id, title FROM books
WHERE available_copies >3;

-- Phase 4: Applying Comparison and Logical Operators --
-- (Day 4) Books published after 2015: --
SELECT book_id, title FROM books
WHERE publication_year > 2015;

-- Books that are either Fiction or Mystery --
SELECT book_id, title, category FROM books
WHERE LOWER(category) IN ('fiction', 'mystery');

-- Loans that have not been returned --
SELECT * FROM loans
WHERE date_returned IS NULL;

 -- Members who joined after 2020 and have borrowed books (bonus) --
SELECT m.member_id, m.member_name FROM members m
JOIN loans l
ON m.member_id = l.member_id
WHERE member_joined > 2020;
 
-- Phase 5: Sorting, Filtering, and Limiting Results (Day 5 - ORDER BY, DISTINCT, OFFSET, LIMIT)--
-- Objective: Organize, paginate, and refine your query results. --
-- Sort all books alphabetically by title --
SELECT book_id, title FROM books
ORDER BY title ASC;

-- List distinct book genres --
SELECT DISTINCT category
FROM books;

-- Get top 5 most recent members --
SELECT member_id, member_name
FROM members
ORDER BY member_joined DESC
LIMIT 5;

-- Skip the first 5 books and display the next 5 --
SELECT book_id, title FROM books
LIMIT 5
OFFSET 5;

-- Show the 10 most recent loans not yet returned --
SELECT * FROM loans
WHERE date_returned IS NULL
ORDER BY date_loaned DESC
LIMIT 10;
