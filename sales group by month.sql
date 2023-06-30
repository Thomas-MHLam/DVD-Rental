SELECT CONCAT(DATE_PART('month', payment_date), ' ', DATE_PART('year', payment_date)) AS month_and_year,
	SUM(amount) as total_sales
FROM payment p
GROUP BY month_and_year
ORDER BY SUM(amount) DESC;