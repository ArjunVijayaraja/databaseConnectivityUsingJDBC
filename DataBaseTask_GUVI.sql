create database employees;
use employees;
show tables;
create table empl(
empno int not null,
ename varchar(255) not null,
job varchar(255) not null,
mgr int ,
hireDate date not null,
sal double not null,
comm double,
deptno int not null,
primary key (empno)	
);

delete from empl;

select * from empl;

insert into empl (empno,ename,job,mgr,hireDate,sal,comM,deptno)
values
(839,"SMITH","CLERK",8902,"1990-12-18",800.00,NUll,20),
(8499,"ANYA","SALESMAN",8698,"1991-02-20",1600.00,300.00,30),
(8521,"SETH","SALESMAN",8698,"1991-02-22",1250.00,500.00,30),
(8566,"MAHADEVAN","MANAGER",8839,"1991-04-02",2985.00,null,20),
(8654,"MOMIN","SALESMAN",8698,"1991-09-28",1250.00,1400.00,30),
(8698,"BINA","MANAGER",8839,"1991-05-01",2850.00,null,30),
(8882,"SHIVANSH","MANAGER",8839,"1991-06-09",2450.00,null,10),
(8888,"SCOTT","ANALYST",8566,"1992-12-09",3000.00,null,20),
(8839,"AMIR","PRESIDENT",NULL,"1991-11-18",5000.00,null,10),
(8844,"KULDEEP","SALESMAN",8698,"1991-09-08",1500.00,0.00,30);

-- TASk Questions
-- A. Write a query to display EName and sal of employees  whose salary is greater than or equal to 2000.00
select ename, sal from empl where sal>=2000.00;

-- B. Write a query to display the details of employees who are not getting commission
select * from empl where comm is null;

-- C. Write a query to employee names and salary of those employees who dont have their salary in the range of 2500 to 4000;
select * from empl where sal between 2500 and 4000;

-- D. Write a query to display name, job title and salary of employees whho dont have a manager;
select ename, job, sal from empl where mgr is null;

-- E. Write a query to display the name of the employee whoes name contains "A" as third alphabet;
select ename from empl where ename like ('__A%'); -- No name has A as a third alphabet

-- F. Write a query to display the name of the employee whoes name contains "T" as a last alphabet;
select ename from empl where ename like ('%T'); 


-- Q2
create table employeeDtl(
empcode int not null,
empname varchar(255),
empage int,
esalary double,
primary key (empcode)
);

Select * from employeeDtl;




