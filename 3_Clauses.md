# Data Operators

## Clauses

* WHERE

`SELECT * from $table WHERE column='value';`

* WHERE NOT

`SELECT * from $table WHERE NOT column='value';`

* AND
`SELECT * from $table WHERE column='value' AND column='value-2';`

* OR
`SELECT * from $table WHERE column='value' OR column='value-2';`


Combine these operators to build complex queries. 
Always stick with the most defining feature first, this segments the 
data easier. 

OR Clauses will spawn a second worker process to query the table, shown in explain analyze.
## Comparison Operators

Boolean basics
`>,<, >=, <=,=, !=`

String comparisons can be done with these, it will read from L -> R and compare based on position in alphabet.

When using AND & OR operators the separate queries are run, then boolean operators are run against those depending on the logical operator.