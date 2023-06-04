-- Queries go here


select * from sql_store.customers;

select * from sql_store.orders;


select avg(points) from sql_store.customers where customer_id = 1;



create view sql_store.customer_orders
as
select c.customer_id, c.first_name, c.last_name, o.order_id, o.status from 
sql_store.customers c
join sql_store.orders o
on c.customer_id = o.customer_id;



select * from
sql_store.customer_orders;


-- Update to view will update the original table

update sql_store.customer_orders
set first_name = 'Areeb'
where customer_id = 6;


-- Will insert and delete work?
-- it depends. 

-- Not work for view with more than 1 table
-- insert and delete might work. 


select * from sql_store.customers;