SELECT * FROM link;

-- Update all descriptions
UPDATE link
SET description = 'Empty description';

-- Update descriptions when names start with A
UPDATE link
SET description = 'Name starts with an A'
WHERE name ILIKE 'A%';

-- Set desc. equal to the name column
UPDATE link
SET description = name;

-- Print out the changes using RETURNING
UPDATE link
SET description = 'New description'
WHERE id = 1
RETURNING id, url, name, description;