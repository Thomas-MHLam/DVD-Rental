SELECT 
	a.district, 
	SUM(p.amount) as sales_amount, 
	(SUM(p.amount) / (SELECT SUM(amount) FROM payment)) AS contribution
FROM payment p
LEFT JOIN customer c ON p.customer_id = c.customer_id
LEFT JOIN address a ON a.address_id = c.address_id
GROUP BY a.district, p.amount
ORDER BY contribution DESC;
