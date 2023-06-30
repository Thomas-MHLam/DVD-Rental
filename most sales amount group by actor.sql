SELECT a.first_name || ' ' || a.last_name AS full_name, AVG(f.rental_rate) as average_rental_rate
FROM actor a
LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
LEFT JOIN film f ON fa.film_id = f.film_id
GROUP BY full_name
ORDER BY average_rental_rate DESC;






