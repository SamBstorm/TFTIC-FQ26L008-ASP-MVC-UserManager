/* Étape 1 : Créer un utilisateur pour l'application 
   (S'il n'existe pas déjà via le login SQL)
*/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'AppUser')
BEGIN
    CREATE USER [AppUser] WITHOUT LOGIN; -- "WITHOUT LOGIN" est parfait pour un exercice local
END
GO

/* Étape 2 : Donner l'accès à la VUE 
*/
GRANT SELECT ON OBJECT::[dbo].[V_User] TO [AppUser];
GO

/* Étape 3 : Donner l'accès à la PROCÉDURE 
*/
GRANT EXECUTE ON SCHEMA::[dbo] TO [AppUser];
GO

/* Étape 4 : S'assurer que la TABLE est interdite
   Même si on ne donne pas de GRANT, un DENY explicite est plus pédagogique pour un exercice.
*/
DENY SELECT ON OBJECT::[dbo].[User] TO [AppUser];
GO