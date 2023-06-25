SELECT *
FROM Sephora.df_online_store
WHERE secondary_category = "";

#----

SELECT 
    COUNT(*)
FROM Sephora.df_online_store
WHERE tertiary_category = "";

#----

SELECT 
	DISTINCT product_name,
	sizee,
	COUNT(product_name) as num_prod
FROM Sephora.df_product
WHERE ingredients = ""
GROUP BY product_name , sizee
ORDER BY num_prod DESC
LIMIT 20


SELECT *
FROM Sephora.df_product
WHERE product_name = 'Driftwood & Chamomile Misting Diffuser Oil'
#----

ALTER TABLE Sephora.df_online_store
	RENAME COLUMN Column1 TO id
	
SELECT * 
FROM Sephora.df_online_store
LIMIT 10

ALTER TABLE Sephora.df_post
	RENAME COLUMN Column1 TO id
	
ALTER TABLE Sephora.df_product
	RENAME COLUMN Column1 TO id
	
ALTER TABLE Sephora.df_product
	RENAME COLUMN size TO sizee
	
SELECT * 
FROM Sephora.df_online_store
LIMIT 10
	