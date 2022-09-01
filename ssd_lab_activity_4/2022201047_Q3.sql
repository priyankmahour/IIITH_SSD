use customer_db;
drop procedure if exists multi_para;
DELIMITER $$
CREATE PROCEDURE multi_para()
BEGIN
 -- select count(*) from CUSTOMER where OPENING_AMT+RECEIVE_AMT>10000;
 select CUST_NAME,GRADE from CUSTOMER where OPENING_AMT+RECEIVE_AMT>10000;
 END $$
 
 CALL multi_para();