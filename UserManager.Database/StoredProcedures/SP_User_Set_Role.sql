CREATE PROCEDURE [dbo].[SP_User_Set_Role]
	@userId UNIQUEIDENTIFIER,
	@roleId INT
AS
BEGIN
	INSERT INTO [UserRole]
		VALUES (@userId, @roleId)
END
