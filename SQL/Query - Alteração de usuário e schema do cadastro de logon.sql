ALTER USER upr WITH NAME = upr1; 

ALTER USER upr1 WITH DEFAULT_SCHEMA = upr1;  
GO 

ALTER USER uca WITH NAME = uca1; 

ALTER USER uca1 WITH DEFAULT_SCHEMA = uca1;  
GO 


/*PERMISSÃO A USUÁRIOS. OBS.: TEM QUE SER EXECUTADO NO MASTER*/

use DBUG
go
GRANT execute,select,insert,update,delete TO UUG

use DBCA
go
GRANT execute,select,insert,update,delete TO UCA

use DBPR
go
GRANT execute,select,insert,update,delete TO UPR

use DBAV
go
GRANT execute,select,insert,update,delete TO uav
