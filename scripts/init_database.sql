USE Master;
GO;
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse
END;

GO

CREATE DATABASE DataWarehouse
GO
USE DATABASE DatawareHouse
GO

create schema bronze;
GO
create schema silver;
GO
create schema gold;
