CREATE DATABASE EXERCISE;
CREATE TABLE CUSTOMER(ID INT PRIMARY KEY,NAME VARCHAR(20),CITY VARCHAR(30),GRADE INT,SALESMAN_ID INT);
INSERT INTO CUSTOMER VALUES(101,"SUDARSHAN","VIZAG",190,201),
	(102,"DILEEP","MUMBAI",192,202),
    (103,"YASWANTH","KOLKATTA",192,203),
    (104,"SURESH","HYDERABAD",189,204),
    (105,"SHANTHAN","CHENNAI",180,205),
    (106,"VINAY","DELHI",172,206);
SELECT * FROM CUSTOMER;
