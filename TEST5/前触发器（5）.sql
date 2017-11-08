CREATE TRIGGER  triDelCourse ON SC
INSTEAD OF DELETE
AS
BEGIN
  DECLARE @deleteCno CHAR(20)
  DECLARE @SCgrade REAL

  SELECT @deleteCno=Cno FROM deleted
  SELECT @SCgrade=Grade FROM deleted
	IF (@SCgrade<60)
  BEGIN
		 PRINT '不能删除不及格的考试记录'
  END
  ELSE
     DELETE Course WHERE Cno=@deleteCno
END