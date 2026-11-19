show databases; 
use sakila;

show tables;

select * from film;  -- film_id

select * from film_actor; -- actor_id, film_id

select * from actor;  -- actor_id
-- actor_id , first name , last name , film id 
-- display all film id and film titles with their film actor id 

select film.film_id, film.title , film_actor.actor_id 
from film 
join film_actor
on film.film_id = film_actor.film_id;

-- both are same but different methods used 

select f.film_id, f.title , fa.actor_id 
from film as f
join film_actor as fa
on f.film_id = fa.film_id;


-- find all films in which actor_id = 5 has work
select film.title, film_actor.actor_id
from film 
join film_actor
on film.film_id = film_actor.film_id
where film_actor.actor_id = 5;


-- display actor_id , first name , last name , film id 
select film_actor.film_id, actor.actor_id, actor.first_name, actor.last_name
from film_actor
join actor
on film_actor.actor_id = actor.actor_id;

