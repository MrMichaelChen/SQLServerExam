declare @id numeric,@ret int
exec @ret=p_delete 201215121
if @ret =1 print 'û�и�ѧ����'
if @ret =2 print '��ѧ��û��ѡ�Σ�'
if @ret =0 delete from SC where Sno=201215121