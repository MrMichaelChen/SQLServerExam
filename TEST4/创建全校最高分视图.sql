create view VȫУ��߷� as
select Student.sno,Sname,Student.Sdept,Cno,SC.Grade 
from Student join sc on student.sno = sc.sno  
where SC.Grade =( select MAX(Grade) from SC )
