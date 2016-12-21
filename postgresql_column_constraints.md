# Column constraints
- **NOT NULL** - column value cannot be NULL
- **UNIQUE** - value must be unique across the entire table
    - However, the column can have many **NULL** values, since
    PostgreSQL treats each **NULL** value to be unique.
- **Primary key** - combination of NOT NULL and UNIQUE constraints.
- One PK can be defined using column-level constraints. Multiple PKs are defined in the
table-level constraint
- **CHECK** (condition) - to check a condition when inserting or updating data.
- **REFERENCES** - to constraint the value stored in the column that must exist in a column
in another table.

> Learning the concepts above is easiest by working with SQL-commands.