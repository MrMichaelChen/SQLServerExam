declare @count_xk int,@avg_grade float,@avg_sscore decimal
exec p_studentInfo '����',2,@count_xk output,@avg_sscore output
select @count_xk as ѡ������,@avg_sscore as ƽ���ɼ�
