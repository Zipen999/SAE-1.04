INSERT INTO Client(idClient,nom,prenom,date_naissance,rue,ville,codeP,pays,tel,email) VALUES ('C01','Douglas','Chiodo','06/08/2002','','','','USA','405-629-7465','');
INSERT INTO Client(idClient,nom,prenom,date_naissance,rue,ville,codeP,pays,tel,email) VALUES ('C02','Charles','Thompson','03/07/1979','515 Renard Obr','Bordeaux','33800','France','+33758604892','jennie2003@gmail.com');
INSERT INTO Client(idClient,nom,prenom,date_naissance,rue,ville,codeP,pays,tel,email) VALUES ('C03','Paul','Whorton','02/10/1973','3918 Davis Street','','30606','USA','706-372-8624','jamarcus_mclaughl@gmail.com');
INSERT INTO Client(idClient,nom,prenom,date_naissance,rue,ville,codeP,pays,tel,email) VALUES ('C04','Edward','Pitts','09/06/1972','','','','Germany','+49 50 96565789','');

INSERT INTO Achete(date_achat,quantite,client,magasin,produit) VALUES ('26/05/2021','','C01','M30','P0010');
INSERT INTO Achete(date_achat,quantite,client,magasin,produit) VALUES ('20/01/2021','3','C02','M20','P0001');
INSERT INTO Achete(date_achat,quantite,client,magasin,produit) VALUES ('26/05/2021','2','C03','M10','P0002');
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

