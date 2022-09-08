create table employee_table(
e_id int,
e_name varchar(50),
e_age int,
city varchar(40),
primary key (e_id)
);
insert into employee_table values('21', 'sumesh','30','agra');
insert into employee_table values('22', 'rajesh','31','mandsaur');
insert into employee_table values('23', 'ramesh','32','indore');
insert into employee_table values('24', 'suyesh','33','pune');


select * from employee_table;