# HSA10
Isolations & locks 

The examples use `percona` for managing MySQL server and `PostgreSQL` databases.
For each RDMS provided examples of how to read and write phenomena on different isolation levels: <url>https://en.wikipedia.org/wiki/Isolation_(database_systems)</url>

#### Write phenomena:

- lost update

`The interpretation of a lost update is when one transaction (Transaction #1) reads data into its local memory, and then another transaction (Transaction #2) changes this data and commits its change. After this, Transaction #1 updates the same data based on what it read into memory before Transaction #2 was executed. In this case, the update performed by Transaction #2 can be considered a lost update.`

#### Read phenomena:

- dirty read
- non-repeatable read
- phantom read

## Prerequisites 

Use `insert_data.sql` to create a table and insert or recreate a user table with 5 records.

Then do the steps described below for each case on selected RDMS


## Percona

#### Lost Update

![Lost Update 1](./mysql_queries/lost_update_1.png?raw=true "Lost Update 1")

![Lost Update 2](./mysql_queries/lost_update_2.png?raw=true "Lost Update 2")

#### Dirty Read

![Dirty Read 1](./mysql_queries/dirty_read_1.png?raw=true "Dirty Read 1")

![Dirty Read 2](./mysql_queries/dirty_read_2.png?raw=true "Dirty Read 2")

#### Non-repeatable Read

![Non-repeatable Read 1](./mysql_queries/non_repeatable_read_1.png?raw=true "Non-repeatable Read 1")

![Non-repeatable Read 2](./mysql_queries/non_repeatable_read_2.png?raw=true "Non-repeatable Read 2")

#### Phantom read

![Phantom Read 1](./mysql_queries/phantom_read_1.png?raw=true "Phantom Read 1")

![Phantom Read 2](./mysql_queries/phantom_read_2.png?raw=true "Phantom Read 2")

## Postgres

#### Lost Update

![Lost Update PG 1](./postgres_queries/lost_update_1.png?raw=true "Lost Update PG 1")

![Lost Update PG 2](./postgres_queries/lost_update_2.png?raw=true "Lost Update PG 2")

#### Dirty Read

Read Uncommitted not supported by PostgreSQL, so can not be reproduced

#### Non-repeatable read

![Non-repeatable Read PG 1](./postgres_queries/non_repeatable_read_1.png?raw=true "Non-repeatable Read PG 1")

![Non-repeatable Read PG 2](./postgres_queries/non_repeatable_read_2.png?raw=true "Non-repeatable Read PG 2")

#### Phantom read

![Phantom Read PG 1](./postgres_queries/phantom_read_1.png?raw=true "Phantom Read PG 1")

![Phantom Read PG 2](./postgres_queries/phantom_read_2.png?raw=true "Phantom Read PG 2")
