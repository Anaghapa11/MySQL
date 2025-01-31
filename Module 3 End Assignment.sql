-- create database Library
create database Library;
use library;


-- create table Branch
Create table Branch (
Branch_no int primary key,
Manager_Id int,
Branch_address varchar(200),
contact_no varchar(15));

-- create table Employee
create table Employee (
Emp_Id int primary key,
Emp_name varchar(100),
Position varchar(50),
Salary decimal(10,2),
Branch_no int,
foreign key (Branch_no) references Branch(Branch_no));

-- create table Books
create table Books (
ISBN varchar(20) primary key,
Book_title varchar(100),
Category varchar(50),
Rental_Price decimal(10,2),
Status varchar(3) check (status in('Yes','No')),
Author varchar(100),
Publisher varchar(100));

-- create table Customer
create table Customer (
Customer_Id int primary key,
Customer_name varchar(100),
Customer_address varchar(200),
Reg_date date
);

-- create table IssueStatus
create table IssueStatus (
Issue_id int primary key,
Issued_cust int,
Issued_book_name varchar(100),
Issue_date date,
ISBN_book varchar(20),
foreign key (Issued_cust)references Customer(Customer_Id),
foreign key (ISBN_book)references Books(ISBN));

-- create table ReturnStatus
create table ReturnStatus (
Return_Id int primary key,
Return_cust int,
Return_book_name varchar(100),
Return_date date,
ISBN_book2 varchar(20),
foreign key (Return_cust) references Customer(Customer_Id),
foreign key (ISBN_book2) references Books(ISBN));

insert into Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
values
(101, 1, '123 Library St, City A', '123-456-7890'),
(102, 2, '456 Book Ave, City B', '987-654-3210');

insert into Employee (Emp_Id, Emp_name, Position, Salary, Branch_no)
values
(1, 'John Doe', 'Manager', 60000, 101),
(2, 'Jane Smith', 'Librarian', 40000, 101),
(3, 'Alice Johnson', 'Assistant', 30000, 102),
(4, 'Bob Brown', 'Manager', 65000, 102);
insert into Employee (Emp_Id, Emp_name, Position, Salary, Branch_no)
values (5,'James Smith','Assistant',33000,101),
(6,'Adam john','Junior Assistant',56000,101),
(7,'Emi Jackson','Manager',60000,101),
(8,'Anna Mariya','Librarian',70000,101),
(9,'Theresa john','Manager',50000,101),
(10,'Luis Antony','Senior',49000,102);





insert into Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher)
values
('978-1234567890', 'History of Art', 'History', 30, 'yes', 'John Green', 'Art Publishers'),
('978-0987654321', 'Introduction to Programming', 'Technology', 25, 'yes', 'Alice White', 'Tech Press'),
('978-1122334455', 'Modern Biology', 'Science', 20, 'no', 'David Black', 'BioScience Ltd'),
('978-6677889900', 'World War II', 'History', 35, 'yes', 'Samuel Brown', 'History Publishing');


insert into Customer (Customer_Id, Customer_name, Customer_address, Reg_date) 
values
(1, 'Mary White', '789 Oak St, City C', '2021-11-15'),
(2, 'James Black', '321 Pine Rd, City D', '2022-05-23'),
(3, 'Linda Green', '654 Maple Ave, City E', '2023-01-10');
insert into Customer (Customer_Id, Customer_name, Customer_address, Reg_date) 
values (4,'Grace Antony','Gandhi Nagar','1999-08-20');

insert into IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, ISBN_book) 
values
(1, 1, 'History of Art', '2023-01-05', '978-1234567890'),
(2, 2, 'World War II', '2023-02-10', '978-6677889900');
insert into IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, ISBN_book) 
values (3,2,'History o Art','2023-06-01','978-1234567890');

insert into ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, ISBN_book2) 
values
(1, 1, 'History of Art', '2023-01-15', '978-1234567890'),
(2, 2, 'World War II', '2023-02-20', '978-6677889900');


-- 1.retrieving the book_title,category,rental_price of all avilablle books
select Book_title,Category,Rental_Price
from Books
where Status = 'yes';

-- 2.List the employee names and their respective salaries in descending order of salary
select Emp_name,Salary 
from Employee 
order by Salary desc;

-- 3.Retrieve the book titles and the corresponding customers who have issued those books
select b.Book_title, c.Customer_name
from Books b
join IssueStatus i on b.ISBN = i.Isbn_book
join Customer c on i.Issued_cust = c.Customer_Id;

-- 4.Display the total count of books in each category
select Category,count(*) as Total_books from Books group by Category;

-- 5.Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000
select Emp_name,Position from Employee where Salary > 50000;

-- 6.List the customer names who registered before 2022-01-01 and have not issued any books yet
select Customer_name
from Customer
where Reg_date < '2022-01-01'
and Customer_Id not in  (select Issued_cust from IssueStatus);

-- 7.Display the branch numbers and the total count of employees in each branch
select Branch_no, count(*) as Total_employees from employee group by Branch_no;

-- 8.Display the names of customers who have issued books in the month of June 2023
select c.Customer_name
from Customer c
join IssueStatus i on c.Customer_Id = i.Issued_cust
where i.Issue_date >= '2023-06-01' and i.Issue_date < '2023-07-01';

-- 9.Retrieve book_title from book table containing history.
select Book_title from Books where Book_title like '%history%';

-- 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees 
select Branch_no,Count(*) as Total_employees
from Employee
group by Branch_no
having count(*) > 5;

-- 11.Retrieve the names of employees who manage branches and their respective branch addresses
select E.Emp_name, B.Branch_address from Employee E
join Branch B on E.Branch_no = B.Branch_no
where E.position = 'Manager';

-- 12.Display the names of customers who have issued books with a rental price higher than Rs. 25
select distinct C.Customer_name
from Customer C
join issueStatus i on C.Customer_id = i.Issued_cust
join Books B on i.ISBN_Book = B.ISBN
where B.Rental_Price > 25;

SELECT * FROM IssueStatus WHERE Issue_date >= '2023-06-01' AND Issue_date < '2023-07-01';