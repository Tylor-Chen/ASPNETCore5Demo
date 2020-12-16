CREATE PROCEDURE [dbo].[Department_Update]
    @DepartmentID [int],
    @Name [nvarchar](50),
    @Budget [money],
    @StartDate [datetime],
    @InstructorID [int]
AS
BEGIN
    UPDATE [dbo].[Department]
    SET [Name] = @Name, [Budget] = @Budget, [StartDate] = @StartDate, [InstructorID] = @InstructorID, [DateModified] = GETDATE()
    WHERE [DepartmentID] = @DepartmentID

    SELECT @@ROWCOUNT
END


