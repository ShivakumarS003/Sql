CREATE TABLE Dmart (product_id INT ,product_name VARCHAR(100),category VARCHAR(50), price double,quantity_in_stock INT,
    supplier_name VARCHAR(100),manufacture_date DATE,expiry_date DATE, discount_percentage bigint,
    is_available BOOLEAN);
    
    ALTER TABLE Dmart
ADD COLUMN brand_name VARCHAR(100),
ADD COLUMN weight VARCHAR(20),
ADD COLUMN shelf_number INT,
ADD COLUMN barcode VARCHAR(50);

ALTER TABLE Dmart
DROP COLUMN shelf_number;

ALTER TABLE Dmart RENAME COLUMN product_name TO productName;
ALTER TABLE Dmart RENAME COLUMN supplier_name TO supplierName;
ALTER TABLE Dmart RENAME COLUMN quantity_in_stock TO quantityInStock;
ALTER TABLE Dmart RENAME COLUMN is_available TO isAvailable;

ALTER TABLE Dmart MODIFY COLUMN price DECIMAL(12, 2);
ALTER TABLE Dmart MODIFY COLUMN productName VARCHAR(150);
ALTER TABLE Dmart MODIFY COLUMN brand_name VARCHAR(120);
ALTER TABLE Dmart MODIFY COLUMN weight VARCHAR(30);

