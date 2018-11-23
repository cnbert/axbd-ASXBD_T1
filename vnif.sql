DELIMITER $$
DROP FUNCTION IF EXISTS verificarNIF $$
CREATE FUNCTION verificarNIF(nif CHAR(9))
	RETURNS INT
BEGIN
	DECLARE resultado INT;
	IF ((nif MOD 8) IN ("a-z")) THEN SET resultado=TRUE;
	ELSE SET resultado=FALSE;
	END IF;
	RETURN(resultado);
END;
$$

DELIMITER ;
