
CREATE TABLE Government (
    dept_id INT ,dept_name VARCHAR(100), minister_name VARCHAR(100),ministry_type VARCHAR(50), head_office_location VARCHAR(100),
    budget_allocated double,num_employees INT,established_year bigint,contact_email VARCHAR(100), phone_number VARCHAR(15));
    
    ALTER TABLE Government
ADD COLUMN website_url VARCHAR(100),
ADD COLUMN cabinet_status VARCHAR(50),
ADD COLUMN dept_secretary VARCHAR(100),
ADD COLUMN annual_report_url VARCHAR(255);

ALTER TABLE Government
DROP COLUMN annual_report_url;

ALTER TABLE Government RENAME COLUMN dept_name TO deptName;
ALTER TABLE Government RENAME COLUMN minister_name TO ministerName;
ALTER TABLE Government RENAME COLUMN budget_allocated TO budgetAllocated;
ALTER TABLE Government RENAME COLUMN phone_number TO phoneNumber;

ALTER TABLE Government MODIFY COLUMN contact_email VARCHAR(150);
ALTER TABLE Government MODIFY COLUMN budgetAllocated DECIMAL(18, 2);
ALTER TABLE Government MODIFY COLUMN deptName VARCHAR(120);
ALTER TABLE Government MODIFY COLUMN head_office_location VARCHAR(150);

