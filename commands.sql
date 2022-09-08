

select * from schema1.person;
delete from schema1.person
where p_id = 1;
update schema1.person
set first_name = 'palak'
where p_id = '20';
select max(s_age)
from schema1.student_table;
select job_id,functions from schema2.job
order by  job_id, functions desc;
select Functions 
from schema2.job
where job_id between 667 and 670;
select * from schema2.job
limit 3;
select functions from schema2.job
where functions like '%si%';
select functions from schema2.job
where functions like 'c%';
select functions from schema2.job
where functions like '_a%';
select functions from schema2.job
where functions like 'c%k';
select functions from schema2.job
where job_id in ('667','668','669','670');
select distinct e_age 
from schema1.employee_table;
select count(job_id)
from schema2.job;
select functions as func 
from schema2.job;



