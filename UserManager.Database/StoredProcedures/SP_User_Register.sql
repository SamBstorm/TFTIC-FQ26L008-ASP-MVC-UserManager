CREATE PROCEDURE [dbo].[SP_User_Register]
	@email NVARCHAR(320),
	@password NVARCHAR(MAX)
AS
BEGIN
	DECLARE @salt UNIQUEIDENTIFIER = NEWID();
	INSERT INTO [User] (Email, Password, Salt)
		OUTPUT INSERTED.Id
		VALUES (@email, dbo.SF_SaltAndHash(@password, @salt), @salt);
END