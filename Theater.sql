Create Table customer(
	customer_total Serial Primary Key,
	birthday Date
);

Create Table tickets(
	amount Numerical(2,2) Primary Key ,
	customer_total INTEGER NOT NULL
	Foreign Key(customer_total) REFERENCES customer(customer_total),
	Foreign Key(movie_name) REFERENCES movie(movie_name)
);

Create Table Concessions(
	concession_name, Varchar(100)
	Description Varchar(100)
	amount Numerical(2,2)
);

Create Table Movies(
	movie_name Varchar(250) Primary Key,
	Category Varchar(50)
	length_ Numerical(2,2) 
);

Create Table Transaction_ (
	Foreign Key(customer_total) REFERENCES customer(customer_total)
	Foreign Key(concession_name) REFERENCES concession(concession_name)
	Foreign Key(movie_name) REFERENCES movie(movie_name)

);