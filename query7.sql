SELECT * FROM MANAGER;
-- FINDING THE 2ND LARGEST SALARY FROM MANAGER TABLE
SELECT NAME,SALARY FROM MANAGER ORDER BY SALARY DESC LIMIT 1,1;
-- FINDING THE 3RD LARGEST SALARY FROM MANAGER TABLE
SELECT NAME,SALARY FROM MANAGER ORDER BY SALARY DESC LIMIT 2,1;
-- FINDING THE 4TH LARGEST SALARY FROM MANAGER TABLE
SELECT NAME,SALARY FROM MANAGER ORDER BY SALARY DESC LIMIT 3,1;
-- FINDING THE 1ST LARGEST SALARY FROM MANAGER TABLE
SELECT NAME,SALARY FROM MANAGER ORDER BY SALARY DESC LIMIT 0,1;

CREATE TABLE ORDERS1(
	ORDER_ID INT,
    ORDER_DATE DATE,
    CUSTOMER_ID INT);
    CREATE TABLE CUSTOMER1(
    CUST_ID INT,
    CUS_NAME VARCHAR(30),
    CONTACT_NAME VARCHAR(30),
    COUNTRY VARCHAR(30)
    );
INSERT INTO ORDERS1 VALUES(110,"2023-05-01",200),(111,"2023-05-01",300),(112,"2023-05-02",300);
INSERT INTO ORDERS1 VALUES(113,"2023-05-02",121),(114,"2023-05-02",122),(115,"2023-05-02",123);
INSERT INTO CUSTOMER1 VALUES(121,"SUDARSHAN","REDDY","INDIA"),(122,"DILEEP","KUMAR","INDIA"),(123,"VINAY","KUMAR","USA");
SELECT * FROM ORDERS1;
SELECT * FROM CUSTOMERS1;

-- JOIN
SELECT ORDERS1.ORDER_ID,CUSTOMER1.CUS_NAME,ORDERS1.ORDER_DATE FROM ORDERS1
INNER JOIN CUSTOMER1 ON ORDERS1.CUSTOMER_ID=CUSTOMER1.CUST_ID;

CREATE TABLE STAFF(
	ID INT,
    NAME VARCHAR(30),
    AGE INT,
    PACKAGE INT);
CREATE TABLE PAYMENT(
	ID INT,
    DA_TE DATE,
    STAFF_ID INT,
    AMOUNT INT);
INSERT INTO STAFF VALUES(200,"SUDARSHAN",20,101),(201,"VINAY",21,102),(203,"DILEEP",22,103);
INSERT INTO PAYMENT VALUES(301,"2023-05-02",200,2000),(302,"2023-05-01",201,3000),(303,"2023-05-01",202,5000);
SELECT * FROM STAFF;
SELECT * FROM PAYMENT;
-- JOIN WITHOUT USING JOIN COMMAND
SELECT S.ID,NAME,AGE,AMOUNT FROM STAFF S,PAYMENT P WHERE S.ID=P.STAFF_ID;
ALTER TABLE ORDERS1 ADD SHIPPING_ID INT;
SELECT * FROM ORDERS1;
UPDATE ORDERS1 SET SHIPPING_ID=1234 WHERE ORDER_ID=110;
UPDATE ORDERS1 SET SHIPPING_ID=1111 WHERE ORDER_ID=111;
UPDATE ORDERS1 SET SHIPPING_ID=2222 WHERE ORDER_ID=112;
UPDATE ORDERS1 SET SHIPPING_ID=3333 WHERE ORDER_ID=113;
UPDATE ORDERS1 SET SHIPPING_ID=4444 WHERE ORDER_ID=114;
UPDATE ORDERS1 SET SHIPPING_ID=5555 WHERE ORDER_ID=115;
CREATE TABLE SHIPPING (
	SHIPPING_ID INT,
    NAME VARCHAR(30));
INSERT INTO SHIPPING VALUES(1234,'XXX'),(1111,"EXPRESS"),(2222,"YYY"),(3333,"ZZZ"),(4444,"SSS");
SELECT * FROM ORDERS1;
SELECT * FROM CUSTOMER1;
-- JOINING 3 TABLES ORDERS1,CUSTOMER1,SHIPPING
SELECT ORDERS1.ORDER_ID,CUSTOMER1.CUS_NAME,SHIPPING.NAME FROM
((ORDERS1 INNER JOIN CUSTOMER1 ON ORDERS1.CUSTOMER_ID=CUSTOMER1.CUST_ID)
INNER JOIN SHIPPING ON ORDERS1.SHIPPING_ID=SHIPPING.SHIPPING_ID);
-- LEFT JOIN OF ORDERS1 AND CUSTOMER1 TABLES
SELECT CUSTOMER1.CUS_NAME,ORDERS1.ORDER_ID FROM CUSTOMER1 
LEFT JOIN ORDERS1 ON CUSTOMER1.CUST_ID=ORDERS1.CUSTOMER_ID;

SELECT CUSTOMER1.CUS_NAME,ORDERS1.ORDER_ID FROM CUSTOMER1 
LEFT JOIN ORDERS1 ON CUSTOMER1.CUST_ID=ORDERS1.CUSTOMER_ID ORDER BY CUSTOMER1.CUS_NAME;

select customer1.cus_name,orders1.order_id from customer1
left join orders1 on customer1.cust_id=orders1.customer_id where customer1.cus_name like 'p%' order by customer1.cus_name;
-- right join of orders1 and customer1 tables
SELECT CUS_NAME,COUNTRY,ORDER_DATE FROM CUSTOMER1 RIGHT JOIN ORDERS1 ON CUSTOMER1.CUST_ID=ORDERS1.CUSTOMER_ID;