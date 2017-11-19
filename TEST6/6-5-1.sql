declare @id numeric,@ret int
exec @ret=p_delete 201215121
if @ret =1 print '没有该学生！'
if @ret =2 print '该学生没有选课！'
if @ret =0 delete from SC where Sno=201215121