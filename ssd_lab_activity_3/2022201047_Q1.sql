create TEMPORARY TABLE res11 as 
(select Distinct e.Fname,e.Minit,e.Lname,e.Super_ssn,e.Dno 
from works_on w,employee e 
where w.Hours<40 and w.Hours IS NOT NULL and  w.Essn=e.Ssn);
-- select * from res11;

create TEMPORARY TABLE res12 as 
(select Distinct r.Super_ssn,d.Dnumber,d.Dname
from department d ,res11 r
where d.Mgr_ssn=r.Super_ssn);
-- select * from res12;

select e.Fname,e.Minit,e.Lname,r.Super_ssn,r.Dnumber,r.Dname
from employee e ,res12 r
where e.Ssn=r.Super_ssn;
