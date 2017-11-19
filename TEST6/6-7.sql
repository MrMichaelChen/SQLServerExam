create proc p_insert
@kc_id varchar(20),@kc_name varchar(20),@xf decimal , @xq int
as
if(@xf >= 1 and @xf <=10)
begin
	insert course(cno,cname,credit,cpno)
	values(@kc_id,@kc_name,@xf,@xq) 
end
else
print  '学分要在1~10之间！！！'
