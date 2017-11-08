CREATE TRIGGER  triSumCourse ON SC
INSTEAD OF INSERT
AS
BEGIN
  DECLARE @InsertSno CHAR(20)
  DECLARE @sumCourse NUMERIC(2,1)

  SELECT @InsertSno=Sno FROM inserted

  SELECT @sumCourse=COUNT(*) FROM SC
	WHERE Sno=@InsertSno
  IF (@sumCourse<6)
  BEGIN
     INSERT INTO SC SELECT *FROM inserted
  END
  ELSE
     PRINT '学生选课总门数不能超过6门'
END
