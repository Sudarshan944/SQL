CREATE TABLE CAR(
CAR_NO INT,CAR_NAME VARCHAR(30),CAR_PRICE INT,CAR_QUANTITY INT);
INSERT INTO CAR VALUES (112,"TESLA",20000000,3),(113,"AUDI",15000000,4),(114,"RR",100000000,1);
INSERT INTO CAR VALUES (115,"TESLA",10000000,2),(116,"KIA",15000000,4),(117,"RR",1000000,1);
SELECT * FROM CAR;

SELECT COUNT(CAR_NAME),CAR_PRICE FROM CAR GROUP BY CAR_PRICE;

SELECT COUNT(CAR_NAME) AS COUNT_NUMBER,CAR_PRICE FROM CAR GROUP BY CAR_PRICE;
-- HAVING
SELECT COUNT(CAR_NAME) FROM CAR GROUP BY CAR_PRICE HAVING CAR_PRICE>1000000;
SELECT COUNT(*) FROM CAR GROUP BY CAR_PRICE HAVING CAR_PRICE > 10000000;
CREATE TABLE VISIT(
	ENTRY_DATE DATE,PRICE INT,DURATION INT);
    INSERT INTO VISIT VALUES('2023-5-1',1000,20),('2023-5-1',2000,30),('2023-6-20',3000,45),('2023-5-1',5000,20),('2023-5-1',5000,20);
SELECT * FROM VISIT;
SELECT ENTRY_DATE,COUNT(*) FROM VISIT GROUP BY ENTRY_DATE;
-- EXTRACT KEYWORD
SELECT EXTRACT(YEAR FROM ENTRY_DATE) AS YEAR,
EXTRACT(MONTH FROM ENTRY_DATE) AS MONTH,
ROUND(AVG(PRICE),2) FROM VISIT 
GROUP BY EXTRACT(YEAR FROM ENTRY_DATE),EXTRACT(MONTH FROM ENTRY_DATE),EXTRACT(DAY FROM ENTRY_DATE)
ORDER BY EXTRACT(YEAR FROM ENTRY_DATE),EXTRACT(MONTH FROM ENTRY_DATE);
SELECT * FROM VISIT;
SELECT ENTRY_DATE,ROUND(AVG(PRICE),3) AS AVG_PRICE FROM VISIT GROUP BY ENTRY_DATE HAVING COUNT(*) > 1 ORDER BY ENTRY_DATE;
SELECT ENTRY_DATE,ROUND(AVG(PRICE),3) AS AVG_PRICE FROM VISIT GROUP BY ENTRY_DATE HAVING COUNT(*) > 2 ORDER BY ENTRY_DATE;
SELECT ENTRY_DATE,ROUND(AVG(PRICE),3) AS AVG_PRICE FROM VISIT WHERE DURATION >2000
	GROUP BY ENTRY_DATE HAVING COUNT(*) > 1 ORDER BY ENTRY_DATE;
CREATE TABLE EMPLOYEE(
	EMP_ID INT,
    NAME VARCHAR(25),
    AGE INT,
    COUNTRY VARCHAR(20));
INSERT INTO EMPLOYEE VALUES(101,"SUDARSHAN",20,"INDIA"),(102,"VINAY",22,"AMERICA"),(103,"DILEEP",23,"ENGLAND"),(104,"SAINADH",24,"AFRICA"),(105,"SURESH",22,"INDIA");
SELECT COUNT(COUNTRY) AS COUNTRY_NO,COUNTRY FROM EMPLOYEE GROUP BY COUNTRY HAVING COUNT(COUNTRY)>=2;
SELECT COUNTRY,COUNT(COUNTRY) FROM EMPLOYEE GROUP BY COUNTRY HAVING MIN(AGE)>=22;