DROP TABLE Approvisione;
DROP TABLE Fournisseur;
DROP TABLE Existe;
DROP TABLE Stock;
DROP TABLE Achete;
DROP TABLE Client;
DROP TABLE Magasin;
DROP TABLE Produit;
DROP TABLE Categorie;	

CREATE TABLE Fournisseur(
	idFournisseur 	char(5) PRIMARY KEY,
	nom 			varchar(30) NOT NULL,
	rue 			varchar(30) NOT NULL,
	ville 			varchar(40) NOT NULL,
	pays 			char(42) NOT NULL CONSTRAINT ck_pays CHECK (NOT(pays = 'France' AND codeP IS NOT NULL)),
	codeP 			numeric(5) NOT NULL,
	tel  			numeric(10) UNIQUE NOT NULL,
	email			varchar(45)
);

CREATE TABLE Produit(
	idProduit 		char(5) PRIMARY KEY,
	nom 			varchar(30) NOT NULL,
	type 			varchar(30) NOT NULL CONSTRAINT ck_type CHECK (type IN ('Tête', 'Haut', 'Bas', 'Chaussure', 'Accessoire'),
	taille 			varchar(3) NOT NULL CONSTRAINT ck_taille CHECK (type !='Chaussure' AND taille IN('S','M','L','XL','XXL')) OR (type ='Chaussure', AND taille >=16 AND taille <= 55),
	marque 			varchar(30) NOT NULL,
	prix 			numeric(5,2) NOT NULL CONSTRAINT ck_prix CHECK (prix > 0),
	idCategorie		char(5),
	FOREIGN KEY (idCategorie) REFERENCES Categorie(idCategorie)
);

CREATE TABLE Client(
	idClient 			char(5) PRIMARY KEY,
	nom 				varchar(30) NOT NULL,
	prenom 				varchar(30) NOT NULL,
	date_naissance 		date NOT NULL,
	rue 				varchar(30) NOT NULL,
	ville 				varchar(30) NOT NULL,
	codeP 				numeric(5) NOT NULL,
	pays 				varchar(30) NOT NULL,
	tel 				numeric(10) UNIQUE NOT NULL,
	email				varchar(45)
);

CREATE TABLE Stock(
	idStock 				char(5) PRIMARY KEY,
	capacite	 			numeric(5) NOT NULL CONSTRAINT ck_capacite CHECK (capacite > 0),
	pays 					varchar(30) NOT NULL CONSTRAINT ck_pays CHECK( NOT(pays = 'France' AND codeP IS NOT NULL)),
	rue 					varchar(30) NOT NULL,
	ville 					varchar(30) NOT NULL
);

CREATE TABLE Categorie(
	idCategorie				char(5) PRIMARY KEY,
	nom  					varchar(30) UNIQUE NOT NULL
	CONSTRAINT ck_nom CHECK (nom IN ('Foot', 'Rugby', 'Natation', 'Boxe', 'Hokey', 'Tennis'))
);

CREATE TABLE Magasin(
	idMagasin			char(5) PRIMARY KEY,
	rue 				varchar(30) NOT NULL,
	ville				varchar(40) NOT NULL,
	pays 				varchar(42) NOT NULL CONSTRAINT ck_pays CHECK (NOT(pays = 'France' AND codeP IS NOT NULL)),
	codeP				numeric(5) NOT NULL,
	tel 				numeric(10) NOT NULL,
	email 				varchar(45) NOT NULL
);

CREATE TABLE Existe(
	qte					numeric(5) NOT NULL,
	idProduit			char(5),
	idStock				char(5),
	FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
	FOREIGN KEY (idStock) REFERENCES Stock(idStock)
);

CREATE TABLE Approvisione(
	qte					numeric(5) NOT NULL,
	date_Ap				date NOT NULL,
	idFournisseur		char(5),
	idProduit			char(5),
	FOREIGN KEY (idFournisseur) REFERENCES Fournisseur(idFournisseur),
	FOREIGN KEY (idProduit) REFERENCES Produit(idProduit)
);

CREATE TABLE Achete(
	date_ach			date NOT NULL,
	idClient			char(5),
	idMagasin			char(5),
	idProduit			char(5),
	FOREIGN KEY (idClient) REFERENCES Client(idClient),
	FOREIGN KEY (idMagasin) REFERENCES Magasin(idMagasin),
	FOREIGN KEY (idProduit) REFERENCES Produit(idProduit)
);