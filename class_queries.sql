select * from sql_store.customers;
-- Count the number of records in customers table

select count(*) 
from sql_store.customers;

-- Find max points a customer has

select max(points)
from sql_store.customers;

-- Break for 6 min. Back at 8:10 AM.

-- How many orders in a particular status

select status, count(*)
from sql_store.orders
group by (status);

select * from sql_invoicing.payments;
-- Find invoices with total payment > 40. But only use the payments table.

select  sum(amount)
from sql_invoicing.payments
group by (invoice_id)
having sum(amount) > 40;
