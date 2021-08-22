# Null

Null is part of the Three Value Logic design of SQL.
Three Values = True,False,Unknown (NULL).

NULL represents the  unknown state.
Not all NULLs are equal/equivalent so evaluating where something is NULL will return NULL. 

Values are checked by using `IS NULL`
// DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
1. Question:

 Assuming a students minimum age for the class is 15, what is the average age of a student?
`SELECT AVG(coalesce(age,15)) from "Student";`


* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
1. Question

Replace all empty first or last names with a default?

`SELECT coalesce(name,'First Name') as "First Name", coalesce(lastname,'Last Name') as "Last Name" from "Student";`

* DB: Store
* Table: customers
* Question: adjust the following query to display the null values as "No Address"
*/
`SELECT address2 FROM customers`

`SELECT coalesce(address2,'No Address') as "Address" FROM customers;`

/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/

`SELECT * FROM customers WHERE address2 IS NOT NULL;`
