select * from v1
EXEC sp_rename 'v1.[Sno]', '学生学号', 'COLUMN' 
EXEC sp_rename 'v1.[Sname]', '学生姓名', 'COLUMN'
EXEC sp_rename 'v1.[Ssex]', '性别', 'COLUMN'
EXEC sp_rename 'v1.[Sage]', '年龄', 'COLUMN'
select * from v1