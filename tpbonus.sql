DROP TABLE posologie;
DROP TABLE medicament;
DROP TABLE laboratoire;
DROP TABLE consultation;
DROP TABLE patient;
DROP TABLE medecin;

CREATE TABLE medecin(
	idMedecin char(4) PRIMARY KEY,
	nom char(30)  NOT NULL UNIQUE,
	prenom char(30)  NOT NULL
);

CREATE TABLE patient(
	numPat char(4) PRIMARY KEY,
	nom char(30) NOT NULL UNIQUE,
	prenom char(30) NOT NULL,
	age integer,
	CHECK(age >= 0)
);

CREATE TABLE consultation(
	numCons char(5) PRIMARY KEY,
	date_c date,
	heure time,
	medecin char(4),
	patient char(4),
	FOREIGN KEY (medecin) REFERENCES medecin(idMedecin),
	FOREIGN KEY (patient) REFERENCES patient(numPat),
	CHECK (numCons LIKE 'C%')
);

CREATE TABLE laboratoire(
	numLab char(4) PRIMARY KEY,
	nom char(30) NOT NULL UNIQUE,
	rue char(40),
	codePostal char(5),
	ville char(30),
	pays char(30) default('France')
);

CREATE TABLE medicament(
	numMed char(5),
	nom char(30) NOT NULL UNIQUE,
	prix real,
	lab char(4),
	FOREIGN KEY (lab) REFERENCES laboratoire(numLab),
	CHECK(prix>=0)
);

CREATE TABLE posologie(
	matin integer,
	midi integer,
	soir integer,
	med char(5),
	FOREIGN KEY (med) REFERENCES medicament(numMed),
	CHECK(matin >=0  AND midi >=0 AND soir >=0 )
);