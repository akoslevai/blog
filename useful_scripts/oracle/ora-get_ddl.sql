/*****************************************************************
** Topic    : Get the actual full DDL of a DB object
**
** Notes    :  
** Platform : Oracle SQL
** Author   : Akos Levai
** ***************************************************************
** History
** - 2024/07/26 Initial upload
*****************************************************************/

SELECT 
  DBMS_METADATA.get_ddl ('TABLE', table_name, owner)
FROM   all_tables
WHERE  owner      = '<schema name>'
AND    table_name = upper('<table name>')
;
