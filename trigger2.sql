delimiter $$
create trigger price_history
after update 
on product
for each row 
begin 
insert  into price_history
values(new.sell_price);
end $$
update product 
set sell_price =786.2
where p_id = 'p005';

