DELIMITER $$
DROP PROCEDURE IF EXISTS data$$
CREATE PROCEDURE informacion()
COMMENT 'Procedimiento para obter informacion do servidor'
BEGIN
select TIME_FORMAT(SEC_TO_TIME(VARIABLE_VALUE ),'%Hh %im')  as Uptime 
from information_schema.GLOBAL_STATUS 
where VARIABLE_NAME='Uptime';
select * from information_schema.GLOBAL_STATUS
where VARIABLE_NAME="Connections";
select * from information_schema.GLOBAL_STATUS
where VARIABLE_NAME="Threads_connected";
END
$$
DELIMITER ;
