CREATE TRIGGER  triDelCourse ON Course
AFTER DELETE
AS
BEGIN TRANSACTION
BEGIN
  DECLARE @deleteCno CHAR(20)

  SELECT @deleteCno=Cno FROM deleted


	IF (EXISTS(  SELECT * FROM SC,Course
	WHERE SC.Cno=Course.Cno AND Course.Cno=@deleteCno))
  BEGIN
     PRINT '不能删除有人选的课程'
     ROLLBACK TRANSACTION
  END
END

