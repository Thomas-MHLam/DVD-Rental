SELECT c.name AS category, SUM(f.rental_rate*10 - f.replacement_cost) AS profit
FROM film f
LEFT JOIN inventory i ON i.film_id = f.film_id
LEFT JOIN rental r ON r.inventory_id = i.inventory_id
LEFT JOIN film_category fc ON f.film_id = fc.film_id
LEFT JOIN category c ON c.category_id = fc.category_id
GROUP BY c.name
ORDER BY profit DESC;
