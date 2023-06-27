SELECT customer_id, first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM rental
	WHERE return_date IS NOT NULL
)
LIMIT 20

SELECT return_date 
FROM 