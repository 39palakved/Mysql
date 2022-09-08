create table student_table(
s_id int,
s_name varchar(50),
s_age int,
city varchar(40),
primary key (s_id)
);
insert into student_table values('1', 'alvira','20','agra');
insert into student_table values('2', 'priya','18','mandsaur');
insert into student_table values('3', 'riya','17','indore');


select * from student_table;