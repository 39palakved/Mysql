create table clients1(
c_id varchar(9) not null,
c_name varchar(30),
address varchar(50),
city varchar(50),
pin int,
state varchar(20),
bal_due float,
primary key(c_id)
);
insert into clients1 values('cn01001','alak roy','b.d.para','amarpur',799101,'tripura',390.9);

insert into clients1 values('cn01002','suman roy','puk para','agartala','799102','tripura',2390.9);
insert into clients1 values('cn01003','moytree nayak','pachmile','tezpur','799152','assam',9990.9);

insert into clients1 values('cn01004','priya das','chora para','kamal para','799301','tripura',1390.9);
insert into clients1 values('cn01005','mita mia','kamal para','singur','799721','tripura',190.9);
insert into clients1 values('cn01006','pulak roy','bircity','sonitpur','799141','assam',110.9);
insert into clients1 values('cn01007','munni das','nappam','sonitpur','799152','assam',190.9);
insert into clients1 values('cn01008','kusum roy','city_dos','tezpur','799141','assam',110.9);
insert into clients1 values('cn01009','mina das','pachmile','tezpur','799152','assam',190.9);
insert into clients1 values('cn01010','pauri mia','pachmile','tezpur','799152','assam',2990.9);
insert into clients1 values('cn01011','manali das','satmile','tezpur','799154','assam',3990.9);
select * from clients1;