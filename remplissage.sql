INSERT INTO Categorie VALUES ('C01', 'Foot');
INSERT INTO Categorie VALUES ('C02', 'Rugby');
INSERT INTO Categorie VALUES ('C03', 'Natation');
INSERT INTO Categorie VALUES ('C04', 'Boxe');
INSERT INTO Categorie VALUES ('C05', 'Hockey');
INSERT INTO Categorie VALUES ('C06', 'Tennis');

INSERT INTO Produit VALUES ('P0001', 'Casque de hockey', 'Tête', 'M', 'CCM', '59.99', 'C05');
INSERT INTO Produit VALUES ('P0002', 'Bonnet de bain', 'Tête', 'S', 'Arena', '19.99', 'C03');
INSERT INTO Produit VALUES ('P0003', 'Maillot de foot', 'Haut', 'L', 'Nike', '39.99', 'C01');
INSERT INTO Produit VALUES ('P0004', 'Maillot de rugby', 'Haut', 'L', 'Coq Sportif', '39.99', 'C02' );
INSERT INTO Produit VALUES ('P0005', 'T-Shirt', 'Haut', 'M', 'Adidas', '9.99', 'C06');
INSERT INTO Produit VALUES ('P0006', 'Short de foot', 'Bas', 'S', 'Puma', '19.99', 'C01');
INSERT INTO Produit VALUES ('P0007', 'Short de rugby', 'Bas', 'S', 'Gilbert', '19.99', 'C02');
INSERT INTO Produit VALUES ('P0008', 'Maillot de bain', 'Bas', 'M', 'Commas', '29.99', 'C03');
INSERT INTO Produit VALUES ('P0009', 'Short de boxe', 'Bas', 'XL', 'Venum', '39.99', 'C04');
INSERT INTO Produit VALUES ('P0010', 'Pantalon de hockey', 'Bas', 'L', 'Korok', '49.99', 'C05');
INSERT INTO Produit VALUES ('P0011', 'Short de tennis', 'Bas', 'M', 'Nike', '39.99', 'C06');
INSERT INTO Produit VALUES ('P0012', 'Crampons de foot', 'Chaussure', '41', 'Adidas', '79.99', 'C01');
INSERT INTO Produit VALUES ('P0013', 'Crampons de rugby', 'Chaussure', '45', 'Nike', '89.99', 'C02');
INSERT INTO Produit VALUES ('P0014', 'Patins', 'Chaussure', '39', 'Impala', '99.99', 'C05');
INSERT INTO Produit VALUES ('P0015', 'Baskets', 'Chaussure', '43', 'Puma', '69.99', 'C06');
INSERT INTO Produit VALUES ('P0016', 'Gants de gardien', 'Accessoire', 'XXL', 'Orzale', '59.99', 'C01');
INSERT INTO Produit VALUES ('P0017', 'Lunettes de piscine', 'Accessoire', 'S', 'Speedo', '29.99', 'C03');
INSERT INTO Produit VALUES ('P0018', 'Gants de boxe', 'Accessoire', 'M', 'Century', '39.99', 'C04');
INSERT INTO Produit VALUES ('P0019', 'Crosse de hockey', 'Accessoire', 'L', 'CCM', '79.99', 'C05');
INSERT INTO Produit VALUES ('P0020', 'Raquette de tennis', 'Accessoire', 'XL', 'Wilson', '89.99', 'C06');

INSERT INTO Magasin(idMagasin,rue,ville,codeP,pays,tel,email) VALUES ('M0001','Zone Commerciale La Pardieu','Aubière',63170,'France', '+33473273614', 'ecouteclientsAubière@farnex.com');
INSERT INTO Magasin(idMagasin,rue,ville,codeP,pays,tel,email) VALUES ('M0002',NULL,NULL,NULL,'Belgique','+32756234576','ecouteclientsbelgique@farnex.com');
INSERT INTO Magasin(idMagasin,rue,ville,codeP,pays,tel,email) VALUES ('M0003','Centre Commercial La Pardieu','Clermont-Ferrand',63000, 'France', '+33473285334', 'ecouteclientsClermont@farnex.com');
INSERT INTO Magasin(idMagasin,rue,ville,codeP,pays,tel,email) VALUES ('M0004',NULL,'Québec',NULL,'Canada','+1-418-555-0151','ecouteclientsquebec@farnex.com');

