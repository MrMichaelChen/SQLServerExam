declare @count_xk int,@avg_grade float,@avg_sscore decimal
exec p_studentInfo '张立',2,@count_xk output,@avg_sscore output
select @count_xk as 选课门数,@avg_sscore as 平均成绩
