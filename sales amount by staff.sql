SELECT * FROM customer

SELECT s.first_name || ' ' || s.last_name AS name_of_staff, SUM(p.amount) as sales_amount
FROM payment p 
LEFT JOIN staff s ON p.staff_id = s.staff_id
GROUP BY name_of_staff
ORDER BY SUM(p.amount);

