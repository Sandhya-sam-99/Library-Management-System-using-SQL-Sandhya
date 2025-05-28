---CREATE BOOKS TABLE---
CREATE TABLE BOOKS(
BOOK_ID INT PRIMARY KEY,
TITLE VARCHAR(250) NOT NULL,
AUTHOR VARCHAR(250) NOT NULL,
GENRE VARCHAR(250) NOT NULL,
YEAR_PUBLISHED INT,
AVAILABLE_COPIES INT NOT NULL,
);

---CREATE MEMBERS TABLE---
CREATE TABLE MEMBERS(
    MEMBER_ID INT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(50) UNIQUE,
    PHONE_NO VARCHAR(15),
    ADDRESS VARCHAR(100),
    MEMBERSHIP_DATE DATE NOT NULL
);

---CREATE BORROWING RECORDS TABLE---
CREATE TABLE BORROWINGRECORDS(
BORROW_ID INT PRIMARY KEY,
MEMBER_ID INT NOT NULL,
BOOK_ID INT NOT NULL,
BORROW_DATE DATE NOT NULL,
RETURN_DATE DATE,
FOREIGN KEY(MEMBER_ID) REFERENCES MEMBERS(MEMBER_ID),
FOREIGN KEY(BOOK_ID) REFERENCES  BOOKS(BOOK_ID)
);

