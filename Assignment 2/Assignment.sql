/* Assignment -1 */
/*
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
*/
