# namastesql
Here are the solutions of course Namaste SQL by Ankit Bansal

## RDBMS
RDBMS stands for Relational Database Management System.
RDBMS is the basis for SQL, and for all modern database systems such as MS SQL Server, IBM DB2, Oracle, MySQL, and Microsoft Access.
The data in RDBMS is stored in database objects called tables. A table is a collection of related data entries and it consists of columns and rows.

## SQL Statements
Most of the actions you need to perform on a database are done with SQL statements.
SQL statements consist of keywords that are easy to understand.

## Database Tables
A database most often contains one or more tables. Each table is identified by a name (e.g. "Customers" or "Orders"), and contain records (rows) with data.

## Keep in Mind That...
SQL keywords are NOT case sensitive: select is the same as SELECT

#### Semicolon after SQL Statements?
Some database systems require a semicolon at the end of each SQL statement.
Semicolon is the standard way to separate each SQL statement in database systems that allow more than one SQL statement to be executed in the same call to the server.

## Some of The Most Important SQL Commands
```
SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index
```

## The SQL SELECT Statement
The SELECT statement is used to select data from a database.
```
SELECT column1, column2, ...
FROM table_name;
```
### The SQL SELECT DISTINCT Statement
The SELECT DISTINCT statement is used to return only distinct (different) values.
Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.
```
SELECT DISTINCT column1, column2, ...
FROM table_name;
```

## SQL WHERE Clause
The WHERE clause is used to filter records.
It is used to extract only those records that fulfill a specified condition.
```
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```
### Operators
The following operators can be used in the WHERE clause:
```
Operator	Description	
=	        Equal	
>	        Greater than	
<	        Less than	
>=	      Greater than or equal	
<=	      Less than or equal	
<>	      Not equal. Note: In some versions of SQL this operator may be written as !=	
BETWEEN	  Between a certain range	
LIKE	    Search for a pattern	
IN	      To specify multiple possible values for a column
```
