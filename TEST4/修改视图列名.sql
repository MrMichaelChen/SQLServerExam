select * from v1
EXEC sp_rename 'v1.[Sno]', 'ѧ��ѧ��', 'COLUMN' 
EXEC sp_rename 'v1.[Sname]', 'ѧ������', 'COLUMN'
EXEC sp_rename 'v1.[Ssex]', '�Ա�', 'COLUMN'
EXEC sp_rename 'v1.[Sage]', '����', 'COLUMN'
select * from v1