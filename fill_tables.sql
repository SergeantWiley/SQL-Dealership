
INSERT INTO salesperson (salesperson_id, first_name, last_name)
VALUES
    (1, 'John', 'Doe'),
    (2, 'Jane', 'Smith'),
    (3, 'Michael', 'Johnson');


INSERT INTO customer (customer_id, first_name, last_name)
VALUES
    (1, 'Alice', 'Jones'),
    (2, 'Bob', 'Brown'),
    (3, 'Emily', 'Davis');


INSERT INTO car (car_id, serial_number, make, model, car_year)
VALUES
    (1, 'ABC123', 'Toyota', 'Camry', '2022'),
    (2, 'DEF456', 'Honda', 'Civic', '2021'),
    (3, 'GHI789', 'Ford', 'Mustang', '2023');


INSERT INTO invoice (invoice_id, salesperson_id, customer_id, car_id, serial_number)
VALUES
    (1, 1, 1, 1, 'ABC123'),
    (2, 2, 2, 2, 'DEF456'),
    (3, 3, 3, 3, 'GHI789');

CREATE OR REPLACE FUNCTION new_customer(new_customer_id INT, new_first_name VARCHAR(255), new_last_name VARCHAR(255))
RETURNS VOID AS $$
BEGIN
    INSERT INTO customer (customer_id, first_name, last_name)
    VALUES (new_customer_id, new_first_name, new_last_name);
END;
$$ LANGUAGE plpgsql;

select new_customer(4, 'Steven', 'Johnson');

CREATE OR REPLACE FUNCTION new_mechanic(new_mechanic_id INT, new_first_name VARCHAR(255), new_last_name VARCHAR(255))
RETURNS VOID AS $$
BEGIN
    INSERT INTO mechanic (mechanic_id, first_name, last_name)
    VALUES (new_mechanic_id, new_first_name, new_last_name);
END;
$$ LANGUAGE plpgsql;

select new_mechanic(4, 'Austin', 'Hiner');
INSERT INTO mechanic (mechanic_id, first_name, last_name)
VALUES
    (1, 'David', 'Wilson'),
    (2, 'Sarah', 'Taylor'),
    (3, 'Kevin', 'Clark');


INSERT INTO service_ticket (ticket_id, customer_id, car_id, ticket_date, mechanic_id, serial_number)
VALUES
    (1, 1, 1, '07-16-2003', 1, 'ABC123'),
    (2, 2, 2, '04-18-2008', 2, 'DEF456'),
    (3, 3, 3, '06-22-2007', 3, 'GHI789');


INSERT INTO service_history (history_id, customer_id, car_id, service_date, mechanic_id, serial_number)
VALUES
    (1, 1, 1, '2024-04-27', 1, 'ABC123'),
    (2, 2, 2, '2024-04-28', 2, 'DEF456'),
    (3, 3, 3, '2024-04-29', 3, 'GHI789');

-- Insert records into parts table
INSERT INTO parts (part_id, part_name, price)
VALUES
    (1, 'Oil Filter', '10.99'),
    (2, 'Brake Pads', '39.99'),
    (3, 'Air Filter', '15.99');


INSERT INTO service_parts (history_id, part_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);
   
create or replace scam_customer(
	
)
