# Creación de dos funciones

## Regresión lineal

1. Tomamos los nombres de las columnas de las variables "x" & "y" como parámetros de entrada. 
2. Creamos las variables "pendiente" e "interseccion" como parámetros de salida
3. Declaramos todas las variables que vamos a utilizar para hacer los calculos de la regresión lineal.
4. Calculamos la pendiente y la intersección.

```sql
CREATE PROCEDURE regresion_lineal
    @columna_x VARCHAR(25), -- Variable x
    @columna_y VARCHAR(25), -- Variable y
    @pendiente FLOAT OUTPUT,
    @interseccion FLOAT OUTPUT
AS
BEGIN
    DECLARE @n INT;
    DECLARE @sum_x FLOAT;
    DECLARE @sum_y FLOAT;
    DECLARE @sum_xy FLOAT;
    DECLARE @sum_x2 FLOAT;
    
    -- Calculamos el número n de registros y las sumas de x, y, xy, x^2
    SELECT @n = COUNT(*),
           @sum_x = SUM(@columna_x),
           @sum_y = SUM(@columna_y),
           @sum_xy = SUM(@columna_x * @columna_y),
           @sum_x2 = SUM(@columna_x * @columna_x)
    FROM df;

    -- Calculamos la pendiente y la intersección
    SET @pendiente = (@n * @sum_xy - @sum_x * @sum_y) / (@n * @sum_x2 - @sum_x * @sum_x);
    SET @interseccion = (@sum_y * @sum_x2 - @sum_x * @sum_xy) / (@n * @sum_x2 - @sum_x * @sum_x);
END
```

Ahora, mandamos a llamar la función que acabamos de crear.

1. Declaramos nuestras variables de salida.
2. Especificamos el nombre de las columnas donde dice "nombre_columna_x" & "nombre_columna_y".
3. Me da el valor de la pendiente y de la interseccion.

```sql
DECLARE @pendiente FLOAT;
DECLARE @interseccion FLOAT;

EXEC calcular_regresion_lineal 'nombre_columna_x', 'nombre_columna_y', @pendiente OUTPUT, @interseccion OUTPUT;

SELECT @pendiente AS betha_1, @interseccion AS betha_0;
```

