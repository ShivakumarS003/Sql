create database hospital_app;
CREATE TABLE patient_info (patient_id INT PRIMARY KEY,first_name VARCHAR(50),last_name VARCHAR(50),
                            age INT, gender VARCHAR(10), contact_number VARCHAR(15), email VARCHAR(100),
                            address VARCHAR(255), admission_date DATE, diagnosis VARCHAR(100));
                            
ALTER TABLE patient_info ADD doctor_assigned VARCHAR(50), 
ADD discharge_date VARCHAR(20),
  ADD  treatment_plan VARCHAR(50),
 ADD   insurance_provider VARCHAR(100);
  
ALTER TABLE patient_info
DROP COLUMN insurance_provider;

ALTER TABLE patient_info
CHANGE first_name firstName VARCHAR(50),
CHANGE last_name lastName VARCHAR(50),
CHANGE contact_number contactNumber VARCHAR(15),
CHANGE diagnosis medicalDiagnosis VARCHAR(100);

ALTER TABLE patient_info RENAME COLUMN first_name TO firstName;
ALTER TABLE patient_info RENAME COLUMN last_name TO lastName;
ALTER TABLE patient_info RENAME COLUMN contact_number TO contactNumber;
ALTER TABLE patient_info RENAME COLUMN diagnosis TO medicalDiagnosis;

ALTER TABLE patient_info MODIFY COLUMN email VARCHAR(150);
ALTER TABLE patient_info MODIFY COLUMN address VARCHAR(300);
ALTER TABLE patient_info MODIFY COLUMN gender CHAR(1);
ALTER TABLE patient_info MODIFY COLUMN age SMALLINT;





