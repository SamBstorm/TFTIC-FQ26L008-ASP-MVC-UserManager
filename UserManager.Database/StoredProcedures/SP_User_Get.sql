CREATE PROCEDURE [dbo].[SP_User_Get]
AS
BEGIN
	SELECT Id,
		Email,
		[Password]
		FROM [V_User]
END
