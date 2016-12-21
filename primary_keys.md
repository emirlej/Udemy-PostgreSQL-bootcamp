# Primary keys

## Keys
- A primary key (PK) is a column or a group of columns that is used to identify a row **uniquely** in 
a table.
- You define PKs through PK constraints
- A table can have only one PK.
- Good practice to have a PK in each table.

## Primary Keys
- Normally one adds the primary key to a table when defining the structure using **CREATE TABLE**
statements. Example:
```sql
CREATE TABLE table_name (colname1 data_type PRIMARY KEY, colname2 datatype, ...);
```

## Foreign key (FK)
- Field or group of fields that uniquely identifies a row in another table.
- Refers to the **PRIMARY KEY** in another table.
- Table containing the **FK** is called *referencing table* or *child table*.
- A table can have multiple **FKs** depending on the relationship.