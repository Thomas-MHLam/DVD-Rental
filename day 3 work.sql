SELECT c.first_name || ' ' || c.last_name AS full_name, p.total_amount
FROM customer c
LEFT JOIN (
  SELECT customer_id, SUM(amount) AS total_amount
  FROM payment
  GROUP BY customer_id
) p ON c.customer_id = p.customer_id 
ORDER BY total_amount DESC;





