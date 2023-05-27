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

--UC4 Add New Column in Existing table
-- Add new columns to the Customer table
ALTER TABLE Customer
ADD Country VARCHAR(100),
    Salary DECIMAL(10,2),
    Pincode VARCHAR(10);
-- Update values for the new columns
UPDATE Customer SET Country = 'USA', Salary = 5000.00, Pincode = '12345' WHERE CustomerId = 1;
UPDATE Customer SET Country = 'Canada', Salary = 4000.00, Pincode = '54321' WHERE CustomerId = 2;
UPDATE Customer SET Country = 'UK', Salary = 6000.00, Pincode = '98765' WHERE CustomerId = 3;

--UC5 Update table
UPDATE Customer SET Phone = '9876543210', Address = 'New Address' WHERE CustomerName = 'John Doe';

--UC6 Number of customer in each country
SELECT Country, COUNT(*) AS NumberOfCustomers FROM Customer GROUP BY Country;

select * from Customer;