select * from course
create unique index ix_kcm1 on course(cname desc) 
Go
SELECT * FROM course ORDER BY Cno DESC