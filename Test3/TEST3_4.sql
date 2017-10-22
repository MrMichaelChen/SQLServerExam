use stu
create table userinfo(
id smallint,
name char(20),
psword char(20),
);
insert into userinfo
values(001,'陈德玺','buerchen')
insert into userinfo
values(002,'不二臣','chendexi')
declare @name char(20)
set @name='陈德玺'
declare @psword char(20)
set @psword = 'buerchen'
declare @customername char
select *from userinfo where name=@name and psword=@psword
print 'successful'
if (select name 
from userinfo
where exists 
( 
select * 
from SC 
where name = @name AND @psword=@psword 
))is not null
	print 'login successfully'
