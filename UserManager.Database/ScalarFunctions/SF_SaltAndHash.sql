CREATE FUNCTION [dbo].[SF_SaltAndHash]
(
	@password NVARCHAR(MAX),
	@salt UNIQUEIDENTIFIER
)
RETURNS VARBINARY(64)
AS
BEGIN
	DECLARE @saltedPassword NVARCHAR(MAX) = CONCAT(@password , @salt);
	RETURN HASHBYTES('SHA2_512', @saltedPassword);
END
