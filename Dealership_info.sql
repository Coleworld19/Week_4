INSERT INTO Customer(customer_first_name, customer_last_name, customer_adress, customer_email, customer_phone) VALUES 
('Charlie','Horse','504 Name St.','fakeemail@yahoo.com','123-456-7890'),
('Mike','Vick','101 Palm Blvd.','NFLl@gmail.com','212-624-1110'),
('Frank','Ocean','252 Fake St.','email@yahoo.com','212-777-1829'),
('Cam','Newton','33 Fake Rd','realemail@yahoo.com','222-177-1260');

INSERT INTO SalesCar(make, model, color, trim_, price) VALUES
('Honda','Accord','Sky-blue','xl','35999.00'),
('Chevy','Malibu','Black','xl','63700.00'),
('Ford','Explorer','Red','xl','150000.00');

INSERT INTO Salesperson (sp_first_name, sp_last_name,sp_email,sp_phone,sp_commission) VALUES
('Jerry','West','JWest101@yahoo.com','226-544-1111','380.00'),
('Bobby','Hill','BHill33@gmail.com','772-113-7243','450.00'),
('Hank','Hill','Hhill202l@gmail.com','999-989-7886','900.00');

INSERT INTO ServiceCar (customer_id, vin, make, model, color, trim_) VALUES
('1','321315sdf','Chevy','###','green','Great'),
('2','sdfsd564','Kia','###','yikes','Greater');

INSERT INTO Serviceticket (serivice_car_id, service_date) VALUES
(1,now()::date),
(2,now()::date);

INSERT INTO Service (serivice_ticket_id,service_name, price) VALUES
(1,'oil change',952.73),
(2,'engine rebuild',25.66);

INSERT INTO Part (serivice_ticket_id, part_name, price) VALUES
(1,'new part',23.00),
(2,'.50 cal mount',29.00);

INSERT INTO Mechanic (mechanic_first_name, mechanic_last_name, hourly_rate) VALUES
('Morty','Smith',50.00),
('Rick','Sanchez',33.00);

INSERT INTO Labor (serivice_ticket_id,mechanic_id,hours_worked) VALUES
(1,1,5),
(2,2,10)

--Inserst Into INVOICE (customer_id, car_id, salesperson_id)
	

