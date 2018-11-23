DELIMITER $$
DROP FUNCTION IF EXISTS maiorDe3 $$
CREATE FUNCTION maiorDe3(a INT, b INT, c INT)
	RETURNS INT
BEGIN
	DECLARE result INT;
		IF (a>b &&  a>c ) THEN
			SET  result=a;
		ELSEIF (b>a && b>c) THEN
			SET result=b;
		ELSE
			SET result=c;
		END IF;
	RETURN result;
END;
$$

DELIMITER ;
