-- How many actors are there with the last name ‘Wahlberg’?
SELECT count(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

-- How many payments were made between $3.99 and $5.99?
SELECT count(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- What film does the store have the most of? (search in inventory)
SELECT film_id, count(inventory_id) 
FROM inventory
GROUP BY film_id
ORDER BY count(inventory_id) DESC;


-- How many customers have the last name ‘William’?
SELECT count(last_name)
FROM customer
WHERE last_name = 'William';

-- What store employee (get the id) sold the most rentals?
SELECT max(staff_id)
FROM rental;

-- How many different district names are there?
SELECT  count(DISTINCT district)
FROM address;

-- What film has the most actors in it? (use film_actor table and get film_id)
SELECT actor_id, COUNT(film_id)
FROM film_actor
GROUP BY actor_id 
ORDER BY COUNT DESC ;

-- From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT last_name
FROM customer
WHERE store_id = 2 AND last_name LIKE '%es';

-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT amount, count(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(amount) > 250;
 

-- Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT rating, count(film_id)
FROM film
GROUP BY rating 
ORDER BY count(film_id) DESC;
