# Modelo entidad-relación
Se representa en un diagrama el modelo entidad-relación de la base de datos de la tarea 1

```mermaid
flowchart LR
    product --- product_name([product_name])
    product --- product_id([product_id])
    product --- size([size])
    product --- new([new])
    product --- ingredients([ingredients])
    product --- child_count([child_count])
    product --- limited_edition([limited_edition])

    product_name --- texto1{{"text (50)"}}
    product_id --- texto2{{"text (7)"}}
    size --- texto3{{"text (15)"}}
    new --- texto4{{binary}}
    ingredients --- texto5{{"text (100)"}}
    child_count --- texto6{{integer}}
    limited_edition --- texto7{{binary}}

    online_store --- brand_id([brand_id])
    online_store --- brand_name([brand_name])
    online_store --- out_of_stock([out_of_stock])
    online_store --- primary_category([primary_category])
    online_store --- secondary_category([secondary_category])
    online_store --- tertiary_category([tertiary_category])
    online_store --- sephora_exclusive([sephora_exclusive])

    brand_id --- texto8{{"text (4)"}}
    brand_name --- texto9{{"text (25)"}}
    out_of_stock --- texto10{{binary}}
    primary_category --- texto11{{"text (15)"}}
    secondary_category --- texto12{{"text (30)"}}
    tertiary_category --- texto13{{"text (30)"}}
    sephora_exclusive --- texto14{{binary}}

    post --- loves_count([loves_count])
    post --- rating([rating])
    post --- reviews([reviews])

    loves_count --- texto15{{integer}}
    rating --- texto16{{float}}
    reviews --- texto17{{integer}}

    price_usd --- texto18{{integer}}

    product -- N --- relacion1{vender} -- N ----- online_store
    product -- 1 --- relacion1{vender} -- 1 ----- price_usd
    online_store -- 1 --- relacion2{tener} -- N --- post

```