use customer_db;
drop table if exists res;
CREATE TABLE res (_name VARCHAR(100),_city VARCHAR(100),_country VARCHAR(40),CUST_GRADE DECIMAL(10,0));
drop procedure if exists info;
DELIMITER ^^
CREATE PROCEDURE info()
BEGIN
DECLARE naam varchar(100);
DECLARE city varchar(100);
DECLARE country varchar(100);
DECLARE CUST_GRADE decimal(10,0);
DECLARE DONE INT DEFAULT FALSE;
DECLARE mycursor CURSOR FOR select CUST_NAME,CUST_CITY,CUST_COUNTRY,GRADE from CUSTOMER where AGENT_CODE like "A00%";
DECLARE CONTINUE handler FOR NOT FOUND SET DONE=1;
OPEN mycursor;
label : LOOP
FETCH mycursor into naam,city,country,CUST_GRADE;
IF DONE THEN LEAVE label;
END IF;
-- select naam,city,country,grade;
insert into res values( naam,city,country,CUST_GRADE);
END LOOP label;
CLOSE mycursor;
select * from res;
END ^^
call info();
