# Databases

## Basics

Database refers to the collection of data as well as the methods of accessing and manipulating it. 

* DBMS = Database Management System
* RDBMS = Relational DBMS

Use `CRUD` methods: Create,Remove,Update,Delete

Database Models

* Relational - ACID model ( Atomicity,Consistency, Isolation, Durability) - PSQL.
* Document - Scalable document stores, usually have search engine in front - Couchbase/ES.
* KV - Key:Value NOSQL - Dynamo,Redis.
* Graph - Connected Datamodel.
* Wide Columnar - Cassandra & BigTables.

DBMS manages CRUD, D{C,Q,D,M}L, Storage topology, Transaction Management.

TX Management: Transaction logging which allows for replay of transactions against a snapshotted database to restore. ( Allows read replica consistency )

## RDBMS

* Table: Named entity that describes the data stored in it.
  * Column: Named Key that describes all data 'below' it ( constraints ).
  * Row: Data that describes individual entry using all constraints of columns in the table within which it resides.

* Degree: Number of columns used to describe the data in a given table. (Increased number of columns = higher degree of cardinality - data is more thoroughly described).
* Domain/Constraint: What data a column can store.
* Attributes are Columns ( They are attributes of the table ).
* Records are Rows ( They are individual pieces of information that have data that is described according to the attributes of the table).
  * These are called _tuples_
* Cardinality: Collection of all tuples in a table ( The Data )

Keys:

* Primary (PKEY): Attribute that uniquely identifies all records in table.
* Foreign (FKEY): PKEY of a related table used to create relations between tables.
