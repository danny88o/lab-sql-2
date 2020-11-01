-- Lab 2
Use sakila;

-- Task 1:
select concat(first_name, " ", last_name) as "Name" from actor
where first_name = "Scarlett";
    
-- Task 2:
select concat(first_name, " ", last_name) as "Name" from actor
where last_name = "Johansson";
    
-- Task 3:
select film_id, inventory_id from inventory;
select * from payment;	
select * from film;	

-- Task 4:
select count(rental_id) as "Number of rentals rented currently" from rental;

-- Task 5:
select max(datediff(return_date, rental_date)) as "Max Time", min(datediff(return_date, rental_date)) as "Min time" from rental;

-- Task 6:
select min(length) as min_duration, max(length) as max_duration from film;

-- Task 7:
select avg(length) from film;

-- Task 8:
select concat(avg(length) div 60," hours and ", avg(length)%60, " minutes") from film;

-- Task 9:
select * from film
where length > 180;

-- Task 10:
select concat(first_name, ".", last_name, "@gmail.es") as email from actor;

-- Task 11:
select title, max(length(title)) as "length" from film;
