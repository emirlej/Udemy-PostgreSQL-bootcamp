-- Delete table if already exists
DROP TABLE IF EXISTS link;

CREATE TABLE link(
    ID serial PRIMARY KEY,
    url varchar(255) NOT NULL UNIQUE,
    name varchar(50) NOT NULL,
    description varchar(255),
    rel varchar(50)
);

-- Take a look at the empty table
SELECT * FROM link;

-- Insert one row at the time
INSERT INTO link(url, name)
VALUES
('www.google.com', 'Google');
INSERT INTO link(url, name)
VALUES
('www.yahoo.com', 'Yahoo');

-- Insert multiple rows at once
INSERT INTO link(url, name)
VALUES
('www.bing.com', 'Bing'), 
('www.amazon.com', 'Amazon');
