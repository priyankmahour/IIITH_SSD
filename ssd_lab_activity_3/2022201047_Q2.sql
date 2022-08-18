create TEMPORARY TABLE res3 as
(select e1.Super_ssn,count(*) cn
from employee e1
where e1.Super_ssn IS NOT NULL
group by e1.Super_ssn);
-- select * from res3;

select e2.Fname,e2.Minit,e2.Lname,e2.Ssn,e2.Dno,r.cn
from employee e2,res3 r
where e2.Ssn=r.Super_ssn
order by cn asc;
