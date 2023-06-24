# Funciones y ejemplos de agregación para calcular:

## a) Conteo de frecuencias o media

Vemos cuántos productos tiene cada marca 
```sql
SELECT
	brand_name,
	COUNT(DISTINCT product_id) AS number_products
FROM df_online_store
```
|brand_name|number_products|
|----------|---------------|
|19-69|14|
|54 Thrones|4|
|ABBOTT|13|
|Acqua di Parma|15|
|adwoa beauty|19|
|AERIN|24|
|Algenist|33|
|Alpha-H|9|
|alpyn beauty|13|
|ALTERNA Haircare|45|

## b) Mínimos o máximos

Hay productos que tienen distintos precios, ya que tienen distintos tamaños. A continuación vemos el top10 de los productos que tienen el precio más alto, y vemos la diferencia contra su precio más bajo.
```sql
WITH 
PRICE AS (
		SELECT
			product_name,
			MAX(price_usd) AS highest_price,
			MIN(price_usd) AS lowest_price,
			CASE WHEN MAX(price_usd) != MIN(price_usd) THEN 1 ELSE 0 END AS dif_prices
		FROM df_product
		GROUP BY product_name
		ORDER BY highest_price DESC
		)

SELECT * FROM PRICE WHERE dif_prices=1 LIMIT 10
```

|product_name|highest_price|lowest_price|dif_prices|
|------------|-------------|------------|----------|
|Trinity Facial Toning Device + Wrinkle Reducer Attachment Bundle|449.0|429.0|1|
|Trinity + Eye and Lip Enhancer Attachment Bundle|449.0|429.0|1|
|Hyaluronic Serum|320.0|245.0|1|
|Clarifying Serum|255.0|20.0|1|
|Eros Parfum|190.0|145.0|1|
|Red Roses Cologne|155.0|110.0|1|
|Grapefruit Candle|155.0|46.0|1|
|Dior Homme Sport|130.0|82.0|1|
|Pour Homme|100.0|92.0|1|
|Body Fit Anti-Cellulite Contouring & Firming Expert|77.0|66.0|1|


## c) Cuantil cuyo resultado sea distinto a la mediana

```sql
WITH 
DF1 AS (
		SELECT 
			ROW_NUMBER () OVER(ORDER BY loves_count ASC) AS num_row,
			loves_count,
			CASE 
				WHEN FLOOR(@R1) = (ROW_NUMBER () OVER(ORDER BY loves_count ASC)) THEN loves_count
				WHEN (FLOOR(@R1)+1) = (ROW_NUMBER () OVER(ORDER BY loves_count ASC)) THEN loves_count 
			END AS limit_number
		FROM df_post
		ORDER BY loves_count ASC
		)

SELECT 
	MIN(limit_number) as first_num,
	MAX(limit_number) as second_num,
	CASE WHEN 'second_num' > 'first_num' THEN (MIN(limit_number) + (@R1-FLOOR(@R1)*(MAX(limit_number) - MIN(limit_number)))) END AS Q1
FROM DF1;
```

|first_num|second_num|Q1|
|---------|----------|--|
|3756|3758|1633.750|

```sql
WITH 
DF2 AS (
		SELECT 
			ROW_NUMBER () OVER(ORDER BY loves_count ASC) AS num_row,
			loves_count,
			CASE 
				WHEN FLOOR(@R2) = (ROW_NUMBER () OVER(ORDER BY loves_count ASC)) THEN loves_count
				WHEN (FLOOR(@R2)+1) = (ROW_NUMBER () OVER(ORDER BY loves_count ASC)) THEN loves_count 
			END AS limit_number
		FROM df_post
		ORDER BY loves_count ASC
		)

SELECT 
	MIN(limit_number) as first_num,
	MAX(limit_number) as second_num,
	CASE WHEN 'second_num' > 'first_num' THEN (MIN(limit_number) + (@R2-FLOOR(@R2)*(MAX(limit_number) - MIN(limit_number)))) END AS Q2
FROM DF2;
```
|first_num|second_num|Q2|
|---------|----------|--|
|9879|9881|5632.50|

## d) Moda

```sql
SELECT
	rating,
	COUNT(*) AS conteo
FROM df_post
GROUP BY rating
ORDER BY conteo DESC
LIMIT 10
```
|rating|conteo|
|------|------|
||278|
|5.0|256|
|4.0|174|
|4.5|82|
|4.3333|68|
|3.0|66|
|3.5|64|
|4.6667|62|
|4.2|44|
|4.25|40|

## e) Dificultades

Hubo varias dificultades al calcular los cuantiles, ya que comencé a crear variables nuevas  y luego no sabía cómo mandarlas a llamar, adicional al momento de hacer la consulta no podía hacer cálculos porque me mandaba error. Extraer los valores de filas intermedias me costó mucho trabajo, porque no sé hacer funciones espejo, por tanto la opción fue crear nuevas columnas para poder extraer esos valores.


#CDM SHIFT P --> markdown: open preview