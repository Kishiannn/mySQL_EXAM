SELECT a.first_name, a.last_name, f.title, f.release_year
FROM actor AS a
INNER JOIN film_actor AS fa ON a.actor_id = fa.actor_id
INNER JOIN film AS f ON fa.last_update = f.last_update
WHERE f.title LIKE '%Crocodile%' AND f.title LIKE '%Shark%'
ORDER BY a.last_name;
