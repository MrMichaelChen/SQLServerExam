CREATE TRIGGER  triCcredit2 ON SC
INSTEAD OF INSERT,DELETE,UPDATE
AS
BEGIN
  DECLARE @InsertSno CHAR(20)
  DECLARE @deleteSno CHAR(20)
  DECLARE @temp NUMERIC(2,1)
  DECLARE @sumCredit NUMERIC(2,1)

  SELECT @InsertSno=Sno FROM inserted
	SELECT @deleteSno=Sno FROM deleted
	SELECT @temp=Credit FROM inserted,Course
  WHERE inserted.Cno=Course.Cno
	
  SELECT @sumCredit=SUM(Credit) FROM SC,Course
  WHERE SC.Cno=Course.Cno AND Sno=@deleteSno
	IF (@sumCredit-@temp>=20)
  BEGIN
     INSERT INTO SC SELECT *FROM deleted
  END
  ELSE
     PRINT '学生选修学分不能小于20'

  SELECT @sumCredit=SUM(Credit) FROM SC,Course
	WHERE SC.Cno=Course.Cno AND Sno=@InsertSno
	IF (@sumCredit+@temp<=30)
  BEGIN
     DELETE FROM SC WHERE Sno=@deleteSno
  END
  ELSE
     PRINT '学生选修学分不能大于30'
END
