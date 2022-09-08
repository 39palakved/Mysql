alter table  schema2.job
add foreign key( d_id)
references schema2.department(d_id );