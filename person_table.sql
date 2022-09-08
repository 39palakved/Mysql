create table person(
p_id int  not null,
first_name varchar(40),
last_name varchar(50),
address varchar(255),
primary key (p_id)
);
insert into person values('20','yash','gupta','patelnagar');

select * from person;


