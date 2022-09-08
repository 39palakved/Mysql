create table sales_detail(
sales_order_no  varchar(40),
sales_order_date varchar(40),
c_id varchar(40),
s_id varchar(40),
bill_payby_party varchar(30),
delivery_date varchar(40),
p_rate float,
tot_quantty_order int,
cancel_date varchar(40),
primary key(sales_order_no),
foreign key (c_id)
references clients1(c_id),
foreign key (s_id)
references salesman(s_id)

);
insert into sales_detail values('on01001','2008-08-01','cn01001','s001','yes','2008-08-20',2220.4,50,'0000-00-00');
insert into sales_detail values('on01002','2008-08-12','cn01004','s001','yes','2008-08-23',2220.4,15,'0000-00-00');
insert into sales_detail values('on01003','2008-08-12','cn01005','s003','yes','2008-08-26',2220.4,10,'0000-00-00');
insert into sales_detail values('on01004','2008-08-13','cn01004','s001','yes','2008-08-20',2220.4,15,'0000-00-00');
insert into sales_detail values('on01005','2008-08-14','cn01002','s002','no','2008-08-30',2220.4,52,'2008-08-28');
insert into sales_detail values('on01006','2008-08-15','cn01001','s001','yes','2008-08-31',2220.4,53,'0000-00-00');
insert into sales_detail values('on01007','2008-01-16','cn01003','s004','yes','2008-08-28',2220.4,54,'0000-00-00');
insert into sales_detail values('on01008','2008-02-01','cn01004','s003','no','2008-08-28',8220.4,54,'2008-03-18');
select * from sales_detail
