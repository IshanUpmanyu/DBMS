show variables like 'transaction_isolation';

start transaction;

update sql_inventory.products
set quantity_in_stock = 60
where product_id = 1;

commit;
