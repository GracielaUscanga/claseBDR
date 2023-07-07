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

SET @pendiente = 0;
SET @interseccion = 0;

CALL regresion_lineal('nombre_columna_x', 'nombre_columna_y', @pendiente, @interseccion);

SELECT @pendiente AS betha1, @interseccion AS betha0;

#-------

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