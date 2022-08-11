DROP DATABASE IF EXISTS dummy;

CREATE DATABASE dummy;

use dummy;

CREATE TABLE Customer (
	CustomerId INT PRIMARY KEY,
	firstName VARCHAR(255),
	lastName VARCHAR(255),
	address VARCHAR(255),
	city VARCHAR(255)
);

LOAD DATA LOCAL INFILE '/home/sasi/Desktop/test_data.txt' INTO TABLE Customer;

ALTER TABLE Customer
ADD email VARCHAR(255);

ALTER TABLE Customer
DROP COLUMN email;

ALTER TABLE Customer
MODIFY firstName VARCHAR(255) NOT NULL;

DELETE FROM Customer
WHERE firstName = "praffi";

UPDATE Customer
SET firstName = "Essamaraju", lastName = "Sasi Kiran"
WHERE customerId = 1;
