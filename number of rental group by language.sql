SELECT l.name as language, COUNT(*) as number_of_rental
FROM rental r
LEFT JOIN inventory i ON r.inventory_id = i.inventory_id
LEFT JOIN film f ON i.film_id = f.film_id
LEFT JOIN language l ON f.language_id = l.language_id
GROUP BY l.name
ORDER BY number_of_rental DESC;
