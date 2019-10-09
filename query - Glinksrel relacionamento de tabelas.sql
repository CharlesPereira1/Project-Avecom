USE DBCI;  
GO  
SELECT   distinct
   -- f.name AS foreign_key_name,  
   OBJECT_NAME(f.parent_object_id) AS table_name  
   ,COL_NAME(fc.parent_object_id, fc.parent_column_id) AS constraint_column_name  
   ,OBJECT_NAME (f.referenced_object_id) AS referenced_object  
   ,COL_NAME(fc.referenced_object_id, fc.referenced_column_id) AS referenced_column_name  
   ,is_disabled   
FROM sys.foreign_keys AS f  
INNER JOIN sys.foreign_key_columns AS fc   
   ON f.object_id = fc.constraint_object_id   
where is_disabled =0
and OBJECT_NAME(f.parent_object_id)= 'CIFSACS1'
order by 1

/*
select * from uci.CIFSACS1

select * from uci.CIFSLOC1
*/