/* Assignment -1 */

CREATE TABLE Emp (
    EmpNo INT PRIMARY KEY,
    Ename VARCHAR(50),
    Job VARCHAR(30),
    Salary FLOAT,
    Commission FLOAT,
    DeptNo INT
);

INSERT INTO Emp VALUES (1, 'John', 'Manager', 3000, NULL, 10);
INSERT INTO Emp VALUES (2, 'Alice', 'Clerk', 2500, NULL, 20);
INSERT INTO Emp VALUES (3, 'Bob', 'Salesperson', 2800, 300, 10);
INSERT INTO Emp VALUES (4, 'Sara', 'Clerk', 2200, NULL, 20);
INSERT INTO Emp VALUES (5, 'Mike', 'Salesperson', 3200, 500, 30); 

select EmpNo, Ename from Emp where DeptNo = 10; 

select Ename from Emp where Job = 'Clerk' and Salary > 2000;

select Ename, Job from Emp where Job in ('Salesperson', 'Clerk'); 

select * from Emp where Salary >2000 and Salary <3000;

select * from Emp where DeptNo in(10,20,30);

select * from Emp where Commission is NULL;

select DeptNo, Salary from Emp order by DeptNo asc, Salary desc;

select Ename from Emp where Ename like '%a%' or Ename like '%A%';

select Ename from Emp where upper(substr(Ename, 2, 1)) = 'B';

select Ename from Emp where upper(substr(Ename, 1, 1)) = 'A' or upper(substr(Ename, -1, 1)) = 'A';

select max(Salary) as maxSalary, min(Salary) as minSalary, avg(Salary) as avgSalary from Emp where DeptNo = 10;

select count(*) as totalemployee from Emp where DeptNo = 20;

select sum(Salary) as totalSalary from Emp where Job = 'Clerk';

select sysdate as systemdate from dual;

select (12*12)/13 as result from dual;

select * from Emp where lower(Ename) = 'alice';

