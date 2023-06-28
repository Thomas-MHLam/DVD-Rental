SELECT f.rating, COUNT(r.rental_id) AS number_of_rental
FROM film f
LEFT JOIN inventory i ON i.film_id = f.film_id
LEFT JOIN rental r ON r.inventory_id = i.inventory_id
GROUP BY f.rating
ORDER BY number_of_rental DESC;
