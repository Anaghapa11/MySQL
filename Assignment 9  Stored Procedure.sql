create table Worker (
    Worker_Id int primary key,
    FirstName char(25),
    LastName char(25),
    Salary int(15),
    JoiningDate datetime,
    Department char(25)
);

-- To insert a worker
Delimiter $$
create procedure AddWorker(
    in p_Worker_Id int,
    in p_FirstName char(25),
    in p_LastName char(25),
    in p_Salary int,
    in p_JoiningDate datetime,
    in p_Department char(25))
begin
   insert into  Worker (Worker_Id, FirstName, LastName, Salary, JoiningDate, Department)
    values(p_Worker_Id, p_FirstName, p_LastName, p_Salary, p_JoiningDate, p_Department);
end $$
Delimiter ;

-- to get salary by worker id
Delimiter $$
create procedure GetWorkerSalary(
    in p_Worker_Id int,
    out p_Salary int
)
begin
    select Salary into p_Salary from Worker where Worker_Id = p_Worker_Id;
end $$
Delimiter ;




-- To update worker department
Delimiter $$
create procedure UpdateWorkerDepartment(
    in p_Worker_Id int,
    in p_Department char(25)
)
begin
  update Worker
    set Department = p_Department
    where Worker_Id = p_Worker_Id;
    end $$
Delimiter ;



-- To get worker count by Department
delimiter $$
create procedure GetWorkerCountByDepartment(
    in p_Department char(25),
    out p_workerCount int
)
begin
   select COUNT(*) into p_workerCount 
   from Worker 
    where Department = p_Department;
end $$
delimiter ;


-- To get average salary by Department
delimiter $$
create procedure GetAverageSalaryByDepartment(
    in p_Department char(25),
    out p_avgSalary decimal(10,2)
)
begin
    select avg(Salary) into p_avgSalary 
    from Worker 
    where Department = p_Department;
end $$
delimiter ;

