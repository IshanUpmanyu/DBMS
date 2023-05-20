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

