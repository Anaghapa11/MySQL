-- creating database
create database PersonInfo;
use personinfo;

-- inserting table
create table Country (
    Id int primary key,
    Country_name varchar(100),
    Population int,
    Area float
);

create table Persons (
    Id int primary key,
    Fname varchar(50),
    Lname varchar(50),
    Population int,
    Rating float,
    Country_Id int,
    Country_name varchar(100),
    foreign key (Country_Id) references Country(Id)
);

-- inserting data
insert into Country (Id, Country_name, Population, Area) 
values
(1, 'USA', 331000000, 9833517),
(2, 'Canada', 37700000, 9984670),
(3, 'UK', 67800000, 243610),
(4, 'India', 1393409038, 3287263),
(5, 'Australia', 25600000, 7692024),
(6, 'Germany', 83783942, 357022),
(7, 'France', 65273511, 551695),
(8, 'Italy', 60244639, 301340),
(9, 'Brazil', 212559417, 8515767),
(10, 'Japan', 126476461, 377975);

insert into Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) 
values
(1, 'John', 'Doe', 331000000, 4.8, 1, 'USA'),
(2, 'Jane', 'Smith', 331000000, 4.0, 1, 'USA'),
(3, 'Michael', 'Johnson', 37700000, 5.0, 2, 'Canada'),
(4, 'Emily', 'Davis', 67800000, 3.5, 3, 'UK'),
(5, 'William', 'Wilson', 1393409038, 4.9, 4, 'India'),
(6, 'Olivia', 'Martinez', 25600000, 2.0, 5, 'Australia'),
(7, 'James', 'Garcia', 83783942, 4.2, 6, 'Germany'),
(8, 'Sophia', 'Rodriguez', 65273511, 4.5, 7, 'France'),
(9, 'Isabella', 'Lee', 60244639, 4.7, 8, 'Italy'),
(10, 'Alexander', 'Williams', 212559417, 3.8, 9, 'Brazil');

-- pinting first three characters of country_name from the country table
 select left(Country_name,3) as firstthreechars from country;
 
 -- concatenate first name and last name from persons table
 select concat(Fname,' ',Lname) as fullname from Persons;
 
 -- count the number of unique country names from persons table
 select count(distinct Country_name) as uniquecountry_name from persons;
 
 -- printing the maximum population from the country table
 select max(population) as Maximumpopulation from Country;
 
 -- printing the minimum population from persons table
 select min(population) as Minimumpopulation from Persons;
 
 -- inserting 2 new rows to the persons table making the Lname null.
 -- another to count Lname from persons table
 insert into Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
 values
(11, 'Albert', 'null', 987000000, 3.5, 1, 'USA'),
(12, 'Santa', 'null', 897000000, 2.1, 2, 'Canada');
select count(Lname) as Lnamecount from Persons;

-- find the number of rows in the persons table
select count(*) as Rowcount from Persons;

-- show the population of the country table for the first 3 rows
select Population from country limit 3;

-- print 3 random rows of countries 
select * from Country order by rand() limit 3;

-- listing all persons ordered by their rating in descending order
select * from Persons order by rating desc;

-- Total population for each country in the persons table
select Country_name, sum(population) as Totalpopulation  from Persons group by Country_name;

-- Find countries in the Persons table with a total population greater than 50,000
select Country_name from Persons group by Country_name having sum(population) > 50000;

-- Total number of persons and average rating for each country, buy only for countries with more than 2 persons,ordered by the average rate in asceding order
select Country_name,count(*) as TotalPersons,avg(rating) as AvgRating from Persons group by Country_name having count(*) > 2 order by AvgRating asc;