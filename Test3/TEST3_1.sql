USE  STU;
declare @A char(20);
begin
select @A from Student where sname='����';��
IF (@A is not null)
    ����PRINT('û���������ͬѧ');
��ELSE
    ����PRINT('�Ѿ��ҵ�����ͬѧ��Ϣ');��
end��
