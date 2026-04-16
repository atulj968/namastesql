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

## SQL CREATE DATABASE
The CREATE DATABASE statement is a foundational SQL command used to create new databases in SQL-based Database Management Systems (DBMS), including MySQL, PostgreSQL, SQL Server, and others. Understanding how to use this command effectively is crucial for developers, database administrators, and anyone working with relational databases.

### CREATE DATABASE in SQL
The CREATE DATABASE command establishes a new database within your SQL ecosystem. A database is a repository that organizes data in structured formats through tables, views, stored procedures, and other components.
The syntax to use the CREATE DATABASE command in SQL is:
```
CREATE DATABASE database_name;
```
### List Databases in SQL
we will verify whether the new database that we have just created has been successfully added to our system or not. 
We use the SHOW DATABASES command and it will return a list of databases that exist in our system.
```
SHOW DATABASES;
```
### USE Database in SQL
Once your database is created, we can switch to that database to begin adding tables, inserting data, and performing queries. To do this, use the USE command.
```
USE database_name
```
### Delete a Database in SQL
If you ever need to remove a database, the DROP DATABASE command can be used to delete the database and all its contents:
```
DROP DATABASE database_name;
```
### Rename Database
To change the name of a database in SQL, use the syntax:
```
ALTER DATABASE [current_database_name]
MODIFY NAME = [new_database_name];
```
To rename a database in MySQL use the query:
```
RENAME DATABASE [current_database_name] TO [new_database_name];
```

## CREATE TABLE
The SQL CREATE TABLE statement is a foundational command used to define and structure a new table in a database. By specifying the columns, data types, and constraints such as PRIMARY KEY, NOT NULL, and CHECK, helps you design the database schema.  A table’s structure, including column names, data types, and constraints like NOT NULL, PRIMARY KEY, and CHECK, are defined when it is created in SQL.
```
CREATE table table_name
(
Column1 datatype (size),
column2 datatype (size),
.
.
columnN datatype(size)
);
```

```
Note : I am using DBeaver, so for inserting multiline data you have to run query as script (alt+x).
```

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
>=	        Greater than or equal	
<=	        Less than or equal	
<>	        Not equal. Note: In some versions of SQL this operator may be written as !=	
BETWEEN	        Between a certain range	
LIKE	        Search for a pattern	
IN	        To specify multiple possible values for a column
```

## Day 5 – SQL Concepts (Joins, Aggregation, Filtering Groups)

In this section, we focus on important SQL concepts used to solve real-world business problems involving multiple tables, aggregations, and conditional filtering.

---

### JOINS in SQL

SQL Joins are used to combine data from two or more tables based on a related column.

#### 1. INNER JOIN

* Returns only the matching records from both tables.
* Used when we need data that exists in both tables.

Syntax:

```
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column = table2.column;
```

---

#### 2. LEFT JOIN

* Returns all records from the left table and matched records from the right table.
* If no match is found, NULL values are returned for the right table.

Syntax:

```
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.column = table2.column;
```

---

### AGGREGATE FUNCTIONS

Aggregate functions perform calculations on multiple rows and return a single value.

Common aggregate functions:

* `COUNT()` → Counts number of rows
* `SUM()` → Adds values
* `AVG()` → Calculates average
* `DISTINCT` → Removes duplicate values inside aggregates

Example:

```
SELECT COUNT(column_name), SUM(column_name), AVG(column_name)
FROM table_name;
```

---

### GROUP BY

* Used to group rows that have the same values into summary rows.
* Commonly used with aggregate functions.

Syntax:

```
SELECT column, aggregate_function(column)
FROM table_name
GROUP BY column;
```

---

### HAVING CLAUSE

* Used to filter grouped data (after aggregation).
* Works like WHERE but for grouped results.

Syntax:

```
SELECT column, aggregate_function(column)
FROM table_name
GROUP BY column
HAVING condition;
```

---

### COUNT vs COUNT(DISTINCT)

* `COUNT(column)` → counts all non-null values
* `COUNT(DISTINCT column)` → counts unique values

Used when we need to check uniqueness within groups.

---

### HANDLING NULL VALUES

* NULL represents missing or unmatched data.
* Often used with LEFT JOIN to find missing records.

Example:

```
WHERE table2.column IS NULL
```

Used to identify:

* Non-matching records
* Missing relationships
* Data absence

---

### ANTI JOIN (Using LEFT JOIN + NULL)

* Used to find records that do NOT have a match in another table.
* Implemented using LEFT JOIN and filtering NULL values.

Concept:

```
LEFT JOIN + WHERE right_table.column IS NULL
```

---

### DISTINCT WITHIN GROUPS

* Used inside aggregate functions to count or evaluate unique values within each group.

Example:

```
COUNT(DISTINCT column)
```

Helps in:

* Checking uniqueness
* Validating conditions like “all types exist”

---

### SORTING RESULTS

Used to arrange output in ascending or descending order.

Syntax:

```
ORDER BY column ASC|DESC;
```

---

### LIMITING RESULTS

Used to restrict number of rows returned.

* In SQL Server: `TOP`
* In MySQL/PostgreSQL: `LIMIT`

Example:

```
SELECT TOP 3 column
FROM table
ORDER BY column DESC;
```

---

### FILTERING DATA BEFORE GROUPING

* Using WHERE clause before GROUP BY to limit rows for aggregation.

Example:

```
SELECT column, SUM(column2)
FROM table
WHERE condition
GROUP BY column;
```

---

### COMBINING MULTIPLE CONCEPTS

Real-world queries often combine:

* JOINS
* WHERE filtering
* GROUP BY
* HAVING
* ORDER BY

Understanding how these work together is key to solving complex SQL problems.

---

### Key Takeaways

* Use **INNER JOIN** for matching data
* Use **LEFT JOIN + NULL** for missing data detection
* Use **GROUP BY + AGGREGATE** for summaries
* Use **HAVING** to filter grouped results
* Use **DISTINCT** to handle uniqueness
* Use **ORDER BY + TOP/LIMIT** for ranking

---

This section builds the foundation for solving advanced SQL problems and interview-level questions.
