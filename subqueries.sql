USE sakila;

SELECT COUNT(*) AS number_of_copies
FROM inventory
WHERE film_id = (SELECT film_id FROM film WHERE title = 'HUNCHBACK IMPOSSIBLE');

SELECT 
  title,
  length
FROM film
WHERE length > (SELECT AVG(length) FROM film);

SELECT 
  a.first_name,
  a.last_name
FROM actor AS a
WHERE a.actor_id IN (
  SELECT fa.actor_id
  FROM film_actor AS fa
  WHERE fa.film_id = (
    SELECT film_id
    FROM film
    WHERE title = 'ALONE TRIP'
  )
);

