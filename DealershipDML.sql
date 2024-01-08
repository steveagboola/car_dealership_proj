SELECT *
FROM service_ticket st;

-- Data Manipulation Language (DML)


-- Adding rows to a table
-- Syntax: INSERT INTO table_name(col_name_1, col_name_2, etc.) VALUES (val_1, val_2, etc.)


-- Insert Multiple rows of data in one command
-- Syntax: 
-- INSERT INTO table_name (col_1, col_2, etc.) VALUES (val_a_1, val_a_2, etc), (val_b_1, val_b_2, etc.)

-- Insert for Customer Table
INSERT INTO customer ( 
	name_first,
	name_last
) VALUES ( 
	'Steve',
	'Allen'
), ( 
	'Ben',
	'Johnson'
), ( 
	'Elaine',
	'Strongs'
);

SELECT *
FROM customer c;


-- Insert for Salesperson Table
INSERT INTO salesperson (
    name_first,
    name_last
) VALUES (
    'Michael',
    'Roberts'
), (
    'Sara',
    'Evans'
), (
    'Alex',
    'Green'
);

SELECT *
FROM salesperson s;


-- Insert for Mechanic Table
INSERT INTO mechanic (
    name_first,
    name_last
) VALUES (
    'Lucas',
    'Martinez'
), (
    'Emily',
    'Taylor'
), (
    'David',
    'Wallace'
);

SELECT *
FROM mechanic m;


-- Insert for Car Table
INSERT INTO Car (
    serial_number,
    is_new,
    model,
    salesperson_id,
    customer_id
) VALUES (
    'SN12345',
    TRUE,
    'Model X',
    1, 
    2   
), (
    'SN12346',
    FALSE,
    'Model Y',
    3,  
    1   
), (
    'SN12347',
    TRUE,
    'Model Z',
    1,  
    3   
);

SELECT *
FROM car c;


--Insert for Service History Table
INSERT INTO service_history (
    service_details,
    car_id
) VALUES (
    'Oil change and tire rotation',
    1   
), (
    'Brake pad replacement',
    2   
), (
    'Engine diagnostic and repair',
    3   
);

SELECT *
FROM service_history sh;


-- Insert for Invoice Table
INSERT INTO invoice ( 
	car_id,
	salesperson_id,
	customer_id
) VALUES ( 
	1,
	3,
	2
), ( 
	2,
	2,
	1
), (
	3,
	1,
	3
);

SELECT *
FROM invoice i;


-- Insert for Mechanic-Car Join Table
INSERT INTO mechanic_car_join ( 
	car_id,
	mechanic_id,
	service_type,
	hours_worked
) VALUES (
    1,   
    1,  
    'Routine Maintenance',
    2.5
), (
    2,   
    2,  
    'Engine Repair',
    4.0
), (
    3,  
    3,   
    'Transmission Check',
    3.0
);

SELECT *
FROM mechanic_car_join mcj;


-- Insert for Service Ticket Table
INSERT INTO service_ticket (
	service_type,
	customer_id,
	car_id
) VALUES (
    'Annual Checkup',
    1,   
    3    
), (
    'Emergency Repair',
    2, 
    1   
), (
    'Oil Change',
    3,   
    2   
);

SELECT *
FROM service_ticket st;




