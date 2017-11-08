CREATE TRIGGER  triDelCourse ON Course
INSTEAD OF DELETE
AS
BEGIN
  DECLARE @deleteCno CHAR(20)

  SELECT @deleteCno=Cno FROM deleted

	IF (EXISTS(  SELECT * FROM SC,Course
	WHERE SC.Cno=Course.Cno AND Course.Cno=@deleteCno))
  BEGIN
		 PRINT '不能删除有人选的课程'
  END
  ELSE
     DELETE Course WHERE Cno=@deleteCno
END
