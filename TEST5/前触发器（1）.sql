CREATE TRIGGER  triSdept ON Student
INSTEAD OF INSERT
AS
BEGIN
  DECLARE @newSdept CHAR(20);
  SELECT @newSdept=Sdept FROM inserted
IF NOT(@newSdept IN ('CS','IS','MA'))
  BEGIN
     PRINT 'Sdeptֻ����(IS,MA,CS)����'
  END
ELSE
     INSERT INTO Student  SELECT *FROM inserted     
END