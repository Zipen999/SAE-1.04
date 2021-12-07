/* Question 1: */
SELECT idProduit AS "Produits jamais commandés" 
FROM produit AS p 
LEFT JOIN Achete AS ac ON ac.produit = p.idProduit 
WHERE ac.produit  IS NULL;

/* Question 2: */
SELECT c.idClient AS "Client d'Auvergne", p.idProduit AS "Code produit" , round(p.prix*0.80,2) AS "Reduction de 20% sur les produit acheter en Auvergne"
FROM Client AS c 
INNER JOIN Achete AS a ON c.idClient = a.client
INNER JOIN Produit AS p ON a.produit = p.idProduit
WHERE c.departement='Auvergne' ;

/* Question 3: */
SELECT idClient AS "Client qui n'ont jamais commandés" 
FROM Client AS c 
LEFT JOIN Achete AS ac ON ac.client = c.idClient 
WHERE ac.client  IS NULL;

/* Question 4: */
SELECT SUM(p.prix*a.quantite) AS "Montant de vente totale en France"
FROM Client AS c 
INNER JOIN Achete AS a ON c.idClient = a.client
INNER JOIN Produit AS p ON a.produit = p.idProduit
WHERE c.region='FR';

SELECT SUM(p.prix*a.quantite) AS "Montant de vente totale hors UE"
FROM Client AS c 
INNER JOIN Achete AS a ON c.idClient = a.client
INNER JOIN Produit AS p ON a.produit = p.idProduit
WHERE c.region='horsUE';

SELECT SUM(p.prix*a.quantite) AS "Montant de vente totale UE"
FROM Client AS c 
INNER JOIN Achete AS a ON c.idClient = a.client
INNER JOIN Produit AS p ON a.produit = p.idProduit
WHERE c.region='UE';
