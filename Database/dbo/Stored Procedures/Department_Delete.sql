CREATE PROCEDURE [dbo].[Department_Delete]
    @DepartmentID [int]
AS
BEGIN
    UPDATE [dbo].[Department]
	SET [IsDeleted] = 1
    WHERE [DepartmentID] = @DepartmentID

	SELECT * FROM [dbo].[Department]
    WHERE [DepartmentID] = @DepartmentID
END


