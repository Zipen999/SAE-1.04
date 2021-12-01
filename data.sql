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

INSERT INTO Magasin VALUES ('M0001', 'Zone Commerciale La Pardieu', 'Clermont-Ferrand', '63000', 'France', '+33473273614', 'ecouteclients@farnex.com');
INSERT INTO Magasin VALUES ('M0002', 'Belgique', '+32756234576', 'ecouteclientsbelgique@farnex.com');
INSERT INTO Magasin VALUES ('M0003', 'Centre Commercial La Pardieu', 'Clermont-Ferrand', '63000', 'France', '+33473285334', 'ecouteclients@farnex.com');
INSERT INTO Magasin VALUES ('M0004', 'Québec', '+1-418-555-0151', 'ecouteclientsquebec@farnex.com');

INSERT INTO Client(idClient,nom,prenom,date_naissance,rue,ville,codeP,pays,tel,email) VALUES ('C01','Douglas','Chiodo','06/08/2002','','','','USA','405-629-7465','');
INSERT INTO Client(idClient,nom,prenom,date_naissance,rue,ville,codeP,pays,tel,email) VALUES ('C02','Charles','Thompson','03/07/1979','515 Renard Obr','Bordeaux','33800','France','+33758604892','jennie2003@gmail.com');
INSERT INTO Client(idClient,nom,prenom,date_naissance,rue,ville,codeP,pays,tel,email) VALUES ('C03','Paul','Whorton','02/10/1973','3918 Davis Street','','30606','USA','706-372-8624','jamarcus_mclaughl@gmail.com');
INSERT INTO Client(idClient,nom,prenom,date_naissance,rue,ville,codeP,pays,tel,email) VALUES ('C04','Edward','Pitts','09/06/1972','','','','Germany','+49 50 96565789','');

INSERT INTO Achete(date_achat,quantite,client,magasin,produit) VALUES ('26/05/2021','','C01','M30','P0010');
INSERT INTO Achete(date_achat,quantite,client,magasin,produit) VALUES ('20/01/2021',3,'C02','M20','P0001');
INSERT INTO Achete(date_achat,quantite,client,magasin,produit) VALUES ('26/05/2021',2,'C03','M10','P0002');
INSERT INTO Achete(date_achat,quantite,client,magasin,produit) VALUES ('01/12/2021','','C04','M01','P0015');

INSERT INTO Stock(idStock,capacite,rue,ville,codeP,pays) VALUES ('STO99',10000,'16 Rue maurice de vlaminck','Paris','75000','France');
INSERT INTO Stock(idStock,capacite,rue,ville,codeP,pays) VALUES ('STO88',5000,'09 Rue maurice de vlaminck','Paris','75000','France');
INSERT INTO Stock(idStock,capacite,rue,ville,codeP,pays) VALUES ('STO77',500,'977 Sussex Court','Amsterdam','79912','Netherlands');
INSERT INTO Stock(idStock,capacite,rue,ville,codeP,pays) VALUES ('STO66',10500,'Obere Bahnhofstrasse 80','Bellinzona','6503','Switzerland');

INSERT INTO Existe(quantite,produit,stock) VALUES (450,'P0001','STO99');
INSERT INTO Existe(quantite,produit,stock) VALUES (250,'P0002','STO88');
INSERT INTO Existe(quantite,produit,stock) VALUES (0,'P0003','STO77');
INSERT INTO Existe(quantite,produit,stock) VALUES (900,'P0004','STO66');

INSERT INTO Fournisseur(idFournisseur,nom,rue,ville,codeP,pays,tel,email) VALUES ('F99','Nike Supplies','','Berlin','','Germany','+49 30 614297658','');
INSERT INTO Fournisseur(idFournisseur,nom,rue,ville,codeP,pays,tel,email) VALUES ('F51','Adidas Inter','12-18 Rue des Grandes Arcades','Strasbourg','67000','France','+33-805-101-080','');
INSERT INTO Fournisseur(idFournisseur,nom,rue,ville,codeP,pays,tel,email) VALUES ('F10','PRODSPORT','10 Avenue Du Roussillon','Aubière','63170','France','+33-983-658-886','support@prodsport.fr');
INSERT INTO Fournisseur(idFournisseur,nom,rue,ville,codeP,pays,tel,email) VALUES ('F01','KechuR','','','','USA','740-917-4954','service@KechuDom.com');

INSERT INTO Approvisioner(quantite,date_appro,fournisseur,produit) VALUES (500,'26/10/2021','F01','P0001');
INSERT INTO Approvisioner(quantite,date_appro,fournisseur,produit) VALUES (250,'20/10/2021','F10','P0002');
INSERT INTO Approvisioner(quantite,date_appro,fournisseur,produit) VALUES (10,'02/12/2021','F51','P0003');
INSERT INTO Approvisioner(quantite,date_appro,fournisseur,produit) VALUES (600,'16/05/2021','F99','P0004');


/*SELECT * FROM produit WHERE prix*0.75;*/
