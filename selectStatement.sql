SELECT a.first_name, a.last_name, f.title, f.release_year
FROM actor AS a
INNER JOIN film_actor AS fa ON a.actor_id = fa.actor_id
INNER JOIN film AS f ON fa.last_update = f.last_update
WHERE f.title LIKE '%Crocodile%' AND f.title LIKE '%Shark%'
ORDER BY a.last_name;


SELECT first_name, last_name
FROM actor
WHERE first_name LIKE '%SON%' OR last_name LIKE '%SON%';

SAVEPOINT A;

INSERT INTO film 
VALUES (274, 'DOCTOR STRANGE', 
'Dr. Stephen Strange\'s life changes after a car accident robs him of the use of his hands. When traditional medicine fails him, he looks for healing, and hope, in a mysterious enclave.', 
2022, 1, NULL, 3, 4.99, 115, 27.99, 'PG-13', 'Trailers', NOW()); 

SELECT *
FROM film
WHERE title LIKE "%Doctor%";

INSERT INTO category
VALUES(17, 'Suspense', NOW()); 

SAVEPOINT B;

UPDATE customer
SET last_name = "GREEN"
WHERE first_name LIKE '%Betty%';

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '%Betty%';

ROLLBACK TO SAVEPOINT A;

COMMIT;




