# MySQL
MySQL Assignments
# Assignment 1
Assignment one is about performing DDL commands in Mysql.

# Steps done
By performing DDL Commands(CREATE,ALTER,DROP,RENAME,TRUNCATE);
1. Created database named school.
2. create the table students.
3. insert data into the table
4. Use the select command to display the table.
5. Using alter to add a new column.
6. Using drop command remove an column.
7. Using truncate deleted all the rows.
8. using drop remove the table.


# Assignment 2
A Assignment two is about performing DDL constraints in Mysql.

# Steps done
By performing DDL constraints(Primary key,Unique,Not null);
1. Created database named sales.
2. create the table Orders.
3. insert data into the table
4. Added a new column
5. Rename the table
6. Retrieving data
7. Update a row
8. using drop remove the table.

# Assignment 3
A Assignment three is about performing DML constraints in Mysql.

# Steps done
By performing DML constraints(check,Not null);
1. create the table Managers.
2. insert data into the table
3. Retrieving the name and date of birth of the manager
4. Displaying annual income.
5. Displaying records of all managers except "aaliya"
6. Displaying details of managers whose department is IT and earns more than 25000 per month
7. display details of manager whose salary is between 10000 and 35000.


# Assignment 4
A Assignment four is about querying data in Mysql.

# Steps done
Querying data
1. create the Database.
2. create tables person and country.
3. List the distinct country names from the person table.
4. Select first names and last names from the persons table with aliases.
5. Find all persons with a rating greater than 4.0 .
6. Find countries with a population greater than 10 lakhs.
7. Find persons who are from 'USA' or have a rating greater than 4.5 .
8. Find all persons where the country name is NULL.
9. Find all persons from the countries 'USA','CANADA', and 'UK'.
10. Find all persons not from the countries 'INDIA', and 'AUSTRALIA'.
11. Find all countries with a population between 5 lakhs and 20 lakhs.
12. Find all countries whose names do not start with C.


# Assignment 5
Assignment five is about sorting and grouping data in My Sql.

# Steps done
1. create the Database.
2. create tables person and country.
3. Print the first three characters of Country_name from the Country table.
4. Concatenate first name and last name from Persons table. 
5. Count the number of unique country names from Persons table. 
6. Print the maximum population from the Country table.
7. Print the minimum population from Persons table.
8. Insert 2 new rows to the Persons table making the Lname NULL. Then implement another query to count Lname from Persons table.
9. Find the number of rows in the Persons table. 
10. Print the population of the Country table for the first 3 rows. 
11. Print 3 random rows of countries.
12. Print all persons ordered by their rating in descending order.
13. Find the total population for each country in the Persons table.
14. Find countries in the Persons table with a total population greater than 50,000.
15. List the total number of persons and average rating for each country,but only for countries with more than 2 persons, ordered by the average rating in ascending order.


# Assignment 6
Assignment Six is about performing joins and unions in My Sql.

# Steps done
1. Create the Database.
2. Create tables person and country.
3. Performing inner join, Left join, and Right join on the tables.
4. Printed all distinct country names from both the Country and Persons tables.
5. Printed all country names from both the Country and Persons tables, including duplicates.
6. Rounded the ratings of all persons to the nearest integer in the Persons table.


# Assignment 7
Assignment Seven is about performing Functions in My Sql.

# Steps done
1. Create the Database.
2. Create tables person and country.
3. Add a new column called DOB in Persons table with data type as Date.
4. Add user-defined function to calculate age using DOB. 
5. Implement select query to fetch the Age of all persons using the function that has been created.
6. Add the query to find the length of each country name in the Country table.
7. Extracted the first three characters of each country's name in the Country table.
8. Converted all country names to uppercase and lowercase in the Country table.

# Assignment 8
Assignment eight is about performing Subqueries and Views in My Sql.

# Steps done
1. Create the Database.
2. Create tables person and country.
3.find the number of persons in each country and sorted from high to low.
4. Find out an average rating for Persons in respective countries if the average is greater than 3.0.
5. Find the countries with the same rating as the USA.
6. Select all countries whose population is greater than the average population of all nations.
7.create another database called product and table called custumer.
8.Created 3 views for customer_info,US_Customers and Customer_details.
9.Performed queries to select data from the views, update phone numbers for California customers, and count the number of customers by state.
10.Verified the inserted data by running SELECT queries on the Customer, customer_info, US_Customers, and Customer_details views.


# Assignment 9
Assignment nine is about performing Stored Procedures in My Sql.

# Steps done
1. Create table named Worker.
2. Stored Prcedure to Add a New Worker.
3. To add a new worker to the Worker table.
4. To retrieve the salary of a worker by WORKER_ID.
5. To takes WORKER_ID and DEPARTMENT as input parameters and updates the worker's department.


# Assignment 10
Assignment Ten is about performing Triggers in My Sql.

# Steps done
1. Create teachers table and insert 8 rows.
2. Teachers Table contains columns for id, name, subject, experience, and salary.
3. Before Insert Trigger Prevents inserting a row with a negative salary by raising an error.
4. After Insert Trigger Logs the insertion of a new teacher by adding an entry to the teacher_log table with the teacher’s ID, action type, and timestamp.
5. Before Delete Trigger Prevents the deletion of a teacher who has more than 10 years of experience by raising an error.
6. After Delete Trigger Logs deletions in the teacher_log table, similar to the insert action.
