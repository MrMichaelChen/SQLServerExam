USE  STU;
declare @A char(20);
begin
select @A from Student where sname='张亮';　
IF (@A is not null)
    　　PRINT('没有张亮这个同学');
　ELSE
    　　PRINT('已经找到张亮同学信息');　
end　
