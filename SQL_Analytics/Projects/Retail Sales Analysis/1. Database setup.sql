CREATE DATABASE Superstore_db;
USE Superstore_db;

CREATE TABLE sales_data (
    Row_ID INT,
    Order_ID VARCHAR(20),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(20),
    Customer_ID VARCHAR(20),
    Customer_Name VARCHAR(50),
    Segment VARCHAR(20),
    Country VARCHAR(30),
    City VARCHAR(50),
    State VARCHAR(30),
    Postal_Code VARCHAR(10),
    Region VARCHAR(15),
    Product_ID VARCHAR(20),
    Category VARCHAR(20),
    Sub_Category VARCHAR(20),
    Product_Name VARCHAR(150),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(4,2),
    Profit DECIMAL(10,2)
);