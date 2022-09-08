delimiter $$
create trigger price_history
before update 
on product
for each row
begin
insert into price_history
values( old.sell_price);
end$$
update product
set sell_price = 11.444
where  p_id = 'p003';


