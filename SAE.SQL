DROP TABLE Approvisioner;
DROP TABLE Fournisseur;
DROP TABLE Existe;
DROP TABLE Stock;
DROP TABLE Achete;
DROP TABLE Client;
DROP TABLE Magasin;
DROP TABLE Produit;
DROP TABLE Categorie;


CREATE TABLE Categorie(
	idCategorie				char(5) PRIMARY KEY,
	nom  					varchar(30) UNIQUE NOT NULL,
	CONSTRAINT ck_categorie CHECK (nom IN('Foot','Rugby','Natation','Boxe','Hokey','Tennis'))
);

CREATE TABLE Produit(
	idProduit 		char(5) PRIMARY KEY,
	nom 			varchar(30) NOT NULL UNIQUE,
	type 			varchar(30) NOT NULL CONSTRAINT ck_type CHECK (type IN('Tête','Haut','Bas','Chaussure','Accessoire')),
	taille 			varchar(3) NOT NULL CONSTRAINT ck_taille CHECK (type !='Chaussure' AND taille IN('S','M','L','XL','XXL')) OR (type ='Chaussure' AND taille >= 16 AND taille <= 55),
	marque 			varchar(30) NOT NULL,
	prix 			numeric(5,2) NOT NULL,
	categorie 		char(5),
	FOREIGN KEY (categorie) REFERENCES Categorie(idCategorie)
);

CREATE TABLE Magasin(
	idMagasin			char(5) PRIMARY KEY,
	rue 				varchar(30),
	ville				varchar(40),
	codeP				numeric(5),
	pays 				varchar(42) NOT NULL CONSTRAINT ck_pays CHECK (NOT(pays ='France' AND (rue,ville,codeP) IS NOT NULL)),
	tel 				numeric(10) NOT NULL,
	email 				varchar(45)
);

CREATE TABLE Client(
	idClient 			char(5) PRIMARY KEY,
	nom 				varchar(30) NOT NULL,
	prenom 				varchar(30) NOT NULL,
	date_naissance 		date NOT NULL,
	rue 				varchar(30) NOT NULL,
	ville 				varchar(30) NOT NULL,
	codeP 				numeric(5),
	pays 				varchar(30) NOT NULL CONSTRAINT ck_pays CHECK (NOT(pays ='France' AND (rue,ville,codeP) IS NOT NULL)),
	tel 				numeric(10) UNIQUE NOT NULL,
	email				varchar(45)
);

CREATE TABLE Achete(
	date_achat	date NOT NULL,
	client		char(5),
	magasin 	char(5),
	produit 	char(5),
	FOREIGN KEY (Client) REFERENCES Categorie(idClient),
	FOREIGN KEY (Magasin) REFERENCES Magasin(idMagasin),
	FOREIGN KEY (Produit) REFDROP TABLE Approvisioner;
DROP TABLE Fournisseur;
DROP TABLE Existe;
DROP TABLE Stock;
DROP TABLE Achete;
DROP TABLE Client;
DROP TABLE Magasin;
DROP TABLE Produit;
DROP TABLE Categorie;


CREATE TABLE Categorie(
	idCategorie				char(5) PRIMARY KEY,
	nom  					varchar(30) UNIQUE NOT NULL,
	CONSTRAINT ck_categorie CHECK (nom IN('Foot','Rugby','Natation','Boxe','Hokey','Tennis'))
);

CREATE TABLE Produit(
	idProduit 		char(5) PRIMARY KEY,
	nom 			varchar(30) NOT NULL UNIQUE,
	type 			varchar(30) NOT NULL CONSTRAINT ck_type CHECK (type IN('Tête','Haut','Bas','Chaussure','Accessoire')),
	taille 			varchar(3) NOT NULL CONSTRAINT ck_taille CHECK (type !='Chaussure' AND taille IN('S','M','L','XL','XXL')) OR (type ='Chaussure' AND taille >= 16 AND taille <= 55),
	marque 			varchar(30) NOT NULL,
	prix 			numeric(5,2) NOT NULL,
	categorie 		char(5),
	FOREIGN KEY (categorie) REFERENCES Categorie(idCategorie)
);

CREATE TABLE Magasin(
	idMagasin			char(5) PRIMARY KEY,
	rue 				varchar(30),
	ville				varchar(40),
	codeP				numeric(5),
	pays 				varchar(42) NOT NULL CONSTRAINT ck_pays CHECK (NOT(pays ='France' AND (rue,ville,codeP) IS NOT NULL)),
	tel 				numeric(10) NOT NULL,
	email 				varchar(45)
);

CREATE TABLE Client(
	idClient 			char(5) PRIMARY KEY,
	nom 				varchar(30) NOT NULL,
	prenom 				varchar(30) NOT NULL,
	date_naissance 		date NOT NULL,
	rue 				varchar(30) NOT NULL,
	ville 				varchar(30) NOT NULL,
	codeP 				numeric(5),
	pays 				varchar(30) NOT NULL CONSTRAINT ck_pays CHECK (NOT(pays ='France' AND (rue,ville,codeP) IS NOT NULL)),
	tel 				numeric(10) UNIQUE NOT NULL,
	email				varchar(45)
);

CREATE TABLE Achete(
	date_achat	date NOT NULL,
	client		char(5),
	magasin 	char(5),
	produit 	char(5),
	FOREIGN KEY (Client) REFERENCES Categorie(idClient),
	FOREIGN KEY (Magasin) REFERENCES Magasin(idMagasin),
	FOREIGN KEY (Produit) REFERENCES Produit(idProduit)
);

CREATE TABLE Stock(
	idStock 				char(5) PRIMARY KEY,
	capacite	 			numeric(5) NOT NULL,
	pays 					varchar(30) NOT NULL,
	rue 					varchar(30) NOT NULL,
	ville 					varchar(30) NOT NULL
);

CREATE TABLE Existe(

);

CREATE TABLE Fournisseur(
	idFournisseur 	char(5) PRIMARY KEY,
	nom 			varchar(30) NOT NULL,
	rue 			varchar(30) NOT NULL,
	ville 			varchar(40) NOT NULL,
	codeP			numeric(5),
	pays 			varchar(42) NOT NULL CONSTRAINT ck_pays,
	tel 			numeric(10) UNIQUE NOT NULL,
	email			varchar(45)
);

CREATE TABLE Approvisioner(

);ERENCES Produit(idProduit)
);

CREATE TABLE Stock(
	idStock 				char(5) PRIMARY KEY,
	capacite	 			numeric(5) NOT NULL,
	pays 					varchar(30) NOT NULL,
	rue 					varchar(30) NOT NULL,
	ville 					varchar(30) NOT NULL
);

CREATE TABLE Existe(

);

CREATE TABLE Fournisseur(
	idFournisseur 	char(5) PRIMARY KEY,
	nom 			varchar(30) NOT NULL,
	rue 			varchar(30) NOT NULL,
	ville 			varchar(40) NOT NULL,
	codeP			numeric(5),
	pays 			varchar(42) NOT NULL CONSTRAINT ck_pays,
	tel 			numeric(10) UNIQUE NOT NULL,
	email			varchar(45)
);

CREATE TABLE Approvisioner(

);