INSERT INTO Client(idClient,nom,prenom,date_naissance,rue,ville,codeP,pays,tel,region,email) VALUES ('CL001','Douglas','Chiodo','06/08/2002',NULL,NULL,NULL,'USA','405-629-7465','horsUE',NULL);
INSERT INTO Client(idClient,nom,prenom,date_naissance,rue,ville,codeP,departement,pays,tel,region,email) VALUES ('CL002','Charles','Thompson','03/07/1979','515 Renard Obr','Bordeaux',33800,'Gironde','France','+33758604892','FR','jennie2003@gmail.com');
INSERT INTO Client(idClient,nom,prenom,date_naissance,rue,ville,codeP,pays,tel,region,email) VALUES ('CL003','Paul','Whorton','02/10/1973','3918 Davis Street',NULL,30606,'USA','706-372-8624','horsUE','jamarcus_mclaughl@gmail.com');
INSERT INTO Client(idClient,nom,prenom,date_naissance,rue,ville,codeP,pays,tel,region,email) VALUES ('CL004','Edward','Pitts','09/06/1972',NULL,NULL,NULL,'Germany','+49 50 96565789','UE',NULL);
INSERT INTO Client(idClient,nom,prenom,date_naissance,rue,ville,codeP,departement,pays,tel,region,email) VALUES ('CL005','Gérard','Romain','09/12/2000','05 Avenue du roussillon','Aubière',63170,'Auvergne','France','+3358604852','FR',NULL);
INSERT INTO Client(idClient,nom,prenom,date_naissance,rue,ville,codeP,departement,pays,tel,region,email) VALUES ('CL006','Elisa','Pierro','02/05/1999','10 Place de Jaude','Clermont-Ferrand',63170,'Auvergne','France','+3376859725','FR',NULL);

INSERT INTO Achete(date_achat,client,magasin,produit) VALUES ('26/05/2021','CL001','M0001','P0010');
INSERT INTO Achete(date_achat,quantite,client,magasin,produit) VALUES ('20/01/2021',3,'CL002','M0002','P0001');
INSERT INTO Achete(date_achat,quantite,client,magasin,produit) VALUES ('26/05/2021',2,'CL003','M0003','P0002');
INSERT INTO Achete(date_achat,client,magasin,produit) VALUES ('01/12/2021','CL004','M0004','P0015');
INSERT INTO Achete(date_achat,client,magasin,produit) VALUES ('01/12/2021','CL006','M0003','P0020');

INSERT INTO Entrepot(idEntrepot,capacite,rue,ville,codeP,pays) VALUES ('STO99',10000,'16 Rue maurice de vlaminck','Paris','75000','France');
INSERT INTO Entrepot(idEntrepot,capacite,rue,ville,codeP,pays) VALUES ('STO88',5000,'09 Rue Charles de gaules','Paris','75000','France');
INSERT INTO Entrepot(idEntrepot,capacite,rue,ville,codeP,pays) VALUES ('STO77',500,'977 Sussex Court','Amsterdam','79912','Netherlands');
INSERT INTO Entrepot(idEntrepot,capacite,rue,ville,codeP,pays) VALUES ('STO66',10500,'Obere Bahnhofstrasse 80','Bellinzona','6503','Switzerland');

INSERT INTO Existe(quantite,produit,entrepot) VALUES (450,'P0001','STO99');
INSERT INTO Existe(quantite,produit,entrepot) VALUES (250,'P0002','STO88');
INSERT INTO Existe(quantite,produit,entrepot) VALUES (0,'P0003','STO77');
INSERT INTO Existe(quantite,produit,entrepot) VALUES (900,'P0004','STO66');

INSERT INTO Fournisseur(idFournisseur,nom,rue,ville,codeP,pays,tel,email) VALUES ('F99','Nike Supplies',NULL,'Berlin',NULL,'Germany','+49 30 614297658',NULL);
INSERT INTO Fournisseur(idFournisseur,nom,rue,ville,codeP,pays,tel,email) VALUES ('F51','Adidas Inter','12-18 Rue des Grandes Arcades','Strasbourg',67000,'France','+33-805-101-080',NULL);
INSERT INTO Fournisseur(idFournisseur,nom,rue,ville,codeP,pays,tel,email) VALUES ('F10','PRODSPORT','10 Avenue Du Roussillon','Aubière',63170,'France','+33-983-658-886','support@prodsport.fr');
INSERT INTO Fournisseur(idFournisseur,nom,rue,ville,codeP,pays,tel,email) VALUES ('F01','KechuR',NULL,NULL,NULL,'USA','740-917-4954','service@KechuDom.com');

INSERT INTO Approvisioner(quantite,date_appro,fournisseur,produit) VALUES (500,'26/10/2021','F01','P0001');
INSERT INTO Approvisioner(quantite,date_appro,fournisseur,produit) VALUES (250,'20/10/2021','F10','P0002');
INSERT INTO Approvisioner(quantite,date_appro,fournisseur,produit) VALUES (10,'02/12/2021','F51','P0003');
INSERT INTO Approvisioner(quantite,date_appro,fournisseur,produit) VALUES (600,'16/05/2021','F99','P0004');
