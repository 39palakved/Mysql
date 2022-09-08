create table department_table(
d_id int not null,
d_name  varchar(50),
loc_id int,
primary key(d_id),
FOREIGN KEY(loc_id)
REFERENCES location(loc_id)

);
insert into department_table values('10','ACCOUNTINO','122'),
('20','RESEARCH','124'),('30','SALES','124'),('40','OPERATIONS','167');

select * from department_table;