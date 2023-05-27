--UC1_Create Database
create database CustomerDetail;
use CustomerDetail;

--UC2_Create Customer Table
CREATE TABLE Customer
(
    CustomerId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(255),
    Phone VARCHAR(20),
    Address VARCHAR(255)
);

--UC3 Insert Values
INSERT INTO Customer (CustomerName, Phone, Address)
VALUES ('John Doe', '1234567890', '123 Main St'),
('Jane Smith', '9876543210', '456 Elm St'),
('Mike Johnson', '5551234567', '789 Oak Ave');

select * from Customer;