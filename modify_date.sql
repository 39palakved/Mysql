alter table employee
modify _date date;
update employee 
set _date = '1985-12-17'
where  e_id = 7369;
update employee 
set _date = '1985-02-20'
where  e_id = 7499;
update employee 
set _date = '1985-04-04'
where  e_id = 7505;
update employee 
set _date = '1985-05-15'
where  e_id = 7506;
update employee 
set _date = '1985-06-10'
where  e_id = 7507;
update employee 
set _date = '1985-02-22'
where  e_id = 7522;
update employee 
set salary  = 800
where  e_id = 7369;