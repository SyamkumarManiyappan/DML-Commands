#Creating the data Base
create database Management;
use Management;

#Table creation
create table Managers (Manager_id int auto_increment primary key ,First_Name varchar(15) not null,
Last_Name varchar(15),DOB date not null , Age Int , Gender char(1) Check (Gender in('M','F','O')),Department varchar(15) Not null,
Department_Salary decimal (10,2) not null ) ;


#1. Insert 10 rows

insert into	 Managers (Manager_id,First_Name,Last_Name,DOB,Age ,Gender,Department, Department_Salary) Values
(01,'Sooraj','Chandran','1985-10-08', 39,'M','HR',25000),
(02,'Don','Bose','1989-10-08', 43,'M','IT',25000),
(03,'Ambili','Don','1985-8-09', 39,'F','Projects',35000),
(04,'Shalu','Kumar','1984-10-08', 40,'F','Operations',38000),
(05,'Sam','Krishnan','1997-10-08', 27,'M','IT',24000),
(06,'Arjun','Binu','1991-10-08', 33,'M','IT',30000),
(07,'Vimal','Thomas','1985-10-08', 39,'M','HR',32000),
(08,'Aaliya','Anil','1985-10-08', 39,'F','IT',27000),
(09,'Susan','Mathews','1985-10-08', 39,'M','Projects',25000),
(10,'Bindu','S','1985-10-08', 39,'M','Operations',25000),
(11,'Sharon','Suresh','1985-10-08', 39,'M','HR',25000);

-- Write a query that retrieves the name and date of birth of the manager with Manager_Id 1

Select First_Name, DOB From Managers Where Manager_Id = 1;

--  3. Write a query to display the annual income of all managers.

Select Manager_Id, First_Name, (Department_Salary * 12) AS Annual_Income From Managers;

# 4. Write a query to display records of all managers except ‘Aaliya’.

Select * from Managers where First_Name not like "Aaliya";



## 5. Write a query to display details of managers whose department is IT and earns more than 25000 per month.


Select * from Managers where Department = 'IT' and Department_Salary >2500 ;

-- Write a query to display details of managers whose salary is between 10000 and 35000
select * from Managers where Department_Salary between 10000 and 35000;

