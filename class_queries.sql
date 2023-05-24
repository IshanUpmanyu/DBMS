-- the queries we do in class, will be available here

select distinct last_name from sql_store.customers;

-- Distinct works on the combination of columns. The whole combination must be unique.
select distinct first_name, last_name from sql_store.customers;


-- Comparison operations

select * from sql_store.customers;

select * from sql_store.customers
where points  > 500;

select * from sql_store.customers
where customer_id != 10;

-- or do

select * from sql_store.customers
where customer_id <> 10;

-- Get customers whose square of points is > 500
select * from sql_store.customers
where points * points > 500;
-- NOte that you can do operations in where clause.


-- Multiple Conditions
select * from sql_store.customers
where customer_id > 10
and points > 100;

-- Break till 8:10 AM.



