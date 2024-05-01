create table salesperson(
	salesperson_id int primary key,
	first_name varchar(255),
	last_name varchar(255)
	
)

create table customer(
	customer_id int primary key,
	first_name varchar(255),
	last_name varchar(255)
	
)

create table car(
	car_id int primary key,
	serial_number varchar(255) unique,
	make varchar(255),
	model varchar(255),
	car_year varchar(255)

)

create table invoice(
	invoice_id int primary key,
	salesperson_id int,
	customer_id int,
	car_id int,
	serial_number varchar(255),
	FOREIGN KEY (serial_number) REFERENCES car(serial_number),
	FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (car_id) REFERENCES car(car_id)
)

create table mechanic(
	mechanic_id int primary key,
	first_name varchar(255),
	last_name varchar(255)
)

create table service_ticket(
	ticket_id int primary key,
	customer_id int,
	car_id int,
	ticket_date date,
    mechanic_id int,
    serial_number varchar(255),
	FOREIGN KEY (serial_number) REFERENCES car(serial_number),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
)

create table service_history(
	history_id int primary key,
	customer_id int,
	car_id int,
	service_date date,
    mechanic_id int,
    serial_number varchar(255),
	FOREIGN KEY (serial_number) REFERENCES car(serial_number),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
)


create table parts(
	part_id int primary key,
	part_name varchar(255),
	price varchar(255)
)

create table service_parts(
	history_id int,
	part_id int,
	FOREIGN KEY (history_id) REFERENCES service_history(history_id),
	FOREIGN KEY (part_id) REFERENCES parts(part_id)
)

