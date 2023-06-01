show variables like 'transaction_isolation';

set session transaction isolation level read uncommitted;

start transaction;

select * 
from sql_inventory.products
where product_id = 1;

commit;