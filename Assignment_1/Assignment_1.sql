/* Assignment - 1 */

create table Student (
    RollNo number,
    Name varchar2(50),
    DOB DATE,
    Gender varchar2(10),
    Class varchar2(20),
    College varchar2(10),
    City varchar2(10),
    Marks number
);
insert into Student values (101, 'Joy', '26-JUL-2004', 'male', 'CSE', 'TIET', 'Patiala', 30);
insert into Student values (102, 'Linda', '27-JUL-2004', 'Female', 'COE', 'TIET', 'Patiala', 35);
insert into Student values (103, 'Nomie', '28-Oct-2004', 'male', 'ECE', 'TIET', 'Patiala', 25);
insert into Student values (104, 'John', '30-SEP-2004', 'male', 'CIVIL', 'TIET', 'Patiala', 35);
insert into Student values (105, 'Neha', '20-JUN-2004', 'Female', 'CSE', 'TIET', 'Patiala', 20);

select * from Student order BY Marks asc; /* By default it sets data in ascending order */

DESC[RIBE] Student;

select RollNo, Name, Class from Student where City='Patiala';

update Student set Marks = 89 where RollNo = 105;
update Student set Name = 'Lyna', City = 'Dehradun' where RollNo = 103;
update Student set City = 'Amritsar' where RollNo = 104;

delete from Student where City = 'Amritsar';
delete from Student where Marks < 30;
select * from Student;
