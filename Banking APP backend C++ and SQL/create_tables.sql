-- Create the customers table
CREATE TABLE DBS211_customers (
    CUSTOMERNUMBER NUMBER PRIMARY KEY,
    CUSTOMERNAME VARCHAR2(50),
    CONTACTLASTNAME VARCHAR2(50),
    CONTACTFIRSTNAME VARCHAR2(50),
    PHONE VARCHAR2(50),
    ADDRESSLINE1 VARCHAR2(50),
    ADDRESSLINE2 VARCHAR2(50),
    CITY VARCHAR2(50),
    STATE VARCHAR2(50),
    POSTALCODE VARCHAR2(15),
    COUNTRY VARCHAR2(50),
    SALESREPEMPLOYEENUMBER VARCHAR2(50),
    CREDITLIMIT NUMBER
);

-- Create the orders table
CREATE TABLE DBS211_orders (
    ORDERNUMBER NUMBER PRIMARY KEY,
    ORDERDATE DATE,
    REQUIREDDATE DATE,
    SHIPPEDDATE DATE,
    STATUS VARCHAR2(15),
    COMMENTS VARCHAR2(200),
    CUSTOMERNUMBER NUMBER,
    FOREIGN KEY (CUSTOMERNUMBER) REFERENCES DBS211_customers(CUSTOMERNUMBER)
);

-- Create the order details table
CREATE TABLE DBS211_orderdetails (
    ORDERNUMBER NUMBER,
    PRODUCTCODE VARCHAR2(15),
    QUANTITYORDERED NUMBER,
    PRICEEACH NUMBER,
    ORDERLINENUMBER NUMBER,
    PRIMARY KEY (ORDERNUMBER, PRODUCTCODE),
    FOREIGN KEY (ORDERNUMBER) REFERENCES DBS211_orders(ORDERNUMBER)
);

-- Create the products table
CREATE TABLE DBS211_products (
    PRODUCTCODE VARCHAR2(15) PRIMARY KEY,
    PRODUCTNAME VARCHAR2(50),
    PRODUCTLINE VARCHAR2(50),
    PRODUCTVENDOR VARCHAR2(50),
    PRODUCTDESCRIPTION VARCHAR2(255),
    QUANTITYINSTOCK NUMBER,
    BUYPRICE NUMBER,
    MSRP NUMBER
);