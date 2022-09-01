use customer_db;
drop procedure if exists add_num;
DELIMITER &&
CREATE PROCEDURE add_num(IN x int,IN y int,INOUT sum int)
BEGIN
 set sum=x+y;
 END &&
 
 CALL add_num (12,5,@sum);
 select @sum;