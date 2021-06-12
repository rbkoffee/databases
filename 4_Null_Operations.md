
// DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
1. Question:

 Assuming a students minimum age for the class is 15, what is the average age of a student?
`SELECT AVG(coalesce(age,15)) from "Student";`


* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
1. Question

Replace all empty first or last names with a default?

`SELECT coalesce(name,'First Name') as "First Name", coalesce(lastname,'Last Name') as "Last Name" from "Student";`