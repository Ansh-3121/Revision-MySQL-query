create database company_db;
use company_db;
create table employee(employee_id int ,name varchar(20),department varchar(20),city varchar(20),salary decimal(10,2),age int,joining_date date
, Experience int ,Gender varchar(20),manager_id int,Email varchar(50),performance_score int,bonus decimal(10,2));
insert into employee
(employee_id, name, department, city, salary, age, joining_date, experience, gender, manager_id, email, performance_score, bonus)
VALUES
(101, 'Rahul', 'IT', 'Mumbai', 55000, 24, '2023-06-15', 2, 'Male', 105, 'rahul@gmail.com', 8, 5000),
(102, 'Priya', 'HR', 'Pune', 48000, 26, '2022-04-10', 3, 'Female', 106, 'priya@gmail.com', 9, 6000),
(103, 'Amit', 'IT', 'Mumbai', 72000, 29, '2020-01-20', 5, 'Male', 105, 'amit@gmail.com', 9, 8000),
(104, 'Sneha', 'Finance', 'Delhi', 65000, 31, '2019-08-12', 6, 'Female', 107, 'sneha@gmail.com', 7, 7000),
(105, 'Vikas', 'IT', 'Pune', 90000, 35, '2017-03-25', 9, 'Male', NULL, 'vikas@gmail.com', 10, 12000),
(106, 'Neha', 'HR', 'Mumbai', 75000, 33, '2018-11-05', 8, 'Female', NULL, 'neha@gmail.com', 9, 10000),
(107, 'Rohit', 'Finance', 'Delhi', 85000, 38, '2016-07-18', 10, 'Male', NULL, 'rohit@gmail.com', 8, 11000),
(108, 'Pooja', 'Marketing', 'Mumbai', 45000, 23, '2024-02-14', 1, 'Female', 109, 'pooja@gmail.com', 7, 4000),
(109, 'Karan', 'Marketing', 'Pune', 68000, 30, '2021-09-22', 4, 'Male', NULL, 'karan@gmail.com', 9, 7500),
(110, 'Anjali', 'Sales', 'Mumbai', 52000, 27, '2023-01-11', 2, 'Female', 111, 'anjali@gmail.com', 8, 5500),
(111, 'Suresh', 'Sales', 'Delhi', 82000, 40, '2015-05-30', 11, 'Male', NULL, 'suresh@gmail.com', 10, 15000),
(112, 'Riya', 'IT', 'Mumbai', 60000, 25, '2022-12-01', 3, 'Female', 105, 'riya@gmail.com', 6, 4500);
select *from employee;

-- Q1
select name,department,salary from employee;
-- Q2
select name , department from employee where department='IT';
-- Q4
select name , salary from employee where salary>60000;
-- Q5 
select name from employee where department='IT' and salary>60000;
-- Q6
select distinct department from employee ;
-- Q7
select name , salary from employee order by  salary desc;
-- Q8 
select name , salary from employee order by  salary desc limit 3;
-- Q9
select name, city,salary from employee  where city='Mumbai' order by salary desc;
-- Q10
select name ,city,salary from employee where city  in('Mumbai','Pune');
-- Q11
select name ,salary from employee where salary between 50000 and 80000;
-- Q12
select name , department from employee where department in ('IT','Finance');
-- Q13
select name ,age,salary from employee where age>30 and salary>70000;
-- Q14
select name ,city,gender from employee where Gender='Female' and city='Mumbai';
-- Q15
select name,salary from employee where salary<=60000;
-- Q16
select name ,joining_date from employee order by joining_date desc;
-- Q17
select name ,age from employee order by age asc limit 5;
-- Q18
select name,department from employee where name like'A%';
-- Q19
select name ,department,city,salary from employee where department in( 'IT','HR' ) and salary>50000 and city='Mumbai';
-- Q20
select name ,department from employee where department != 'IT';
-- Q21
select name ,salary from employee where salary not between 50000 And 80000;
-- Q22
select name ,department from employee where department not in('IT' , 'HR');
-- Q23
select  name ,gender from employee where name like '%a';
-- Q24
select name from employee where name like '%i%';
-- Q25
select name ,manager_id from employee where manager_id is null;
-- Q26
select name , manager_id from employee where manager_id is not null;
-- Q27
select name ,salary, salary + 5000 'Salary'  from employee ; 
-- Q28
select name ,salary , bonus , salary + bonus 'Total_Income' from employee;
-- Q29
select name ,department,age,salary from employee where department in('IT','Finance') and salary>60000 and age<35;
-- Q30
select count(name) 'Total_Employee' from employee;
-- Q31
select sum(salary) 'Total_salary'from employee;
-- Q32
select avg(salary)  'Average_salary'from employee;
-- Q33
select min(salary) 'Minimum_salary' from employee;
-- Q34
select max(salary) 'Maximum_Salary' from employee;
-- Q35
select department, count(*)  from employee where department = 'IT' group by department ;
-- Q36
select department,sum(salary) from employee  where  department ='IT' group by department;
-- Q37
select avg(salary)  from employee where city='Mumbai' ;
-- Q38
select max(salary) from employee where gender ='Female';
-- Q39
select  min(salary) from employee where city = 'Pune'  ;

