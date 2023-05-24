-- the queries we do in class, will be available here

select distinct last_name from sql_store.customers;

-- Distinct works on the combination of columns. The whole combination must be unique.
select distinct first_name, last_name from sql_store.customers;
