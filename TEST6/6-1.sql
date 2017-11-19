create procedure p_studentdept
@dept char(20) ='软件工程系'
as
select s.sno,s.sname,c.cno,cname,credit
from student s inner join sc
on s.sno=sc.sno inner join Course c 
on c.cno=sc.cno
where sdept=@dept
