create table employee(
e_id int,
last_name varchar(50),
first_name varchar(50),
middle_name varchar(50),
job_id int,
manager_id int,
_date date,
salary int,
cosm int null,
d_id int,

primary key(e_id),
FOREIGN KEY(job_id)
REFERENCES job(job_id),
foreign key(d_id)
references department_table(d_id)

);
insert into employee values
('7369','SMITH','JOHN','Q','667','7902','17-DEC-84','800','1200','20')
,('7499','ALLEN','KEWIN','J','670','7698','17-FEB-85','1600','300','30'),
('7505','DOYLE','JEAN','K','671','7839','17-APR-85','2850',500,'30'),
('7506','DENNIS','LYNN','S','671','7839','17-MAY-85','2750',600,'30'),
('7507','BAKER','LESLIE','D','671','7839','17-JUN-85','2200',900,'40'),
('7522','WARK','CYNTHIA','D','670','7698','17-FEB-85','1250',1000,'30');
SELECT * FROM EMPLOYEE;