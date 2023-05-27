--UC1_Create_Database
create database CustomerDetail;
use CustomerDetail;

--UC2_Create_Customer_Table
CREATE TABLE Customer
(
    CustomerId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(255),
    Phone VARCHAR(20),
    Address VARCHAR(255)
);

select * from Customer;