-- Day 2 !5 agust 2026
-- Q40
select department, sum(salary) 'total_salary' from employee group by department;
-- Q41
select department,avg(salary) 'average_salary'from employee group by department;
-- Q42
select department from employee group by department having avg(salary)>60000;
-- Q43
select city ,count(*) 'employee_count' from employee group by city;
-- Q44
select city ,max(salary) 'Salary' from employee group by city;
-- Q45
select department,avg(salary) from employee where department='IT' group by department having avg(salary)>60000;
-- Q46
select department ,min(salary),max(salary) from employee group by department;
-- Q47
select department,sum(salary) 'total_salary' from employee  group by department order by 'tatal_salary' desc limit 1;
-- Q48
select city, count(*) from employee group by city having count(*)>3;
-- Q49
select department,count(*),avg(salary) from employee group by department having count(*)>2 and avg(salary)>60000;
-- Q50
select name,salary,
case
when salary>=80000 then 'high'
when salary>=60000 then 'Medium'
else 'low'
end 'salary_category'
from employee ;
-- Q51
select name ,age ,
case
 when age>=35 then 'Senior'
 when age>=25 then 'Mid'
else 'Junior'
end 'Employee_level' 
from employee;
-- Q52
select group_concat(name),
case 
when salary>=80000 then 'high'
when salary>=60000 then 'Medium'
else 'low'
end 'Categorie',count(*)
from employee
 group by case
 when salary>=80000 then 'high'
 when salary>=60000 then 'Medium'
 else 'low'
 end ;

-- Day 3 16 Agust 2026
-- Q53
select name,salary, 
case 
when salary>=80000 then 'High'
when salary>=60000 then 'Medium'
else 'low'
end 'salary_level'
from employee;
-- Q54
select name ,age ,
case
when age>=35 then 'Senior'
when age>=25 then 'mid'
else 'junior'
end 'salary_level'
from employee;
-- Q55
select name,salary,
case 
when salary >=80000 then 10000 
when salary>=60000 then 50000
else 2000
end 'Bonus'
from employee;
-- Q56
select name ,gender,
case 
when gender= 'Male' then 'M'
when gender='Female' then 'F'
else 'other'
end 'Gender_Lablel'
from employee;
-- Q57
select name,salary,
case 
when salary>=70000 then 'Above Target'
else 'Below Target'
end 'Salary_status'
from employee;

-- Q58
select name , age ,
case 
when department = 'IT' then 'Technical'
when department ='Finance' then 'Intermediate'
when department = 'HR' then 'Non-Technical'
else 'other'
end 'Department_type'
from employee;
-- Q59
select name , age ,
case
when age>=35 then 'Experienced'
when age>=28 then 'Intermediate'
else 'fresher'
end 'Experience level'
from employee;
-- Q60
select count(*) 'Employee_count',
case 
when salary>=80000 then 'High'
when salary>=60000 then 'Medium'
else 'low'
end 'Category'
from employee group by category;
-- Q61
select name,upper(name) from employee;
-- Q62
select name ,lower(name) from employee;
-- Q63
select name,length(name) 'Nmae_length' from employee;
-- Q64
select name , left(name,1) from employee;
-- Q65
select name ,right(name,2) from employee;
-- Q66
select name , concat(name ," - ", department) from employee;
-- Q67
select name ,Email, substring_index(Email,'@',1) 'Username' from employee;
-- Q68
select name, concat(upper(name)," " ,'( ',Department,' )') from employee;
-- Q69
select name,length(name) from employee where length(name)>5 ;
-- Q70 
select name,email, substring_index(Email,'@',-1) from employee;

