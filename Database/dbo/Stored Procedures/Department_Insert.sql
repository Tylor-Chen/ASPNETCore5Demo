CREATE PROCEDURE [dbo].[Department_Insert]
    @Name [nvarchar](50),
    @Budget [money],
    @StartDate [datetime],
    @InstructorID [int]
AS
BEGIN
    INSERT [dbo].[Department]([Name], [Budget], [StartDate], [InstructorID])
    VALUES (@Name, @Budget, @StartDate, @InstructorID)

    SELECT t0.[DepartmentID]
    FROM [dbo].[Department] AS t0
    WHERE @@ROWCOUNT > 0 AND t0.[DepartmentID] = scope_identity()
END


