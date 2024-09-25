use sakila;

select * from film;

## Query 1
select film_id,title from film 
where rating='PG-13' and rental_rate<=2.99;

## Query 2
select film_id, title from film
where special_features like '%Deleted scenes%';

## Query 3
select customer_id, concat(first_name," ", last_name) 'Full Name' from customer 
where active = 1;

select count(customer_id) from customer c 
where active = 1;

# Query 4
select c.customer_id, concat(c.first_name," ", c.last_name) 'Full Name', r.rental_date from customer c
join rental r on r.customer_id=c.customer_id
where date(r.rental_date) ='2005-07-27';

# Query 5
select distinct c.customer_id , concat(c.first_name," ", c.last_name)  'Full Name' from customer c
join rental r on r.customer_id=c.customer_id
where date(r.rental_date) ='2005-07-27';

# Query 6
select date(r.rental_date) as 'Date',count(rental_id) as 'No of DVD"s sold'  from rental r group by date(rental_date);

select f.film_id,f.title,f.release_year from film f
join film_category fc on f.film_id=fc.film_id
join category c on c.category_id =fc.category_id
where c.name='Sci-Fi'; 