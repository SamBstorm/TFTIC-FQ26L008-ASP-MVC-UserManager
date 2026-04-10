CREATE PROCEDURE [dbo].[SP_Role_Get]
AS
BEGIN
	SELECT 
		Id,
		RoleName
		FROM [Role]
END
