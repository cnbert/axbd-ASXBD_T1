DELIMITER $$
DROP PROCEDURE IF EXISTS data$$
CREATE PROCEDURE data()
COMMENT 'Procedimiento para obter a data e a version do servidor'
BEGIN
SELECT version() as Varsion;
SELECT current_date as Data;
END
$$
