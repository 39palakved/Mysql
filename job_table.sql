create table job(
job_id int,
Functions varchar(50),
primary key(job_id),
foreign key (loc_id)
references department(loc_id )
);
insert into job values('667','CLERK');
insert into job values('668','STAFF');
insert into job values('669','ANALYST');
insert into job values('670','SALESPERSON');
insert into job values('671','MANAGER');
insert into job values('672','PRESIDENT');
SELECT * FROM JOB;