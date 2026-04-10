CREATE PROCEDURE [dbo].[SP_Role_Get_ById]
	@id INT
AS
BEGIN
	SELECT Id,
		RoleName
		FROM [Role]
		WHERE Id = @id
END
