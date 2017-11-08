CREATE TRIGGER  triSdept ON Student
INSTEAD OF INSERT
AS
BEGIN
  DECLARE @newSdept CHAR(20);
  SELECT @newSdept=Sdept FROM inserted
IF NOT(@newSdept IN ('CS','IS','MA'))
  BEGIN
     PRINT 'Sdept只能是(IS,MA,CS)三种'
  END
ELSE
     INSERT INTO Student  SELECT *FROM inserted     
END