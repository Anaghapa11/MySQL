use personinfo;

-- Adding a new column called DOB in Persons table with data type as Date.
alter table Persons
add DOB Date;

select * from Persons;

-- inserting values to DOB
update Persons
set DOB = '1990-05-15'
where Id = 1;

update Persons
set DOB = '1985-07-20'
where Id = 2;

update Persons
set DOB = '1992-03-12'
where Id = 3;

update Persons
set DOB = '1988-09-30'
where Id = 4;

update Persons
set DOB = '1995-12-25'
where Id = 5;

update Persons
set DOB = '1991-11-01'
where Id = 6;

update Persons
set DOB = '1992-12-23'
where Id = 7;

update Persons
set DOB = '1995-11-15'
where Id = 8;

update Persons
set DOB = '1990-09-05'
where Id = 9;

update Persons
set DOB = '1999-08-20'
where Id = 10;

update Persons
set DOB = '1994-02-25'
where Id = 11;

update Persons
set DOB = '1997-05-19'
where Id = 12;

select * from Persons;

-- User-defined function to calculate age using DOB
delimiter $$
create function CalculateAge(birthdate Date) 
returns int deterministic
begin
return timestampdiff(Year,birthdate, curdate());
end $$
delimiter ;

-- Fetch the Age of all persons using the function that has been created
select Id,Fname,Lname,DOB,CalculateAge(DOB) as age from Persons;

-- Length of each country name in the Country table.
select Country_name,Length(Country_name) as NameLength from country;

-- Extract the first three characters of each country's name in the Country table
select Country_name,Left(Country_name,3) as FirstThreeChars from Country;

-- Converting all country names to uppercase and lowercase in the Country table.
select Country_name,upper(Country_name) as UppercaseName,Lower(Country_name) as LowercaseName from country;