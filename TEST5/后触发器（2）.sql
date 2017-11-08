CREATE TRIGGER  triCcredit1 ON SC
AFTER INSERT,DELETE,UPDATE
AS
BEGIN TRANSACTION
BEGIN
  DECLARE @InsertSno CHAR(20)
  DECLARE @deleteSno CHAR(20)
  DECLARE @sumCredit NUMERIC(2,1)

  SELECT @InsertSno=Sno FROM inserted
	SELECT @deleteSno=Sno FROM deleted
	SELECT @sumCredit=SUM(Credit) FROM SC,Course
	WHERE SC.Cno=Course.Cno AND Sno=@deleteSno
	IF (@sumCredit<20)
  BEGIN
PRINT 'ѧ��ѡ��ѧ�ֲ���С��20'
     ROLLBACK TRANSACTION
  END
 
     
  SELECT @sumCredit=SUM(Credit) FROM SC,Course
	WHERE SC.Cno=Course.Cno AND Sno=@InsertSno
	IF (@sumCredit>30)
  BEGIN
     PRINT 'ѧ��ѡ��ѧ�ֲ��ܴ���30'
     ROLLBACK TRANSACTION
  END     
END
