create table salesman(
s_id varchar(9) not null,
s_name varchar(30),
address varchar(50),
city varchar(50),
pin int,
state varchar(20),
salary int,
primary key(s_id)
);
insert into salesman values('s001','rohan das','nappam','tezpur',79970,'assam',8000);

insert into salesman values('s002','rohan das','nappam','tezpur','799170','assam',8000);
insert into salesman values('s003','samita das','nirjuli','itanagar','799701','arunachanl',9000);

insert into salesman values('s004','kabir bora','nappam','tezpur','799703','assam',8500);
insert into salesman values('s005','neha singh','borbota','sonitpur','795970','assam',9600);
insert into salesman values('s006','priya agarwal','gandhi road','32 district','799750','delhi',9900),
('s007','ashok paul','filmcity','munnabari','799740','mumbai',8900);

select * from salesman;