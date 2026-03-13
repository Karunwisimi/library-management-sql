# Library Management Database (SQL Project)

## Overview

This project demonstrates the design and implementation of a relational database for a simple library management system using SQL.

The database manages information about:

* Books available in the library
* Registered members
* Loan transactions

It also includes queries to retrieve and analyze the stored data.

---

## Database Structure

The database contains three main tables:

### Books

Stores information about books in the library.

Fields include:

* Book ID
* Title
* Author
* Category
* Publication Year
* Edition
* Available Copies

### Members

Stores information about registered library members.

Fields include:

* Member ID
* Name
* Date of Birth
* Gender
* Occupation
* Email
* Phone Number
* Join Date

### Loans

Tracks which members borrowed which books.

Fields include:

* Loan ID
* Member ID
* Book ID
* Date Loaned
* Due Date
* Date Returned

Foreign key relationships ensure referential integrity between tables.

---

## Features Demonstrated

This project demonstrates several SQL concepts:

* Database creation
* Table creation with constraints
* Primary and foreign keys
* Data insertion
* Filtering with WHERE
* Logical operators
* Sorting with ORDER BY
* DISTINCT values
* LIMIT and OFFSET for pagination
* JOIN operations
* Handling NULL values

---

## Example Queries

Examples included in the project:

* View all books
* Find books with available copies
* Show members who joined after a certain date
* Identify loans that have not been returned
* Retrieve the most recent loans

---

## How to Run

1. Open MySQL Workbench.
2. Run the SQL script `project.sql`.
3. The script will:

   * Create the database
   * Create tables
   * Insert sample data
   * Execute example queries.

---

## Technologies Used

* MySQL
* SQL (DDL & DML)

---

## Author

Simisola Karunwi
