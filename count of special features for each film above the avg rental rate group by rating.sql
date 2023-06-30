SELECT rating,
	COUNT(*) AS count,
	COUNT(CASE WHEN CAST(special_features AS TEXT) LIKE '%Trailers%' THEN 1 END) AS count_trailers,
    COUNT(CASE WHEN CAST(special_features AS TEXT) LIKE '%Deleted Scenes%' THEN 1 END) AS count_deleted_scenes,
    COUNT(CASE WHEN CAST(special_features AS TEXT) LIKE '%Behind the Scenes%' THEN 1 END) AS count_behind_the_scenes
FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film)
GROUP BY rating
ORDER BY rating;

SELECT * FROM film