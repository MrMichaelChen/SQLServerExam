create view V³É¼¨ as
select Student.sno,Sname,Student.Sdept,Cno,SC.Grade 
from Student join sc on student.sno = sc.sno  
where Grade between 60 and 80