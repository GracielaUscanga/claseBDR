## Base de datos

Una tienda de productos de belleza (Sephora) tiene su tienda online. Por el nivel de tienda que es Sephora es muy importante la experiencia de usuario, para dar el mejor servicio en línea, para esto la empresa tiene que tener bien controlado todo lo que sucede dentro de su tienda desde reacciones, comentarios, qué tanto es visitada su tienda online, las ventas, etc. Para tener un mejor control en lo mencionado anteriormente se necesitan varios tipos de datos. 

Comenzamos con la experiencia que es entrar a la tienda online, tienen el apartado de los productos que son edición límitada, especifican qué puedes encontrar en la tienda en línea, en la tienda física o en los dos tipos de tienda, también marcan los productos que son exclusivos de Sephora. Existen también apartados por categorías, esto para poder buscar productos más específicos sin necesidad de ver todo el catálogo. Hay prodcutos que tienen distintas variaciones, por ejemplo un producto puede tener distintos tonos por el tipo de color de piel de cada persona, la tienda en línea te marca cuántas variaciones hay de ese producto y por supuesto el precio. Algo que es importante para ellos al ser productos para la piel, es importante que el cliente conozca qué ingredientes tienen los productos que están consumiendo por cualquier tipo de alergia.

Para tener un mejor control en cuánto a ventas y de qué productos debe de haber restock, revisan qué tipo de producto es y de qué marca, para esto están identificados con el nombre del producto, distintos ids (por producto y por marca), tamaños, colores, los separan por distintas categorías (ej: si es unisex, si es una fragancia, para qué parte del cuerpo se usa).

Tener buenos reviews y buena interacción en la marca es importante para crecer a nivel marketing, ser más reconocida y estar en constante mejora. Es por eso se le da seguimiento a las reacciones de los usuarios en los distintos productos que se venden y los comentarios que escriben, esto con la importancia de ver qué piensan del producto, si es un producto muy visitado, muy vendido o muy compartido hacia otras personas, o sea qué tanto raiting se tiene.

**User experience**:
- ingredients	(texto)
- price_usd	(float)
- value_price_usd	(float)
- sale_price_usd	(float)
- limited_edition	(binario)
- new	(binario)
- online_only	(binario)
- sephora_exclusive	(binario)
- highlights	(texto)
- primary_category	(texto)
- secondary_category	(texto)
- tertiary_category	(texto)

**Ventas**
- product_id	(texto)
- product_name	(texto)
- brand_id	(texto)
- brand_name	(texto)
- size	(texto)
- variation_type	(texto)
- variation_value	(texto)
- variation_desc	(texto)
- out_of_stock	(binario)
- child_count	(entero)
- child_max_price	(entero)
- child_min_price	(entero)

**Marketing**	
- loves_count	(entero)
- rating	(float)
- reviews	(entero)


## SGBD Modelo de base de datos jerárquico

Existen distintos tipos de modelos para organizar los datos, los cuales llevan el nombre de gestores de bases de datos. En este caso hablaremos del **modelo de base de datos jerárquico.**

El modelo de base de datos jerárquico tiene una estructura similar a la de un árbol, tiene una organización *padre-hijo*, esto quiere decir que del segmento padre pueden salir muchos segmentos que serían los hijos, pero un hijo solo puede tener un padre (1:n). Básicamente cada segmento es un nodo, el primer nodo es el nodo raíz (no se desprende de ningún otro), de aquí se comienzan a desprender otros nodos. Cada nodo tiene que estar relacionado con el anterior y tienen que tener orden. Cada nodo (hijo) tiene el mismo nivel si viene del mismo nodo (padre). A los nodos que quedan en el último nivel se les llaman hojas y entre más hojas haya, más peso tiene el modelo.

Este tipo de modelos no son flexibles, ya que una vez formado ya no se puede deshacer. Si se necesita quitar un registro de un nodo va a ocasionar que todo lo que está conectado a ese nodo desaparezca y comenzaremos a tener *lack* de información. Otros tipos de modelos como los relacionales, han superado a este, pero todavía existen algunas aplicaciones que se basan en este modelo; tal es el caso de IMS-IBM que fue uno de los primeros sistemas de bases de datos.

Existen variaas situaciones reales, que no tienen una jerarquía o que existe la relación n:m, en estos casos lo que se podría hacer es crear distintos árboles para cada una de las relaciones, pero no es algo conveniente. Una gran ventaja que se tiene con este tipo de modelos es que son muy sencillos de leer y de comprender.


 Ruiz, D. F., & Moraga de la Rubia, Á. (2001). El Modelo de Datos Jerárquico.
