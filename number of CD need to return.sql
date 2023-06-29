SELECT 
  c.customer_id, 
  c.first_name || ' ' || c.last_name AS customer_name, 
  COUNT(CASE WHEN r.return_date IS NULL THEN 1 END) AS number_of_CD_need_to_return
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id
WHERE r.return_date IS NULL
GROUP BY c.customer_id, customer_name;