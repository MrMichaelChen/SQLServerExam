create proc p_studentInfo
@name char(20),@semester int,@count_xk int output,@avg_sscore float output
as
select @count_xk=count(c.cno) ,@avg_sscore=Avg(Grade)
from Student s join SC 
on s.Sno =SC.Sno join Course c 
on SC.Cno =c.Cno
where s.Sname=@name and c.cpno =@semester
