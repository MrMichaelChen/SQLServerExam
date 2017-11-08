CREATE TRIGGER  triSumCourse ON SC
AFTER INSERT
AS
BEGIN TRANSACTION
BEGIN
  DECLARE @InsertSno CHAR(20)
  DECLARE @sumCourse NUMERIC(2,1)

  SELECT @InsertSno=Sno FROM inserted

  SELECT @sumCourse=COUNT(*) FROM SC
	WHERE Sno=@InsertSno
IF (@sumCourse>6)
  BEGIN
PRINT 'ѧ��ѡ�����������ܳ���6��'
     ROLLBACK TRANSACTION
  END
END