---INSERTING DATA INTO BOOK TABLE---
INSERT INTO BOOKS VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 1960, 3),
(2, '1984', 'George Orwell', 'Dystopian', 1949, 2),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925, 1),
(4, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813, 4),
(5, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 2),
(6, 'The Catcher in the Rye', 'J.D. Salinger', 'Coming-of-Age', 1951, 1),
(7, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 1954, 0),
(8, 'Brave New World', 'Aldous Huxley', 'Dystopian', 1932, 3),
(9, 'The Alchemist', 'Paulo Coelho', 'Adventure', 1988, 2),
(10, 'The Da Vinci Code', 'Dan Brown', 'Mystery', 2003, 1),
(11, 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy', 1997, 0),
(12, 'The Hunger Games', 'Suzanne Collins', 'Dystopian', 2008, 2),
(13, 'The Book Thief', 'Markus Zusak', 'Historical Fiction', 2005, 1),
(14, 'Gone Girl', 'Gillian Flynn', 'Thriller', 2012, 3),
(15, 'The Fault in Our Stars', 'John Green', 'Young Adult', 2012, 2);

---INSERTING DATA INTO MEMBERS TABLE---
INSERT INTO MEMBERS VALUES
(101, 'John Smith', 'john.smith@email.com', '555-123-4567', '123 Main St, Anytown', '2020-01-15'),
(102, 'Emily Johnson', 'emily.j@email.com', '555-234-5678', '456 Oak Ave, Somewhere', '2020-03-22'),
(103, 'Michael Brown', 'michael.b@email.com', '555-345-6789', '789 Pine Rd, Nowhere', '2020-05-10'),
(104, 'Sarah Davis', 'sarah.d@email.com', '555-456-7890', '321 Elm St, Anywhere', '2020-07-18'),
(105, 'David Wilson', 'david.w@email.com', '555-567-8901', '654 Maple Dr, Everywhere', '2020-09-05'),
(106, 'Jennifer Lee', 'jennifer.l@email.com', '555-678-9012', '987 Cedar Ln, Someplace', '2020-11-30'),
(107, 'Robert Taylor', 'robert.t@email.com', '555-789-0123', '159 Birch Blvd, Noplace', '2021-02-14'),
(108, 'Lisa Martinez', 'lisa.m@email.com', '555-890-1234', '753 Spruce Way, Anyplace', '2021-04-25'),
(109, 'Thomas Anderson', 'thomas.a@email.com', '555-901-2345', '246 Willow Ct, Elsewhere', '2021-06-08'),
(110, 'Jessica Clark', 'jessica.c@email.com', '555-012-3456', '369 Aspen Pl, Nowhere', '2021-08-17'),
(111, 'Daniel White', 'daniel.w@email.com', '555-123-7890', '582 Redwood Dr, Somewhere', '2021-10-03'),
(112, 'Amanda Hall', 'amanda.h@email.com', '555-234-8901', '174 Sycamore St, Anywhere', '2021-12-12'),
(113, 'Christopher Allen', 'chris.a@email.com', '555-345-9012', '396 Magnolia Ave, Everywhere', '2022-01-20'),
(114, 'Michelle Young', 'michelle.y@email.com', '555-456-0123', '618 Dogwood Rd, Someplace', '2022-03-15'),
(115, 'Matthew Scott', 'matthew.s@email.com', '555-567-1234', '840 Juniper Ln, Noplace', '2022-05-28');

---INSERTING DATA INTO BORROWING RECORDS---
INSERT INTO BORROWINGRECORDS VALUES
(1001, 101, 1, '2023-01-10', '2023-02-05'),
(1002, 101, 4, '2023-01-15', '2023-02-10'),
(1003, 102, 2, '2023-02-01', '2023-02-28'),
(1004, 102, 5, '2023-02-01', '2023-03-01'),
(1005, 103, 3, '2023-02-15', '2023-03-10'),
(1006, 103, 6, '2023-02-20', '2023-03-15'),
(1007, 104, 7, '2023-03-01', '2023-03-25'),
(1008, 104, 8, '2023-03-05', '2023-04-01'),
(1009, 105, 9, '2023-03-10', '2023-04-05'),
(1010, 105, 10, '2023-03-15', '2023-04-10'),
(1011, 106, 11, '2023-04-01', '2023-04-20'),
(1012, 106, 12, '2023-04-05', '2023-04-25'),
(1013, 107, 13, '2023-04-10', '2023-05-01'),
(1014, 107, 14, '2023-04-15', '2023-05-05'),
(1015, 108, 15, '2023-05-01', '2023-05-20'),
(1016, 108, 1, '2023-05-05', '2023-05-25'),
(1017, 109, 2, '2023-05-10', '2023-05-30'),
(1018, 109, 3, '2023-05-15', '2023-06-05'),
(1019, 110, 4, '2023-06-01', '2023-06-20'),
(1020, 110, 5, '2023-06-05', '2023-06-25'),
(1021, 111, 6, '2023-06-10', '2023-06-30'),
(1022, 111, 7, '2023-06-15', NULL),
(1023, 112, 8, '2023-07-01', '2023-07-20'),
(1024, 112, 9, '2023-07-05', '2023-07-25'),
(1025, 113, 10, '2023-07-10', '2023-07-30'),
(1026, 113, 11, '2023-07-15', NULL),
(1027, 114, 12, '2023-08-01', '2023-08-20'),
(1028, 114, 13, '2023-08-05', '2023-08-25'),
(1029, 115, 14, '2023-08-10', '2023-08-30'),
(1030, 115, 15, '2023-08-15', NULL),
(1031, 101, 2, '2023-09-01', '2023-09-20'),
(1032, 101, 5, '2023-09-05', '2023-09-25'),
(1033, 102, 8, '2023-09-10', '2023-09-30'),
(1034, 102, 11, '2023-09-15', NULL),
(1035, 103, 14, '2023-10-01', '2023-10-20'),
(1036, 103, 1, '2023-10-05', '2023-10-25'),
(1037, 104, 4, '2023-10-10', '2023-10-30'),
(1038, 104, 7, '2023-10-15', NULL),
(1039, 105, 10, '2023-11-01', '2023-11-20'),
(1040, 105, 13, '2023-11-05', '2023-11-25'),
(1041, 106, 2, '2023-11-10', '2023-11-30'),
(1042, 106, 5, '2023-11-15', NULL),
(1043, 107, 8, '2023-12-01', '2023-12-20'),
(1044, 107, 11, '2023-12-05', '2023-12-25'),
(1045, 108, 14, '2023-12-10', '2023-12-30'),
(1046, 108, 3, '2023-12-15', NULL),
(1047, 109, 6, '2024-01-01', '2024-01-20'),
(1048, 109, 9, '2024-01-05', '2024-01-25'),
(1049, 110, 12, '2024-01-10', '2024-01-30'),
(1050, 110, 15, '2024-01-15', NULL);

---Retrieve books currently borrowed by a specific member---
SELECT b.TITLE, b.AUTHOR, br.BORROW_DATE
FROM BorrowingRecords br
JOIN Books b ON br.BOOK_ID = b.BOOK_ID
WHERE br.MEMBER_ID = 102 AND br.RETURN_DATE IS NULL;

---Find members who have overdue books (borrowed more than 30 days ago, not returned)---
SELECT m.MEMBER_ID, m.NAME, m.EMAIL, b.TITLE, br.BORROW_DATE, 
       DATEDIFF(day, br.BORROW_DATE, GETDATE()) AS Days_Overdue
FROM BorrowingRecords br
JOIN Members m ON br.MEMBER_ID = m.MEMBER_ID
JOIN Books b ON br.BOOK_ID = b.BOOK_ID
WHERE br.RETURN_DATE IS NULL 
AND DATEDIFF(day, br.BORROW_DATE, GETDATE()) > 30;

---Retrieve books by genre along with the count of available copies---
SELECT GENRE, SUM(AVAILABLE_COPIES) AS Total_Available_Copies
FROM Books
GROUP BY GENRE
ORDER BY Total_Available_Copies DESC;

---Find the most borrowed books overall---
SELECT TOP 3 b.TITLE, b.AUTHOR, COUNT(br.BORROW_ID) AS Times_Borrowed
FROM BorrowingRecords br
JOIN Books b ON br.BOOK_ID = b.BOOK_ID
GROUP BY b.TITLE, b.AUTHOR
ORDER BY Times_Borrowed DESC;

---Retrieve members who have borrowed books from at least three different genres---
SELECT m.MEMBER_ID, m.NAME, COUNT(DISTINCT b.GENRE) AS Different_Genres_Count
FROM BorrowingRecords br
JOIN Members m ON br.MEMBER_ID = m.MEMBER_ID
JOIN Books b ON br.BOOK_ID = b.BOOK_ID
GROUP BY m.MEMBER_ID, m.NAME
HAVING COUNT(DISTINCT b.GENRE) >= 3
ORDER BY Different_Genres_Count DESC;

---Reporting and Analytics---
---Calculate the total number of books borrowed per month---
SELECT 
    YEAR(BORROW_DATE) AS Year,
    MONTH(BORROW_DATE) AS Month,
    COUNT(BORROW_ID) AS Books_Borrowed
FROM BorrowingRecords
GROUP BY YEAR(BORROW_DATE), MONTH(BORROW_DATE)
ORDER BY Year, Month;

---Find the top three most active members based on the number of books borrowed---
SELECT TOP 3 m.MEMBER_ID, m.NAME, COUNT(br.BORROW_ID) AS Books_Borrowed
FROM BorrowingRecords br
JOIN Members m ON br.MEMBER_ID = m.MEMBER_ID
GROUP BY m.MEMBER_ID, m.NAME
ORDER BY Books_Borrowed DESC;

---Retrieve authors whose books have been borrowed at least 10 times---
SELECT b.AUTHOR, COUNT(br.BORROW_ID) AS Times_Borrowed
FROM BorrowingRecords br
JOIN Books b ON br.BOOK_ID = b.BOOK_ID
GROUP BY b.AUTHOR
HAVING COUNT(br.BORROW_ID) >= 10
ORDER BY Times_Borrowed DESC;

---Identify members who have never borrowed a book---
SELECT m.MEMBER_ID, m.NAME, m.EMAIL
FROM Members m
LEFT JOIN BorrowingRecords br ON m.MEMBER_ID = br.MEMBER_ID
WHERE br.BORROW_ID IS NULL;













