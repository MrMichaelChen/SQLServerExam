CREATE TRIGGER  triDelCourse ON SC
AFTER DELETE
AS
BEGIN TRANSACTION
BEGIN
  DECLARE @deleteCno CHAR(20)
  DECLARE @SCgrade REAL

  SELECT @deleteCno=Cno FROM deleted
  SELECT @SCgrade=Grade FROM deleted
	IF (@SCgrade<60)
  BEGIN
PRINT '����ɾ��������Ŀ��Լ�¼'
     ROLLBACK TRANSACTION
  END
END
