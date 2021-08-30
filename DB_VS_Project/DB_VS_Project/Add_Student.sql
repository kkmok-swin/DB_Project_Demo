CREATE PROCEDURE [dbo].[Add_Student]
	@pStuid int,
	@pFName NVARCHAR(100),
	@pSurname NVARCHAR(100)
AS
	INSERT INTO STUDENT (StudentID, FNAME, Surname, NewColumn) VALUES
	(@pStuid, @pFName, @pSurname, NULL)
RETURN 0
