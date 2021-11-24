DROP TABLE Fournisseur;
DROP TABLE Produit;
DROP TABLE Client;
DROP TABLE Stock;
DROP TABLE Categorie;
DROP TABLE Magasin;
DROP TABLE Existe;
DROP TABLE Approvisione;
DROP TABLE Achete;

CREATE TABLE Fournisseur(
	idFournisseur 		char(5) PRIMARY KEY,
	nom 			varchar(30) NOT NULL,
	rue 			varchar(30) NOT NULL,
	ville 			varchar(40) NOT NULL,
	pays 			char(42) NOT NULL,
	codeP 			numeric(5) NOT NULL,
	tel  			numeric(10) UNIQUE NOT NULL,
	email			varchar(45)
);

CREATE TABLE Produit(
	idProduit 		char(5) PRIMARY KEY,
	nom 			varchar(30) NOT NULL,
	type 			varchar(30) NOT NULL,
	taille 			varchar(3) NOT NULL,
	marque 			varchar(30) NOT NULL,
	prix 			numeric(5,2) NOT NULL,
	FOREIGN KEY (idCategorie) REFERENCES Categorie
);

CREATE TABLE Client(
	idClient 			char(5) PRIMARY KEY,
	nom 				varchar(30) NOT NULL,
	prenom 				varchar(30) NOT NULL,
	date_naissance 			date NOT NULL,
	rue 				varchar(30) NOT NULL,
	ville 				varchar(30) NOT NULL,
	codeP 				numeric(5) NOT NULL,
	pays 				varchar(30) NOT NULL,
	tel 				numeric(10) UNIQUE NOT NULL,
	email				varchar(45)
);

CREATE TABLE Stock(
	idStock 			char(5) PRIMARY KEY,
	capacite	 		numeric(5) NOT NULL,
	pays 				varchar(30) NOT NULL,
	rue 				varchar(30) NOT NULL,
	ville 				varchar(30) NOT NULL
);

CREATE TABLE Categorie(
	idCategorie			char(5) PRIMARY KEY,
	nom  				varchar(30) UNIQUE NOT NULL
);

CREATE TABLE Magasin(
	idMagasin			char(5) PRIMARY KEY,
	rue 				varchar(30) NOT NULL,
	ville				varchar(40) NOT NULL,
	pays 				varchar(42) NOT NULL,
	codeP				numeric(5) NOT NULL,
	tel 				numeric(10) NOT NULL,
	email 				varchar(45) NOT NULL
);

CREATE TABLE Existe(
	qte				numeric(5) NOT NULL,
	FOREIGN KEY (idProduit) REFERENCES Produit,
	FOREIGN KEY (idStock) REFERENCES Stock
);

CREATE TABLE Approvisione(
	qte				numeric(5) NOT NULL,
	date_Ap				date NOT NULL,
	FOREIGN KEY (idFournisseur) REFERENCES Fournisseur,
	FOREIGN KEY (idProduit) REFERENCES Produit
);

CREATE TABLE Achete(
	date_ach			date NOT NULL,
	FOREIGN KEY (idClient) REFERENCES Client,
	FOREIGN KEY (idMagasin) REFERENCES Magasin,
	FOREIGN KEY (idProduit) REFERENCES Produit
);
