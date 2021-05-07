--Q1
Select *
From customer;
select *
from address;
--Join Table
select*
from city;
--Multijoin
select first_name 
From customer
join city
on customer.customer_id = city.customer_id
join address
on address.address_id = city.address_id;

--Q2
select *
from customer
where first_name IN (
	Select first_name,last_name
	from payment
	Group By first_name, last_name 
	having sum(amount) > 6.99
);

--Q3
select *
from customer
where customer_id IN (
	Select customer_id
	from payment
	Group By customer_id 
	having sum(amount) > 175
);

--Q4
select *
from country
join city
on country.country_id = city.city_id
--so what i think i need to do is somehow get the customers names using the number "66" that represents Nepal

--Q5
select *
from staff
--Not sure what to do here

--Q6
select *
from actor
--I think here i would create a join table of actors and films and try to find the number of times an actor apperaed in a film then change it to descending order.

--Q7
select *
from film

select *
from film_actor

Select first_name, last_name
from actor
join flim_actor
on actor.actor_id - flim.actor.actor_id
join flim
on film.film_actor.film_id
order by actor
--the "order by" is the part that i am stuck on 

--Q8
--Not sure what to do here



