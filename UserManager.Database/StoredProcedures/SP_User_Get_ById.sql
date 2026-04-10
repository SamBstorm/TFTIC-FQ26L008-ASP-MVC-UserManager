CREATE PROCEDURE [dbo].[SP_User_Get_ById]
	@id UNIQUEIDENTIFIER
AS
BEGIN
	SELECT Id,
		Email,
		[Password]
		FROM [V_User]
		WHERE Id = @id
END