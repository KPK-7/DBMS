/*
-- Write queries to:
-- 1. Display the system date
select sysdate from dual;

-- 2. Display current day
select current_date from dual;

-- 3. Display current month and spell out year
select to_char(sysdate,'month') as current_month from dual;
select to_char(sysdate,'year') as spell_out_year from dual;

-- 4. Display spell out current date
select current_date as spell_out_current_date from dual;

-- 5. Check whether it is AM or PM right now
SELECT TO_CHAR(SYSDATE,'PM') AS CURR_TIME_INDICATOR FROM DUAL;

-- 6. Display the date of next Friday
select next_day (add_months (to_date('24-FEB-09', 'DD-MON-YY'), 6), 'FRI') from dual;

-- 7. Round the system date on month
select round(sysdate,'month') as rounded_date from dual;

-- 8. Truncate the system date on month
select trunc(sysdate,'month') as truncate_date from dual;

-- 9. Round the system date on year
select round(sysdate,'year') as rounded_date from dual;

-- 10. Truncate the system date on year
select trunc(sysdate,'year') as truncated_year from dual;

-- 11. Find the day after three days
select to_char(sysdate+3,'day') as days_after_3_days from dual;

-- Queries Based on EMP table
-- 12. Create an EMP table (Empno number, Name Varchar2(20), date_of_joining date)

create table Emp(
    Empno number,
    Name Varchar2(50),
    Date_of_joining date
);
-- Inserting dummy data for the following questions given below:
insert into Emp (Empno, Name, Date_of_Joining) values (1, 'John Doe', TO_DATE('2023-01-15', 'YYYY-MM-DD'));
insert into Emp (Empno, Name, Date_of_Joining) values (2, 'Jane Smith', TO_DATE('2023-02-20', 'YYYY-MM-DD'));
insert into Emp (Empno, Name, Date_of_Joining) values (3, 'Alice Johnson', TO_DATE('2023-03-05', 'YYYY-MM-DD'));
insert into Emp (Empno, Name, Date_of_Joining) values (4, 'Bob Williams', TO_DATE('2023-04-10', 'YYYY-MM-DD'));
insert into Emp (Empno, Name, Date_of_Joining) values (5, 'Charlie Brown', TO_DATE('2023-05-25', 'YYYY-MM-DD'));

select * from Emp;

-- 13. Display day of date of joining column
SELECT Empno,Name, EXTRACT(DAY FROM Date_of_joining) AS Day_of_joining FROM EMP;

-- 14. Display those employees who join the company on Monday
-- select Empno, Name, Date_of_joining from Emp where to_char(Date_of_joining) = 'monday';

-- 15. Display those employees who join the company this month
-- select Empno, Name, Date_of_joining from Emp where to_char(Date_of_joining,'month')=to_char(sysdate,'month');

-- 16. Display those employees who join the company in last 30 days
SELECT * FROM EMP WHERE Date_of_joining >= SYSDATE-30;

-- Queries based on Train Arrival and Departure
-- 17. Create a table Train having four columns (TrainNo Number (6) primary key, date of departure, time of departure, time of arrival)
create table Train(
    TrainNo number(6) PRIMARY KEY,
    Date_of_Departure date,
    Time_of_Departure timestamp,
    Time_of_Arrival timestamp
);

-- 18.) Insert five records into the table Train.
INSERT INTO Train VALUES (101, TO_DATE('2023-03-15', 'YYYY-MM-DD'), TO_TIMESTAMP('08:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('12:00:00', 'HH24:MI:SS'));
INSERT INTO Train VALUES (102, TO_DATE('2023-03-16', 'YYYY-MM-DD'), TO_TIMESTAMP('10:30:00', 'HH24:MI:SS'), TO_TIMESTAMP('14:45:00', 'HH24:MI:SS'));
INSERT INTO Train VALUES (103, TO_DATE('2023-03-17', 'YYYY-MM-DD'), TO_TIMESTAMP('14:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('18:30:00', 'HH24:MI:SS'));
INSERT INTO Train VALUES (104, TO_DATE('2023-03-18', 'YYYY-MM-DD'), TO_TIMESTAMP('16:45:00', 'HH24:MI:SS'), TO_TIMESTAMP('21:15:00', 'HH24:MI:SS'));
INSERT INTO Train VALUES (105, TO_DATE('2023-03-19', 'YYYY-MM-DD'), TO_TIMESTAMP('20:15:00', 'HH24:MI:SS'), TO_TIMESTAMP('01:30:00', 'HH24:MI:SS'));

-- 19. Display all the three records
-- SELECT * FROM Train;
SELECT * FROM Train;

-- 20. Display the time values inserted in the columns
SELECT TO_CHAR(Time_of_Departure,'HH:MI:SS') FROM Train;
SELECT TO_CHAR(Time_of_Arrival,'HH:MI:SS') FROM Train;

-- 21. Display those trains which arrived on PM
SELECT TrainNo, TO_CHAR(Time_of_Arrival, 'PM') from Train;
*/
-- 22. Display train number who are going to depart in next one hour.
SELECT TO_CHAR(CURRENT_TIMESTAMP ) FROM dual;
SELECT TO_CHAR(CURRENT_TIMESTAMP + INTERVAL '1' HOUR) FROM dual;
-- SELECT * FROM Products WHERE Price BETWEEN 10 AND 20;
-- INSERT INTO Train VALUES (106, TO_DATE('2024-02-09', 'YYYY-MM-DD'), TO_TIMESTAMP('15:45:00', 'HH24:MI:SS'), TO_TIMESTAMP('16:30:00', 'HH24:MI:SS'));
SELECT Time_of_Departure FROM Train WHERE TrainNo=106; 
SELECT TrainNo FROM Train WHERE Time_of_Departure BETWEEN CURRENT_TIMESTAMP AND CURRENT_TIMESTAMP + INTERVAL '1' HOUR;

