/* Question 1: */
SELECT idProduit AS "Produits jamais commandés" FROM produit AS p LEFT JOIN Achete AS ac ON ac.produit = p.idProduit WHERE ac.produit  IS NULL;
/* Question 2: */
SELECT 
/* Question 3: */
SELECT idClient AS "Client qui n'ont jamais commandés" FROM Client AS c LEFT JOIN Achete AS ac ON ac.client = c.idClient WHERE ac.client  IS NULL;

/* Question 4: */
SELECT Achete.quantite*Produit.prix AS "Fontcion à tester pour les client en UE" FROM Produit ,Achete ,Client
WHERE ("Rajouter dans les tables un Truc UE que l'utilisateur entre tout seul")=='UE';

SELECT Achete.quantite*Produit.prix AS "Fontcion à tester pour les client hors UE" FROM Produit ,Achete ,Client
WHERE ("Rajouter dans les tables un Truc UE que l'utilisateur entre tout seul")=='Hors UE';

SELECT Achete.quantite*Produit.prix AS "Fontcion à tester pour les client en UE" FROM Produit ,Achete ,Client
WHERE Client.pays=='France' 
