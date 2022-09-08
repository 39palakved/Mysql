create table product(
p_id varchar(5) not null,
p_name varchar(30),
m_name varchar(50),
p_rate float,
sell_price float,
p_desp varchar(20),
primary key(p_id)
);
insert into product values('p001','lux_soap','lux_international',15.67,20.43,'soap');

insert into product values('p002','copy','times_copy_org',14.8,16.4,'copy');
insert into product values('p003','marry_biscuit','marigold_org',2218.8,2220.4,'biscuit');
insert into product values('p004','mitsubisi_pen','pen_international',2015.67,2120.43,'pen');
insert into product values('p005','learn_books','book_world',5104.8,5116.4,'book');
insert into product values('p006','tata_steel','tata_org',5118.8,5120.4,'tata');
insert into product values('p007','seagate hdd','seaget_world',5104.8,5116.4,'HDD1034');
insert into product values('p008','dvd writer','frontec_org',5118.8,5120.4,'DVDRW');
select * from product;