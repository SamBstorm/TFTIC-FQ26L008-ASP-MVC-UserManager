CREATE VIEW [dbo].[V_User]
	AS SELECT 
			[Id],
			[Email],
			'********' AS Password
			FROM [User]
