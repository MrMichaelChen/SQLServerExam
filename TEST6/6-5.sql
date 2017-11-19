create proc p_delete
@id numeric
as
if not exists(select * from Student where Sno=@id)
return 1
if not exists(select * from SC where SC.Sno=@id)
return 2 
else
return 0
