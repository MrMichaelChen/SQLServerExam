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
     PRINT '����ɾ������ѡ�Ŀγ�'
     ROLLBACK TRANSACTION
  END
END

