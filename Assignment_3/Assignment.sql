 -- Q1) Use the following functions 
-- 1. chr (n):
select chr(86) from dual;

-- 2. cancat(char1,char2):
select concat('Kiran','preet') from dual;

-- 3. instr(string,char):
select instr('Kiran','a') from dual;

-- 4. length(n):
select length('kiran') from dual;

-- 5. lpad(char1 ,n [,char2]):
select lpad('kiran', 10, '$') from dual;

-- 6. ltrim(string [,char(s)]):
select ltrim('kiran', 'k') from dual;

-- 7. rpad(char1 ,n [,char2]):
select rpad('kiran', 10, '$')from dual;

-- 8. rtrim(string [,char(s)]):
select rtrim('kiran', 'n') from dual;

-- 9. replace(char ,search_string , replacement_string):
select replace('kiransekhon', 'kiran', 'arzoo' ) from dual;

-- 10. substr(string ,position ,substring length):
select substr('kiranpreet',3, 5) from dual;

-- 11. initcap(char):
select initcap('kiran') from dual;

-- 12. lower(string):
select lower('KIRAN') from dual;

-- 13. upper(string):
select upper('kiran') from dual;

-- 14. translate(char ,from string ,to string):
select translate('arzoe','zoe','oma') from dual;

-- 15. abs(n):
select abs(-5) from dual;

-- 16. ceil(n):
select ceil(23.60) from dual;

-- 17. cos(n):
select cos(45) from dual;

-- 18. exp(n):
select exp(2) from dual;

-- 19. floor(n):
select floor(23.60) from dual;

-- 20. mod(m ,n):
select mod(20, 3) from dual;

-- 21. power(x ,y):
select power(2, 2) from dual;

-- 22. round(x [,y]):
select round(235.2673, 2) from dual;

-- 23. sign(n):
select sign(-34.67) from dual;
/* If number > 0, it returns 1
If number = 0, it returns 0
If number < 0, it returns -1 */

-- 24. sqrt(n);
select sqrt(16) from dual;

-- 25. trunc(x ,n):
select trunc(123.4659, 3) from dual;

-- 26. sysdate:
select sysdate from dual;

-- 27. add_months(d ,n):
select add_months('04-FEB-2024', 2) from dual;

-- 28. last_day():
select last_day('04-FEB-2024') from dual;

-- 29. months_between(date1 ,date2):
select months_between('04-DEC-2024', '04-FEB-2024') from dual;

-- 30. next_day(date ,char):
select next_day('04-FEB-2024', 5) from dual;

-- 31. greatest(expr):
select greatest(3,6,9,4,0,8) from dual;

-- 32. least(expr):
select least(5,5,78,-5,08,43) from dual;

-- Q2) Display current time in hour : min : sec format
select TO_CHAR(CURRENT_TIMESTAMP,'HH:MM:SS') from dual;

-- Q3) Display salary + commission of emp table
-- Creating the employee's table
CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_salary FLOAT,
    emp_commission FLOAT,
    hiredate DATE
);

Inserting dummy data
INSERT INTO employees VALUES(1, 'Ratn', 50000.00, 2000.00, TO_DATE('1985-01-15', 'YYYY-MM-DD'));
INSERT INTO employees VALUES(2, 'Kiran', 60000.00, 2500.00, TO_DATE('2022-01-20', 'YYYY-MM-DD'));
INSERT INTO employees VALUES(3, 'Yash', 70000.00, 3000.00, TO_DATE('2022-03-10', 'YYYY-MM-DD'));

select * from employees;
select emp_salary + emp_commission from employees;

-- Q4) Store any date value in hiredate column of table ?
insert into employees values(4,'Ravi',500,12,TO_DATE('1982-12-23','YYYY-MM_DD'));
select * from employees;

-- Q5) Display name of employee(s) who join the company in 1985 ?
select emp_name from employees where TO_CHAR(hiredate,'YYYY') = 1985;

-- Q6) Display name of the employee(s) who join the company this year ?
select emp_name from employees where TO_CHAR(hiredate,'YYYY') = TO_CHAR(CURRENT_TIMESTAMP, 'YYYY');
