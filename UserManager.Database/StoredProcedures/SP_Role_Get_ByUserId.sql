CREATE PROCEDURE [dbo].[SP_Role_Get_ByUserId]
	@userId UNIQUEIDENTIFIER
AS
BEGIN
	SELECT r.Id,
		r.RoleName
		FROM [Role] r
			JOIN [UserRole] ur ON r.Id = ur.RoleId
		WHERE ur.UserId = @userId
END