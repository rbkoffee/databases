# Filter operations: BETWEEN, AND, IN

## BETWEEN, AND

Instead of using explicit ranges using Boolean logic operators and additive operator, use `WHERE $column BETWEEN valueX AND valueY`

## IN

Use `IN` keyword to select from a list of values. 
Equivalent to using chain ORs (non-exclusive filtering)

`SELECT * FROM <table> WHERE <column> IN (value1,value2,value3)`

* Order of values is important - take into account sorting by VALUES ASC/DESC.

## LIKE AND ILIKE

Allows for partial lookups using wildcard searching and filtering on text.
`SELECT * FROM employees WHERE first_name LIKE 'M%';`

ILIKE does this in case insensitive mode; `ILIKE = grep -i`

Wildcards: 
`%` (equivalent of *) - Any number of characters after this position
`_` - Match one character after this position

Use combinations of these to build minimum/maximum match sizes. 
`1_%_%` - Starts with 1 and has _at least_ two characters long.
`1___0` - finds a 4 digit number starting in 1 ending in 0.

Non-text data cannot be searched with like, cast non-text data to text. 
`CAST(salary AS text) = salary::text`



Exercises

```sql
-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)

/*
* Write your query here
*/

SELECT firstname AS Name, lastname AS Surname,income from customers where income BETWEEN 29999 and 50001 ORDER BY income ASC;
```

-- What is the average income between the ages of 20 and 50? (Including 20 and 50)

/*
* Write your query here
*/

```sql

SELECT AVG(income) FROM customers WHERE age BETWEEN 19 AND 50;
```

```sql
/*
* DB: Store
* Table: orders
* Question: How many orders were made by customer 7888, 1082, 12808, 9623
*/

-- SELECT * from orders WHERE customerid IN (7888,1082,12808,9623);
SELECT count(orderid) from orders WHERE customerid IN (7888,1082,12808,9623);
 
6

/*
* DB: World
* Table: city
* Question: How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?
*/

SELECT count(id) FROM city WHERE district IN ('Noord-Brabant','Zuid-Holland','Utrecht');

12
```