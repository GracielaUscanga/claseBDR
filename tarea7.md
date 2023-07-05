lo# Inconsistencias en las bases de datos

Tabla df_online_store.\
Existen 3 clasificaciones de categorías: la primera es independiente, la segunda depende de la primera y la tercera categoría depende de la segunda. \
Observaciones:
* Ocho de los productos no tienen información de la segunda catgoría, por tanto tampoco hay información de la tercera categoría.
```sql
SELECT *
FROM Sephora.df_online_store
WHERE secondary_category = ""
```
|id|product_id|brand_id|brand_name|out_of_stock|primary_category|secondary_category|tertiary_category|sephora_exclusive|
|--|----------|--------|----------|------------|----------------|------------------|-----------------|-----------------|
|986|P504858|1179|BURBERRY|0|Fragrance|||0|
|2043|P449367|3673|Dolce&Gabbana|0|Men|||0|
|6661|P445725|3902|SEPHORA COLLECTION|1|Mini Size|||1|
|6781|P427616|3902|SEPHORA COLLECTION|0|Gifts|||0|
|6782|P422052|3902|SEPHORA COLLECTION|0|Gifts|||0|
|6784|P370325|3902|SEPHORA COLLECTION|0|Gifts|||0|
|6785|P411049|3902|SEPHORA COLLECTION|0|Gifts|||0|
|8190|P426305|5979|Viktor&Rolf|0|Fragrance|||0|


* 990 productos no tienen información de la tercera categoría.

```sql
SELECT 
    COUNT(*)
FROM Sephora.df_online_store
WHERE tertiary_category = ""
```
|COUNT(*)|
|--------|
|990|

Tabla df_product\
Se encuentra información duplicado en los productos, aunque su id es distinto, la información de las columnas restantes es la misma.

```sql
SELECT 
	DISTINCT product_name,
	sizee,
	COUNT(product_name) as num_prod
FROM Sephora.df_product
WHERE ingredients = ""
GROUP BY product_name , sizee
ORDER BY num_prod DESC
```
|product_name|sizee|num_prod|
|------------|-----|--------|
|Rose Quartz Gua Sha||2|
|Makeup Match Powder Brush||2|
|Wild Mint & Eucalyptus Misting Diffuser Oil|0.5 oz/ 15 mL|2|
|Heavenly Luxe Complexion Perfection Brush #7||2|
|Total Coverage Original Sponge||2|
|Eyelash Curler||2|
|Detangling Brush||2|
|Eyebrow Razor Set||2|
|Crystal Facial Roller Set||2|
|Driftwood & Chamomile Misting Diffuser Oil|0.5 oz/ 15 mL|2|
|Birchwood Pine Reed Diffuser|5.9 oz|2|
|Paddle Brush||2|
|Total Coverage Blending Sponge Set||2|
|Total Coverage Angled Sponge||2|
|Mini Candle Set||2|
|Pencil Sharpener||2|
|L’Homme Deodorant|2.6 oz|1|
|Montecito Perfume Travel Spray|0.33 oz / 10 mL eau de parfum spray|1|
|Arancia di Capri|1oz/30mL|1|
|Luce di Colonia Diffuser|6 oz/ 180 mL|1|


# Modificaciones en las bases de datos
```sql
ALTER TABLE Sephora.df_online_store
	RENAME COLUMN Column1 TO id

ALTER TABLE Sephora.df_post
	RENAME COLUMN Column1 TO id
	
ALTER TABLE Sephora.df_product
	RENAME COLUMN Column1 TO id

ALTER TABLE Sephora.df_product
	RENAME COLUMN size TO sizee
	
SELECT * 
FROM Sephora.df_online_store
LIMIT 10
```

|id|product_id|brand_id|brand_name|out_of_stock|primary_category|secondary_category|tertiary_category|sephora_exclusive|
|--|----------|--------|----------|------------|----------------|------------------|-----------------|-----------------|
|0|P473671|6342|19-69|0|Fragrance|Value & Gift Sets|Perfume Gift Sets|0|
|1|P473668|6342|19-69|0|Fragrance|Women|Perfume|0|
|2|P473662|6342|19-69|0|Fragrance|Women|Perfume|0|
|3|P473660|6342|19-69|0|Fragrance|Women|Perfume|0|
|4|P473658|6342|19-69|0|Fragrance|Women|Perfume|0|
|5|P473661|6342|19-69|0|Fragrance|Women|Rollerballs & Travel Size|0|
|6|P473659|6342|19-69|0|Fragrance|Women|Rollerballs & Travel Size|0|
|7|P473666|6342|19-69|0|Fragrance|Women|Perfume|0|
|8|P472300|6342|19-69|0|Fragrance|Women|Perfume|0|
|9|P473667|6342|19-69|0|Fragrance|Women|Rollerballs & Travel Size|0|
