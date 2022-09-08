select c_name,city from clients1;
select p_name from product;
select c_name from clients1 
where c_name like ('_a%');
select c_name from clients1
where city='TEZPUR';
select p_name from product
where sell_price>2000 and sell_price<=5000;
alter table product
add  new_prices  int null ;
select * from product;
select p_rate as new_p_rate 
from sales_detail;
select * from product 
order by p_desp
asc;
select sales_order_no , sales_order_date
from sales_detail 
where sales_order_date is not null;
/* sp1;
delete  from sales_detail
where delivery_date <'25-08-2008';*/
update sales_detail
set  delivery_date = '1708-08'
where sales_order_no = 'on0100';
select * from sales_detail;
savepoint sp1;
update clients1
set bal_due = 1203
where c_id = 'cn01004';
select * from clients1;
select p_name from product 
where p_desp in ('HDD1034', 'DVDRW');
select c_name ,city,state from clients1
where state not in ('ASSAM');

/*palak ved*/