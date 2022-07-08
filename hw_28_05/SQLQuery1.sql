CREATE DATABASE Publishment
GO
USE Publishment
GO

CREATE TABLE Themes
(
	id				int				PRIMARY KEY identity(1, 1),
	name			nvarchar(50)	UNIQUE
)

GO
CREATE TABLE Country
(
	id				int				PRIMARY KEY identity(1, 1),
	name			nvarchar(50)	UNIQUE
)
GO
CREATE TABLE Shops
(
	id				int				PRIMARY KEY identity(1, 1),
	name			nvarchar(50)	UNIQUE,
	id_country		int				REFERENCES Country(id)
)
GO
CREATE TABLE Author
(
	id				int				PRIMARY KEY identity(1, 1),
	firstname		nvarchar(50)	UNIQUE,
	lastname		nvarchar(50)	UNIQUE,
	id_country		int				REFERENCES Country(id)
)
GO
CREATE TABLE Books
(
	id				int				PRIMARY KEY identity(1, 1), 
	name			nvarchar(50)	UNIQUE,
	id_theme		int				REFERENCES Themes(id),
	id_author		int				REFERENCES Author(id),
	price			money			,
	date_of_publish	datetime		,
	pages			int				NOT NULL
)
GO
CREATE TABLE Sales
(
	id				int				PRIMARY KEY identity(1, 1),
	id_book			int				REFERENCES Books(id),
	date_of_sale	datetime		,
	price			money			,
	quantity		int				,
	id_shop			int				REFERENCES Shops(id)
)
GO