Create Table Customer(
	customer_id Serial Primary Key,
	customer_first_name Varchar(50),
	customer_last_name Varchar(50),
	customer_adress Varchar(100),
	customer_email Varchar(50),
	customer_phone Varchar(15)
);

Create Table SalesCar(
	Car_id Serial Primary Key,
	serial_number Varchar(17),
	make Varchar(20),
	model Varchar(20),
	color Varchar(20),
	trim_ Varchar(20),
	price Numeric(8,2)
);

Create Table Salesperson(
	salesperosn_id Serial Primary Key,
	sp_first_name Varchar(50),
	sp_last_name Varchar (50),
	sp_email Varchar(50),
	sp_phone Varchar(15),
	sp_commission Numeric(7,2)
);

Create Table Mechanic(
	mechanic_id Serial Primary Key,
	mechanic_first_name Varchar(50),
	mechanic_last_name Varchar(50),
	hourly_rate Numeric(5,2)
);

Create Table Invoice(
	invoice_id Serial Primary Key,
	customer_id Integer Not Null,
	Foreign Key(customer_id)References customer(customer_id),
	car_id Integer Not Null,
	Foreign Key(car_id) References SalesCar(car_id), 
	salesperosn_id Integer Not Null,
	Foreign Key (salesperosn_id) REFERENCES Salesperson(salesperosn_id)
);

Create Table ServiceCar(
	serivice_car_id Serial Primary Key,
	customer_id Integer Not Null,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	vin Varchar(17),
	make Varchar(20), 
	model Varchar(20), 
	color Varchar(20), 
	trim_ Varchar(20) 
);

Create Table ServiceTicket(
	serivice_ticket_id Serial Primary Key,
	serivice_car_id Integer Not Null,
	FOREIGN KEY(serivice_car_id) REFERENCES ServiceCar(serivice_car_id),
	service_date DATE	
);

Create Table Labor(
	labor_id Serial Primary Key,
	serivice_ticket_id Integer Not Null,
	FOREIGN KEY(serivice_ticket_id) REFERENCES ServiceTicket(serivice_ticket_id), 
	mechanic_id Integer Not Null,
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id),
	hours_worked Numeric(5,2)
);

Create Table Service(
	service_id Serial Primary Key,
	serivice_ticket_id Integer Not Null,
	FOREIGN KEY(serivice_ticket_id) REFERENCES serviceticket(serivice_ticket_id),
	service_name Varchar(20),
	price Numeric(6,2)
);

Create Table Part(
	part_id Serial Primary Key,
	serivice_ticket_id Integer Not Null,
	FOREIGN KEY(serivice_ticket_id) REFERENCES serviceticket(serivice_ticket_id), 
	part_name Varchar(20),
	price Numeric(6,2)	
);


