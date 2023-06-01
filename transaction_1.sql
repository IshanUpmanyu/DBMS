show variables like 'transaction_isolation';


select * from sql_inventory.products;
start transaction;

update sql_inventory.products
set quantity_in_stock = 20
where product_id = 1;

commit;
