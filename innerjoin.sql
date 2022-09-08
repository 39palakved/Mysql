select department_table.loc_id, d_name, location.regional_group
from department_table 
inner join location on
department_table.loc_id = location.loc_id;
select employee.job_id,first_name,last_name,middle_name,job.Functions
from employee
inner join job on
job.job_id = employee.job_id;
select employee.job_id,first_name,last_name,middle_name,manager_id,_date, salary , job.Functions
from employee
left outer join job on
employee.job_id = job.job_id;

