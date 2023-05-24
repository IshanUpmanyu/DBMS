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

-- Get all records with state KA

select *
from sql_store.customers
where state = 'KA';

-- Get records where state contains an A
select * 
from sql_store.customers
where state like '%A%';

-- Records are by default ordered by PK. 

-- descending order of customer_id

select * 
from sql_store.customers
order by customer_id desc;

-- Specify order for each column seperately. If you don't
-- specity it will take ASC order for that column.
select * 
from sql_store.customers
order by last_name desc;


-- to reduce the number of results use limit

select * 
from sql_store.customers
limit 100;