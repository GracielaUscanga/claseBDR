# Creación de dos funciones

## Regresión lineal

1. Tomamos los nombres de las columnas de las variables "x" & "y" como parámetros de entrada. 
2. Creamos las variables "pendiente" e "interseccion" como parámetros de salida
3. Declaramos todas las variables que vamos a utilizar para hacer los calculos de la regresión lineal.
4. Calculamos la pendiente y la intersección.

```sql
DROP PROCEDURE IF EXISTS regresion_lineal;

DELIMITER //
CREATE PROCEDURE regresion_lineal(
	IN columna_x CHAR(25), 
	IN columna_y CHAR(25), 
	OUT pendiente FLOAT, 
	OUT interseccion FLOAT
)
BEGIN
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
END //

DELIMITER ;
```

Ahora, mandamos a llamar la función que acabamos de crear.

1. Declaramos nuestras variables de salida.
2. Especificamos el nombre de las columnas donde dice "nombre_columna_x" & "nombre_columna_y".
3. Me da el valor de la pendiente y de la interseccion.

```sql
SET @pendiente = 0;
SET @interseccion = 0;

CALL regresion_lineal('nombre_columna_x', 'nombre_columna_y', @pendiente, @interseccion);

SELECT @pendiente AS betha1, @interseccion AS betha0;

```

\

## Cantidad de elementos de un arreglo

1. Se escoge un string y ponemos un entero de salida.
2. Calculamos cuántos caracteres tiene el string.

```sql
DROP PROCEDURE IF EXISTS cantidad_elementos;

DELIMITER //
CREATE PROCEDURE cantidad_elementos(
	IN arr_string VARCHAR(255), 
	OUT cantidad INT
)

BEGIN
    SET @cantidad = LENGTH(arr_string);
END //

DELIMITER ;

SET @arr = 'string';

CALL cantidad_elementos(@arr, @cantidad);

SELECT @cantidad;
```