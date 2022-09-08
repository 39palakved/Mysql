/*querry 1 list all the employee detail */  ;                                         
select * from schema2.employee;
/*querry 2 list all the department detail */  ;  
select * from department_table;
/*querry 3 list all the job detail */  ;  
select * from job
/*querry 4 list all the location detail */  ;  
select * from location
/*querry 5 list out first_name, last_name, salary,commission from employee table */  ;  
select first_name , last_name , salary , cosm
from employee;
/*querry 6.1 list out e_id, last_name,d_id from employee */  ;  
select e_id, last_name,d_id 
from employee;
/*querry 6.2 rename employee id as "ID of the employee", last name as "Name of the Employee" */
 select e_id as id_of_the_employee , last_name as Name_of_the_employee
from employee;
/* query 7 list out employee annual salary with their name only*/
select last_name , salary*12 from employee;
/* querry 8 list the details about "smith" */
select * from employee
where last_name = 'SMITH';
/* 9 list out the employees who are working in department 20 */
select * from employee
where d_id = 20;
/* 10 list out the employees who are earning salary between 3000 and 45000*/
select *  from employee
where salary between 3000 and 45000;
/* 11 list out the employees who are working in department 10 or 20 */
select last_name from employee
where d_id in (10,20) ;

/* 12 find out the employees who are not working in department 10 or 30 */
select first_name ,last_name from employee
where d_id  not in (10,30) ;
/*13 list out the employees whose name start with s */
select * from employee
where last_name like 'S%';
/* 14 list out the employees whose name start with S and end with H */
select last_name from employee
where last_name like'S%H';
/* 15 list out the employees whose name start with S and length is 4*/
select * from employee
where last_name like'S___';
/* 16 list out the employees who are working in department 10 and dreaw the salary more than 3500*/
select salary from employee
where salary > 3500;
/*17 list out the employee  who are not receiving commision */
select last_name from employee
where cosm IS NULL;
/* 18 list out the employee id ,last name in ascending order based on employee id */
select e_id , last_name 
from employee
order by e_id
asc;
/*19  list out the employee id, name in descending order based on salary column */
select e_id , last_name
 from employee
order by salary
desc; 
/* 20 list out the employee details according to their last_name in 
assending order and salaries in decending order */
select * from employee
order by last_name 
asc;
select * from employee
order by salary
desc;
/*21 list out the employee detail according to their last_name in asc order 
and then on department_id in desc */
select * from employee
order by last_name 
asc,
d_id  desc;
/*22 how many employees who are working in diffrent department wise 
in the organization*/
select d_id, count(*) from employee
group by d_id;
/* 23 list out the deparment wise max salary,min salary, average salaryof employees*/
select max(salary), min(salary), avg(salary),d_id
from employee 
group by d_id;
/*24 list out the job wise maximum salary,minimum, salary , average salary of the employee*/
select max(salary), min(salary), avg(salary),job_id
from employee 
group by job_id;
/*25 list out the no: of employees joined in every month in accending order  */
 select  count(*),_date 
 from employee
 group by _date
 order by _date
 asc;
/*26 list out  the no. of employee for each month and year, 
in accending order based on year, month*/
select month(_date),year(_date),count(e_id) from employee
group by month(_date),year(_date)
order by month(_date),year(_date)
asc;
/* 27 list out the deartment id having at least four employees*/
select d_id,count(d_id)
from employee
group by d_id
having
count(d_id)>=4;
/*28 how many employee in january month*/
/*select extract(month FROM _date) as month1 , count(e_id)
from employee
group by month1
having 
month1 = 02;*/
select count(*) , monthname(_date) from employee
where monthname(_date) = 'january' 
group by monthname(_date);
/* 29 how many employee who joined in january or september month */
select count(*) , monthname(_date) 
from employee 
where monthname(_date) in ('january','september')
group by monthname(_date);
/*30 how many employee joined in 1985*/
select count(*) , year(_date)
from employee 
where year(_date) = 1985
group by year(_date);
/* how many employee joind in each month in 1985*/
select count(*), monthname(_date), year(_date)
from employee
where year(_date) = 1985
group by year(_date) , monthname(_date);

/* 32 how many employee joined in march 1985 */
select count(*) ,monthname(_date), year(_date)
from employee 
where monthname(_date) = 'march' and year(_date) = 1985
group by monthname(_date), year(_date);
/*33 which d_id having greater or equal to 3 employeejoind in april 1985*/
select count(*) ,monthname(_date), year(_date), d_id
from employee 
where monthname(_date) = 'april' and year(_date) = 1985
group by d_id
having count(*) >=3;
/*34 display the employee who got the maximum salary */
select last_name from employee
where salary= (select max(salary) from employee);
/*35 display the employee who are working in sales department*/
select last_name from employee 
where d_id = (select d_id from department_table 
where d_name = 'SALES');
/*36 display the employee who are working as clerk*/
select last_name from employee
where job_id = (select job_id from job
where Functions = 'CLERK');
/* 37 Display the employee who are wrking in newyork */
select last_name from employee
where d_id = (select d_id from department_table
where loc_id =(select loc_id from  location 
where regional_group = 'NEW YORK'));
/*38  find out number of employee working in sales department */
select count(last_name) from employee 
where d_id = (select d_id from department_table 
where d_name = 'SALES');
/*39 update the employees's salaries who are working as clerk on the basis of 10 % */
update employee
set salary = salary*(1/10)
where job_id = (select job_id from job
where Functions = 'CLERK');
select * from employee;
/*40  delete employee who are working in accounting department*/
delete from employee
where d_id = (select d_id from department_table 
where d_name ='ACCOUNTING');
select * from employee;
/*41 display the second heighest salary  drawing employee details*/
select max(salary)from employee 
where salary < (select max(salary) from employee);
/*42 display the nth hiehest salary drawing employee table*/

/*43 list out the employee who earn more than every employee in department 30*/
select last_name from employee
where salary > all(select salary from employee 
where d_id = 30); 
/*44 list out the employee who earn more than the lowest salary in department 30*/
 select last_name from employee
where salary > any(select min(salary) from employee 
where d_id = 30); 
/*45 find out whose department has not employee */
select d_name from department_table 
where  not exists (select e_id from employee
where d_id in (select d_id from department_table));
/* 46 find out which department does not have any employee */
select d_name ,d_id  from department_table 
where d_id not in (select d_id from employee );

/*joins*/
/*48 list our employees with their department names */
select employee.last_name, department_table.d_name
from employee 
inner join department_table on
employee.d_id = department_table.d_id;
/* 49 display employee with their jobs */
select employee.last_name , job.Functions
from employee
inner join job on 
employee.job_id = job.job_id;
/*50 display employee with their department and reginol group*/
select employee.last_name, department_table.d_name,location.regional_group
from employee 
inner join department_table on
employee.d_id = department_table.d_id
inner join location on
department_table.loc_id = location.loc_id;
/*51 how many employee working in diifrenct department display with department name */
select count(*),last_name,department_table.d_name
from employee
inner join department_table on 
employee.d_id = department_table.d_id;
/*



/* PALAK VED */