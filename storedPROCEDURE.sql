DROP PROCEDURE get_Language;

DELIMITER //
CREATE PROCEDURE get_Language()
BEGIN
	SELECT name
    FROM language
    ORDER BY name ASC;
END //
DELIMITER ;

CALL get_Language();



DROP PROCEDURE getFilm;

DELIMITER //
CREATE PROCEDURE getFilm()
BEGIN
	SELECT *
    FROM film
    WHERE title LIKE '%Shark%' OR title LIKE '%Crocodile%';
END //
DELIMITER ;

CALL getFilm();


