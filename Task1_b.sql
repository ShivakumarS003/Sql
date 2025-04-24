

CREATE TABLE Pg_Info (pg_id INT PRIMARY KEY, pg_name VARCHAR(100),owner_name VARCHAR(100),contact_number VARCHAR(15),
    email VARCHAR(100),location VARCHAR(150),rent bigint,food_included BOOLEAN,total_rooms INT,
    available_rooms INT);
    
    ALTER TABLE Pg_Info
ADD COLUMN rating DECIMAL(3, 2),
ADD COLUMN wifi_available BOOLEAN,
ADD COLUMN security_level VARCHAR(50),
ADD COLUMN last_inspection_date DATE;

ALTER TABLE Pg_Info
DROP COLUMN last_inspection_date;

ALTER TABLE Pg_Info RENAME COLUMN pg_name TO pgName;
ALTER TABLE Pg_Info RENAME COLUMN owner_name TO ownerName;
ALTER TABLE Pg_Info RENAME COLUMN contact_number TO contactNumber;
ALTER TABLE Pg_Info RENAME COLUMN food_included TO foodIncluded;

ALTER TABLE Pg_Info MODIFY COLUMN email VARCHAR(150);
ALTER TABLE Pg_Info MODIFY COLUMN location VARCHAR(200);
ALTER TABLE Pg_Info MODIFY COLUMN rent DECIMAL(12, 2);
ALTER TABLE Pg_Info MODIFY COLUMN pgName VARCHAR(120);