-- Day 4
-- Q71
select name , year(Joining_date) from employee ;
-- Q72
select name , month(Joining_date) from employee ;
-- Q73
select name , monthname(Joining_date) from employee ;
-- Q74
select name , year(Joining_date) from employee where  year(joining_date)=2023;
-- Q75
select name ,monthname(joining_date) from employee where monthname(joining_date) = 'January';
-- Q76
select name, timestampdiff(year,joining_date,curdate()) from employee;
-- Q77
select name, timestampdiff(month,joining_date,curdate()) from employee;
-- Q78
select name,date(joining_date),year(joining_date),monthname(joining_date) from employee;
-- Q79
select name , year(joining_date) from employee  where  year(joining_date) in (2022,2023);
-- Q80
 select year(joining_date),count(joining_date) from employee group by year(joining_date);
 -- Q81
 select concat(name,' joined on ', joining_date)  from employee;
 -- Q82
 select name,datediff(current_date(),joining_date) from employee;
 -- Q83
 select name ,timestampdiff(year,joining_date,current_date()) from employee where timestampdiff(year,joining_date,current_date())>=5;
 -- Q84
 select name ,joining_date,timestampdiff(year,joining_date,current_date()) 'Experience_year' from employee order by Experience_year desc ;
 -- Q85
 select department,round(avg(salary),2) from employee group by department;
 -- Q86
 select concat(name ,' → ₹',salary) from employee;
 -- Q87
 select name,email, substring_index(email, '@',1),substring_index(email, '@',-1) from employee;
 -- Q88
 select department ,count(*),sum(salary),avg(salary) from employee group by department;
 -- Q89
 select city ,count(*) from employee group by city order by count(*) desc;
 -- Q90
 select department ,max(salary) from employee group by department having max(salary)>80000;

-- Day 5
 CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(30),
    location VARCHAR(30)
);

INSERT INTO departments
(department_id, department_name, location)
VALUES
(1, 'IT', 'Mumbai'),
(2, 'HR', 'Pune'),
(3, 'Finance', 'Delhi'),
(4, 'Marketing', 'Mumbai'),
(5, 'Sales', 'Delhi');

-- Q91

select name,e.department ,location from employee  e inner join departments d on e.department=d.department_name;
-- Q92
select name,department ,location from employee  e inner join departments d on e.department=d.department_name where e.department ='IT';
-- Q93
select e.name,salary,location from employee e inner join departments d on e.department=d.department_name;
-- Q94
select e.name,department,location from employee e inner join departments d on e.department=d.department_name where location ='Mumbai';
-- Q95
 select e.name,salary,location from employee e inner join departments d on e.department=d.department_name where department ='Finance';
 -- Q96
 select e.department,location,count(*) from employee e inner join departments d on e.department=d.department_name group by e.department,location ;
 -- Q97
 select  department ,location,sum(salary) from employee e inner join departments d on e.department=d.department_name
 group by department,location;
 -- Q98
 select e.department,sum(salary) from employee e inner join departments d on e.department=d.department_name 
 group by department having sum(salary)>200000;
 
 -- Q99
 select e.name,salary,department,location from employee e inner join departments d on e.department=d.department_name order by salary desc;
 -- Q100
 select location ,count(*),avg(salary) from employee e inner join departments d on e.department=d.department_name group by location;

-- Day 6
 -- Q101
 select e.name,department,location from employee e inner join departments d on  e.department=d.department_name;
-- Q102
select e.name ,salary,location from employee e left join departments d on e.department=d.department_name;
-- Q103
select d.department_name,location from departments d right join employee e on d.department_name=e.department group by d.department_name,location;
-- Q104
select e.name,salary,location from employee e inner join departments d on e.department=d.department_name where department='Finance';
-- Q105
select department_name,count(*) from employee e left join departments d on e.department=d.department_name group by department;
-- Q106
select department, count(*) from employee e inner join departments d on e.department=d.department_name group by department;
-- Q107
select department,sum(salary) from employee e left join departments d
 on e.department=d.department_name group by department having sum(salary)>200000;
 -- Q108
 select department ,location ,count(*) from employee e right join departments d on e.department=d.department_name group by department ,location;
 -- Q109
 select e.name, salary ,location from employee e inner join departments d on e.department=d.department_name order by salary desc;
 -- Q110 
 select name ,salary from employee where salary>(select  avg(salary) from employee);
 

 
 
