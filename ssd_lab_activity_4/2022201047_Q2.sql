use customer_db;
drop procedure if exists banglore_cust;
DELIMITER $$
CREATE PROCEDURE banglore_cust(IN cityname nvarchar(30))
BEGIN
-- select cityname;
 select CUST_NAME from CUSTOMER where WORKING_AREA=cityname;
 END $$
 
 CALL banglore_cust("Bangalore");