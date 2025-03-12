SELECT * FROM sys.databases;


CREATE DATABASE example_db;

USE example_db;

create SCHEMA sales;

create schema matketing;

SELECT * FROM sys.schemas;

--MDF
--LDF => log
--11:23:42 => user: W...DLUOHU -> createed db 
--11:25:42 => user: W...DLUOHU -> createed db
;
GO
SELECT * FROM example_db.INFORMATION_SCHEMA.COLUMNS
;

CREATE TABLE example_db.marketing.customers
custumer id INT IDENTITY(1, 1) PRIMARY KEY, -- this col is PK and increment automatical
FIRST_NAME VARCHAR(50) NOT NULL, -- first name required
LAST_NAME VARCHAR(50)],			`-- last name can be null
email VARCHAR(100) UNIQUE,		 -- ensuring email is unique
phone_nuber CHAR(10) UNIQUE      --      +998111111111

bith_date date,					 --Nulale bcs we didnt sp	
account_balance DECIMAL(10, 2) DEFAULT 0.00,  --12345678.90
CREATED_AT DATETIME2 DEFAULT GETDATE(),
)

SELECT * FROM example_db.marketing.customers;


INSERT INTO example_db.marketing.customers;
(first_name, last_name, email, phone_number, birth_date, account_balance)
VALUES
('John', 'Doe', 'example@mail.com', '+99899999', NULL, 12)
 

 SELECT * FROM example_db.marketing.customers
 



--ALTER
ALTER TABLE matketing.customers
ADD middle_name varchar(50);

ALTER TABLE marketing.customers
drop column middle_name



--




--
Delete FROM marketing.customers;
DELETE FROM marketing.costumers;
