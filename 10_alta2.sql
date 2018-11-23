DELIMITER $$
DROP PROCEDURE IF EXISTS alta2$$
CREATE PROCEDURE alta2(a VARCHAR(30), b VARCHAR(30), c CHAR(9))
BEGIN
	INSERT INTO persoa(nome, apellido, nif) 
		VALUES (a, b, select varificarNIF(c));
END;
$$

DELIMITER ;
