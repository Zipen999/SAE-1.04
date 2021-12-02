DROP TABLE Approvisioner;
DROP TABLE Fournisseur;
DROP TABLE Existe;
DROP TABLE Entrepot;
DROP TABLE Achete;
DROP TABLE Client;
DROP TABLE Magasin;
DROP TABLE Produit;
DROP TABLE Categorie;


CREATE TABLE Categorie(
	idCategorie				char(3) PRIMARY KEY,
	nom  					varchar(30) UNIQUE NOT NULL,
	CONSTRAINT ck_categorie CHECK (nom IN('Foot','Rugby','Natation','Boxe','Hockey','Tennis'))
);

CREATE TABLE Produit(
	idProduit 		char(5) PRIMARY KEY,
	nom 			varchar(30) NOT NULL UNIQUE,
	type 			varchar(30) NOT NULL CONSTRAINT ck_type CHECK (type IN('Tête','Haut','Bas','Chaussure','Accessoire')),
	taille 			varchar(3) NOT NULL CONSTRAINT ck_taille CHECK ((type !='Chaussure' AND taille IN('S','M','L','XL','XXL')) OR (type ='Chaussure' AND taille >= '16' AND taille <= '55')),
	marque 			varchar(30) NOT NULL,
	prix 			numeric(5,2) NOT NULL CONSTRAINT ck_prix CHECK ( prix > 0),
	categorie 		char(3),
	CONSTRAINT fk_categorie FOREIGN KEY (categorie) REFERENCES Categorie(idCategorie)
);

CREATE TABLE Magasin(
	idMagasin			char(5) PRIMARY KEY,
	rue 				varchar(30),
	ville				varchar(40),
	codeP				numeric(5),
	pays 				varchar(42) NOT NULL CONSTRAINT ck_pays CHECK (NOT(pays ='France' AND (rue,ville,codeP) IS NULL)),
	tel 				varchar UNIQUE NOT NULL,
	email 				varchar(45) UNIQUE
);

CREATE TABLE Client(
	idClient 			char(5) PRIMARY KEY,
	nom 				varchar(30) NOT NULL,
	prenom 				varchar(30) NOT NULL,
	date_naissance 		date NOT NULL,
	rue 				varchar(30),
	ville				varchar(40),
	codeP				numeric(5),
	pays 				varchar(42) NOT NULL CONSTRAINT ck_pays CHECK (NOT(pays ='France' AND (rue,ville,codeP) IS NULL)),
	tel 				varchar UNIQUE NOT NULL,
	email				varchar(45) UNIQUE
);

CREATE TABLE Achete(
	date_achat	date NOT NULL,
	quantite	numeric(5) Default 1 CONSTRAINT ck_qtte CHECK (quantite >0),
	client		char(5),
	magasin 	char(5),
	produit 	char(5),
	CONSTRAINT fk_client FOREIGN KEY (client) REFERENCES Client(idClient),
	CONSTRAINT fk_magasin FOREIGN KEY (magasin) REFERENCES Magasin(idMagasin),
	CONSTRAINT fk_prod_ach FOREIGN KEY (produit) REFERENCES Produit(idProduit)
);

CREATE TABLE Entrepot(
	idEntrepot 				char(5) PRIMARY KEY,
	capacite	 			numeric(5) NOT NULL CONSTRAINT ck_cap CHECK (capacite >0),
	rue 					varchar(30) NOT NULL,
	ville 					varchar(30) NOT NULL,
	codeP 					numeric(5) NOT NULL,
	pays 					varchar(30) NOT NULL
);

CREATE TABLE Existe(
	quantite			numeric(5) NOT NULL CONSTRAINT ck_qtte CHECK (quantite >0),
	produit				char(5),
	entrepot			char(5),
	CONSTRAINT fk_prod_ex FOREIGN KEY (produit) REFERENCES Produit(idProduit),
	CONSTRAINT fk_entrepot FOREIGN KEY (entrepot) REFERENCES Entrepot(idEntrepot)
);

CREATE TABLE Fournisseur(
	idFournisseur 	char(3) PRIMARY KEY,
	nom 			varchar(30) NOT NULL,
	rue 			varchar(30),
	ville 			varchar(40),
	codeP			numeric(5),
	pays 			varchar(42) NOT NULL CONSTRAINT ck_pays CHECK (NOT(pays ='France' AND (rue,ville,codeP) IS NULL)),
	tel 			varchar UNIQUE NOT NULL,
	email			varchar(45) UNIQUE
);

CREATE TABLE Approvisioner(
	quantite			numeric(5) NOT NULL CONSTRAINT ck_qtte CHECK (quantite >0),
	date_appro			date NOT NULL,
	fournisseur			char(3),
	produit				char(5),
	CONSTRAINT fk_fourni FOREIGN KEY (fournisseur) REFERENCES Fournisseur(idFournisseur),
	CONSTRAINT fk_prod_ap FOREIGN KEY (produit) REFERENCES Produit(idProduit)
);
