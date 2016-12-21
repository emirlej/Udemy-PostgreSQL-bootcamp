/* To delete rows in a table, use the delete statement

Example: 

    DELETE FROM table
    WHERE condition;
*/

SELECT * FROM link;

-- DELETE anything starting with B
DELETE FROM link
WHERE name LIKE 'B%';

-- DELETE Amazon
DELETE FROM link
WHERE name = 'Amazon'
RETURNING *;
