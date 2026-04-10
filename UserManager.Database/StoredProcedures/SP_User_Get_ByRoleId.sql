CREATE PROCEDURE [dbo].[SP_User_Get_ByRoleId]
	@roleId INT
AS
BEGIN
	SELECT u.Id,
		u.Email,
		u.[Password]
		FROM [V_User] u
			JOIN [UserRole] ur ON u.Id = ur.UserId
		WHERE ur.RoleId = @roleId
END