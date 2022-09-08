create table location(
loc_id int Not null  ,
regional_group varchar(50),
primary key (loc_id)
);
insert into location  values('122','NEW YORK'),

('124','CHICAGO'), 
('167','BOSTON');
select * from location;
