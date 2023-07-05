# Nombre de todas las fragancias 
CREATE VIEW fragrances AS
SELECT *
FROM Sephora.df_online_store dos
JOIN Sephora.df_product dp ON dp.product_id = dos.product_id
WHERE primary_category = 'Fragrance'

SELECT * FROM fragrances

#Raiting por marca y producto
CREATE VIEW brand_raiting AS
SELECT
	product_name,
	brand_name,
	rating,
	sephora_exclusive
FROM Sephora.df_online_store dos 
LEFT JOIN Sephora.df_post dpt ON dpt.product_id = dos.product_id
LEFT JOIN Sephora.df_product dp ON dp.product_id = dos.product_id


SELECT * FROM brand_raiting

#Precios de tertiary category
CREATE VIEW prices AS
SELECT
	tertiary_category,
	price_usd
FROM Sephora.df_online_store dos
RIGHT JOIN Sephora.df_product dp ON dp.product_id = dos.product_id

SELECT * FROM price


#Cuantos productos son exclusivos de los que tienen rating de 5
SELECT
	sephora_exclusive,
	CASE WHEN sephora_exclusive = 1 THEN SUM(sephora_exclusive) ELSE COUNT(sephora_exclusive) END AS total
FROM (SELECT
		product_name,
		brand_name,
		rating,
		sephora_exclusive
	FROM Sephora.df_online_store dos 
	LEFT JOIN Sephora.df_post dpt ON dpt.product_id = dos.product_id
	LEFT JOIN Sephora.df_product dp ON dp.product_id = dos.product_id
	WHERE rating >= 5) sub
GROUP BY sephora_exclusive 


DELIMITER //
CREATE TRIGGER trigger_producto
AFTER INSERT ON Sephora.df_product
FOR EACH ROW
BEGIN 
   INSERT INTO Sephora.df_online_store(product_id) VALUES ('product_id')
END //
DELIMITER
