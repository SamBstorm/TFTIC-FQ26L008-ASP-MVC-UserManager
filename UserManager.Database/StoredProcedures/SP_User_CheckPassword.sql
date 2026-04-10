CREATE PROCEDURE [dbo].[SP_User_CheckPassword]
	@email NVARCHAR(320),
	@password NVARCHAR(MAX)
AS
BEGIN
	SELECT	[Id],
			[Email],
			[Password]
		FROM [V_User]
		WHERE [Id] = (
			SELECT	[Id]
				FROM [User] 
				WHERE	[Email] = @email 
					AND [Password] = [dbo].[SF_SaltAndHash](@password, [Salt])
					)
END