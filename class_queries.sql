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

