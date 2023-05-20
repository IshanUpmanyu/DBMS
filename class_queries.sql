-- the queries we do in class, will be available here

use scaler_class;

create table students (
   id INT PRIMARY KEY,
   name varchar(20),
   grad_year year,
   university varchar(30),
   email varchar(20),
   phone_number varchar(20),
   psp float
);


create table batches (
	id INT PRIMARY KEY,
    name varchar(20)
);

create table student_batches (
	student_id INT,
    batch_id INT,
    start_date date,
    
    PRIMARY KEY(batch_id, student_id),
    CONSTRAINT fk_student_batches_students foreign key (student_id) references students(id),
    CONSTRAINT fk_student_batches_batches foreign key (batch_id) references batches(id)
    
);

-- We created foreingn key, so that in student_batches table we cannot enter student_id or batch_ids that 
-- are not present in the students or batches tables.


-- 5 min break, we will start again at 8:15 AM


-- INSERT QUERY


-- INSERT A CUSTOMER

insert into sql_store.customers
values
(13, 'Ishan', 'Upamanyu', '1992-06-06', '79779798999', 'Pandol Road', 'Baijnath', 'HP', 100);

insert into sql_store.customers(customer_id, first_name, points, last_name, state, city, address, phone, birth_date)
values 
(14, 'Nameera', 300, 'Sadiq', 'KA', 'Bengaluru', 'HSR Layout', '1232131223', '1993-01-01' );



insert into sql_store.customers(first_name, points, last_name, state, city, address, phone, birth_date)
values 
('Abhirup', 350, 'Roy', 'KA', 'Bengaluru', 'HSR Layout', '1232131223', '1991-01-01' );

insert into sql_store.customers(customer_id, first_name, points, last_name, state, city, address, phone, birth_date)
values 
(default, 'Shweta', 400, 'P', 'KA', 'Bengaluru', 'HSR Layout', '1232131223', '1993-01-05' );

-- We don't have to enter all columns. 
insert into sql_store.customers(first_name, last_name, state, city, address, birth_date)
values 
('Nishant', 'Upamanyu', 'KA', 'Bengaluru', 'HSR Layout', '1999-01-05' );


-- UPDATE QUERY

update sql_store.customers
set
phone = '1232344555'
where customer_id = 12;


update sql_store.customers
set
phone = '1232344555',
points = 450
where customer_id = 18;

