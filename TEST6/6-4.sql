create proc p_countxk
@number decimal,@xk_number decimal output
as
if not exists(select Sno from Student where Sno=@number)
return 1
else if not exists(select Sno from SC where Sno=@number)
return 2
else
begin
select @xk_number=COUNT(sc.cno) from SC where Sno =@number
return 0
End
