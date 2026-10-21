show databases;

use sakila;

show tables;
select * from actor;

select first_name, last_name from actor;
select actor_id, last_name from actor;

select actor_id, actor_id * 10 from actor;
select actor_id, actor_id * 10 as product from actor;

select * from actor where actor_id=5;
select * from actor where first_name= 'ed';

select * from actor where first_name= 'ed'and actor_id >100;
select * from actor where first_name= 'ed'or actor_id >100;

select * from actor where actor_id=5;

select first_name, last_name from actor where actor_id >12 and actor_id <16;
select first_name, last_name from actor where actor_id between 13 and 15;

select * from actor where actor_id in (2,6); #use for particular value like 2 and 6

select * from actor where first_name like 'm%'; 
select * from actor where first_name like 'm___';
select * from actor where first_name like '_m%';

-- first name = nick ya fir ed
select * from actor where first_name= 'ed'or first_name = 'nick';

-- first name = ed and last name = chase
select * from actor where first_name= 'ed' and  last_name = 'chase';

-- find actors whose last name starts with s
select * from actor where last_name like 's%'; 

-- display actors whose first name ends with a
select * from actor where first_name like '%a';

-- display actors whose first name has a as second character
select * from actor where first_name like '_a%';

-- 1. Find actors whose first name is 'NICK' or 'ED' and whose actor_id is greater than 10.alter
select * from actor where first_name = 'NICK' OR first_name= 'ed' and actor_id >100; -- this is not work
select * from actor where first_name IN ('NICK', 'ED') and actor_id >10;

-- 2.Display actors whose actor_id is between 20 and 80 and whose first name starts with 'A'.
select *  from actor where actor_id between 20 and 80 and first_name like 'a%';

-- 3.Find actors whose first name is in 'NICK', 'ED', 'JOHNNY' and whose last name starts with 'D'
select *  from actor where first_name in ('NICK', 'ED', 'JOHNNY') and last_name like 'd%';

-- 4.Display actors whose actor_id is between 1 and 50 or whose first name ends with 'A'.
select *  from actor where actor_id between 1 and 50 and first_name like '%a';

-- 5.Find actors whose last name contains 'S' and whose actor_id is between 50 and 100.
select * from actor where last_name like '%s%' and actor_id  between 50 and 100;




