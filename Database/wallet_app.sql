create database wallet_app;

use wallet_app;


 CREATE TABLE CUSTOMER (
    CUSTOMERID INT(4),
    FIRSTNAME VARCHAR(20),
    LASTNAME VARCHAR(20),
    EMAILID VARCHAR(20),
    CONTACTNO VARCHAR(20),
    ADDRESSID INT(4),
    GENDER VARCHAR(20),
    PWD VARCHAR(20),
    REGISTERATIONDATE DATE
);
CREATE TABLE ADDRESS (
    ADDRESSID INT(4),
    ADDRESSLINE1 VARCHAR(200),
    ADDRESSLINE2 VARCHAR(200),
    CITY VARCHAR(20),
    STATE VARCHAR(20),
    PINCODE VARCHAR(20)
);



CREATE TABLE ACCOUNT (
    ACCOUNTNUMBER INT(10) primary key,
    CUSTOMERID INT(4),
    ACCOUNTTYPE VARCHAR(20),
    OPENINGBALANCE DECIMAL(15),
    DESCRIPTION VARCHAR(200),
    OPENINGDATE DATE
);


CREATE TABLE transaction (
    transactionid INT(4)  AUTO_INCREMENT,
    transactiontype VARCHAR(20),
    transactiondate DATE,
    amount INT(8),
    description VARCHAR(200),
    fromaccount INT(10),
    toaccount INT(10),
    PRIMARY KEY (transactionid),
    FOREIGN KEY (fromaccount) REFERENCES ACCOUNT(ACCOUNTNUMBER),
    FOREIGN KEY (toaccount) REFERENCES ACCOUNT(ACCOUNTNUMBER)
);


select * from ADDRESS;
select * from account;


select * from transaction;

select * from customer;