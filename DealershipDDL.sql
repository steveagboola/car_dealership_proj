-- DDL (Data Definition Language) Statements

-- Syntax:
-- CREATE TABLE table_name( col_name_1 DATA_TYPE, col_name_2 DATA_TYPE, etc. )
-- table_name -> all lowercase and singular form 

-- Start with tables that have no foreign tables

-- Customer Table
CREATE TABLE IF NOT EXISTS customer (
    customer_id SERIAL PRIMARY KEY,
    name_first VARCHAR,
    name_last VARCHAR
);

SELECT *
FROM customer c;


-- Mechanic Table
CREATE TABLE IF NOT EXISTS mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    name_first VARCHAR,
    name_last VARCHAR
);

SELECT *
FROM mechanic m;


-- Salesperson Table
CREATE TABLE IF NOT EXISTS salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    name_first VARCHAR,
    name_last VARCHAR
);

SELECT *
FROM salesperson s;

-- Since I already have a table for salesperson and customer, i'll do Car table next
-- because it references salesperson and customer.  No need to alter

-- Car Table
CREATE TABLE IF NOT EXISTS car(
	car_id SERIAL PRIMARY KEY NOT NULL,
	serial_number varchar NOT null,
	is_new boolean,
	model varchar NOT null,
	salesperson_id integer NOT NULL,
	FOREIGN KEY (salesperson_id) REFERENCES salesperson (salesperson_id),
	customer_id integer NOT NULL,
	FOREIGN key(customer_id) REFERENCES customer (customer_id)
);

SELECT *
FROM car c;

-- Service History Table
CREATE TABLE IF NOT EXISTS  service_history(
	history_id SERIAL PRIMARY KEY,
	service_date timestamp DEFAULT current_timestamp NOT NULL,
	service_details TEXT,
	car_id integer NOT null,
	FOREIGN KEY (car_id) REFERENCES  car(car_id)
);

SELECT*
FROM service_history sh;


-- Invoice Table
CREATE TABLE IF NOT EXISTS invoice( 
	invoice_id SERIAL PRIMARY KEY NOT NULL,
	sale_date timestamp DEFAULT current_timestamp NOT NULL, 
	-- realize my ERD does not have the relationship line between car and invoice(GO BACK TO FIX)
	car_id integer NOT NULL,
	FOREIGN KEY (car_id) REFERENCES car(car_id),
	salesperson_id integer NOT NULL,
	FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
	customer_id integer NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)	
);

SELECT *
FROM invoice i;


-- Service Ticket Table
CREATE TABLE IF NOT EXISTS service_ticket(
	ticket_id SERIAL PRIMARY KEY NOT NULL,
	ticket_date timestamp DEFAULT current_timestamp NOT NULL,
	service_type varchar,
	customer_id integer NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	car_id integer NOT NULL,
	FOREIGN KEY (car_id) REFERENCES car(car_id)
);

SELECT *
FROM service_ticket st;


CREATE TABLE IF NOT EXISTS mechanic_Car_Join (
    service_id SERIAL PRIMARY KEY NOT null,
    service_date timestamp DEFAULT current_timestamp NOT NULL,
    service_type VARCHAR,
    hours_worked DECIMAL,
    car_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    mechanic_id INTEGER NOT NULL,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
);

SELECT *
FROM mechanic_car_join mcj;

SELECT *
FROM service_ticket st;

