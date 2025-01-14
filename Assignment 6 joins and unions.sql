use personinfo;

select * from country;
select  * from persons; 

#1. performing inner join
# Matching values from both tables
select Persons.Id as PersonId, Persons.Fname, Persons.Lname,Persons.Rating,Country.Country_name,Country.Population
from Persons
inner join Country on Persons.Country_Id = Country_Id;

#2. Left Join
select Persons.Id as PersonId,Persons.Fname,Persons.Lname,Persons.Rating,Country.Country_name,Country.Population
from Persons
Left join Country on Persons.Country_Id = Country.Id;

#3.Right Join
select Persons.Id as PersonsId,Persons.Fname,Persons.Lname,Persons.Rating,Country.Country_name,Country.Population
From Persons
Right join Country on Persons.Country_ID = Country.Id;

-- All distinct Country names from Both tables
select distinct Country_name
from Country union
select distinct Country_name from Persons;

-- All Country names including duplicates
select Country_name from Country 
union all 
select Country_name from Persons;

-- Rounding the ratings of all the persons to the nearest integer
select ID,Fname,Lname,Country_Id,Round(Rating) as RoundedRating
from Persons;