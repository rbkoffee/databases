/*
* DB: Store
* Table: customers
* Question: adjust the following query to display the null values as "No Address"
*/
SELECT address2 
FROM customers

select COALESCE(address2,'No Address') from customers;

/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/

SELECT *
FROM customers
WHERE COALESCE(address2, null) IS NOT null;

/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/

SELECT coalesce(lastName, 'Empty'), * from customers
where (age = null);

SELECT coalesce(lastname, 'Empty'), * from customers where (age IS NOT null);

/* This returns results. ^^
* This is what they wanted, but returns nothing. vv 
*/
SELECT coalesce(lastname, 'Empty'), * from customers where (age IS null);
