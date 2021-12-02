/* Question 1: */
SELECT idProduit AS "Produits jamais commandés" FROM produit AS p LEFT JOIN Achete AS ac ON ac.produit = p.idProduit WHERE ac.produit  IS NULL;
/* Question 2: */

/* Question 3: */
SELECT idClient AS "Client qui n'ont jamais commandés" FROM Client AS c LEFT JOIN Achete AS ac ON ac.client = c.idClient WHERE ac.client  IS NULL;

/* Question 4: */