/* ALTER TABLE changes exisiting table structure.

Keywords used with ALTER TABLE
- ADD COLUMN
- DROP COLUMN
- RENAME COLUMN
- ADD CONSTRAINT
- RENAME TO

*/

-- Remove existing table
DROP TABLE IF EXISTS link;

-- Create the tables
CREATE TABLE link(
    link_id serial PRIMARY KEY,
    title varchar(512) NOT NULL,
    url varchar(1024) NOT NULL UNIQUE
);

SELECT * FROM link;

-- Add new column
ALTER TABLE link ADD COLUMN active boolean;

-- Remove the active column
ALTER TABLE link DROP COLUMN active;

-- Rename column
ALTER TABLE link RENAME COLUMN title TO new_title_name;

-- Rename entire table
ALTER TABLE link RENAME TO url_table;

SELECT * FROM url_table;
