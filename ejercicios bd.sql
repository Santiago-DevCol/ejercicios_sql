--1
select film_id, title from film

--2
select * from film limit 5;

--3
select * from film where film_id < 4;

--4
select * from film where rating in ('PG','G');

--5
select * from actor where first_name in ('Angela', 'Angelina', 'Audrey');

--6
select * from actor where first_name like '%Julia';

--7
select * from actor where first_name = 'Chris' OR first_name = 'Cameron' OR first_name like 'Cuba' ORDER BY first_name asc;

--8
select * from customer where first_name = 'Jamie' and last_name ='Rice';

--9
select amount, payment_date from payment where amount < 1

--10
select distinct rental_duration || ' Días' AS PLAZO_DEL_ALQUILER from film order by PLAZO_DEL_ALQUILER asc

--11
select * from city order by country_id asc, city asc 

--12
select customer_id,return_date from rental where return_date IS NOT NULL order by return_date desc limit 3

--13
SELECT 
    (SELECT COUNT(*) FROM film WHERE rating = 'NC-17') AS num_peliculas_NC17,
	(SELECT COUNT(*) FROM film WHERE rating = 'PG' ) num_peliculas_PG,
    (SELECT COUNT(*) FROM film WHERE rating = 'PG-13') AS num_peliculas_PG13;
	
--14
SELECT COUNT(DISTINCT customer_id) from rental

--15 
select last_name, count(*) as cantidad_repetido from customer group by last_name having count(*) > 1;

--16
select film_id, count(distinct actor_id) as numero_actores from film_actor group by film_id order by numero_actores desc limit 1;

--17
Select actor_id, count(distinct film_id) as cantidad_peliculas from film_actor group by actor_id order by cantidad_peliculas desc limit 1;

--18
Select country_id, count(city) as cantidad_ciudad from city group by country_id order by cantidad_ciudad desc;

--19
select round(avg(amount),2) from payment;

--20
select (first_name || ' ' || last_name) as nombre_actor, length(first_name||last_name) as cantidad_caracteres from actor order by cantidad_caracteres desc limit 10;
