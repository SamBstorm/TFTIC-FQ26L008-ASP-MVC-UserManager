CREATE PROCEDURE [dbo].[SP_Role_Insert]
	@roleName NVARCHAR(50)
AS 
BEGIN
	INSERT INTO [Role]([RoleName])
		OUTPUT INSERTED.Id
		VALUES (@roleName);
END
