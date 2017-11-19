create proc p_alter
@kc char(20),@xq int
as
update course set cpno=@xq where cno=@kc

