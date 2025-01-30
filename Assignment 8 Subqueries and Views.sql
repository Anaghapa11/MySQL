use personinfo;

-- Number of persons in each country
select country_name,count(*) as person_count from persons group by country_name;

-- Number of persons in each country sorted from high to low
select country_name,count(*) as person_count from persons group by country_name order by person_count desc;

-- finding out an average rating for persons in respective countries with the same rating as the USA
select country_name, avg(Rating) as Average_Rating from persons group by country_name having avg(rating) > 3.0;

-- Countries with the same  rating as the USA
select distinct country_name from persons where rating = (select avg(rating) from persons where country_name = 'USA');

-- All countries  whose population is greater than the average population of all nations
select country_name, population from country where population > (select avg(population) from country);


-- CREATE DATABASE
create database Product;
use Product;

create table Custumer (
Custumer_Id int auto_increment primary key,
First_name varchar(50),
Last_name varchar(50),
Email varchar(100),
Phone_no varchar(15),
Addres varchar(100),
City varchar(50),
State varchar(50),
Zip_code varchar(10),
Country varchar(50));

-- Create a view named customer_info for full name and email
create view custumer_info as select concat(First_name,' ',Last_name) as Full_Name ,Email from Custumer;

-- Create a view named US_Customers for customers located in the US
create view US_Customers as select *  from custumer where country = 'USA';

-- Create a view named Customer_details with full name, email, phone number, and state
create view Custumer_details as
select concat(First_name,' ', Last_name) as Full_Name,Email,Phone_no,State from custumer;

-- Update phone numbers of customers who live in California in Customer_details view
update Custumer set Phone_no = 'NewPhoneNumber' where State = 'California';

-- Count the number of customers in each state and show states with more than 5 customers
select state, count(*) as custumer_count from Custumer group by State having count(*) > 5;

-- Query the number of customers in each state from the Customer_details view
select state, count(*) as custumer_count from Custumer_details group by State;

-- Query all columns from the Customer_details view, sorted by the state
select  * from Custumer_details order by state asc;
