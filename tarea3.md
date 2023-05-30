# Esquema del modelo relacional

Product(product_id, product_name, size, new, ingredients, child_count, limited_edition, price_usd)
Online_Store(brand_id, brand_name, out_of_stock, primary_category, secondary_category, tertiary_category, sephora_exclusive)
Post(loves_count, raiting, reviews)

# Diagrama relacional

```mermaid
erDiagram
    Product }|--o{ Online_store: sell
    Product {
        text(50) product_id 
        text(7) product_name
        text(15) size
        binary new
        text(100) ingredients
        integer child_count
        binary limited_edition
        float price_usd
    }
    Online_store ||--o{ Post: "have/has"
    Online_store {
        text(50) product_id
        text(4) brand_id
        text(25) brand_name
        binary out_of_stock
        text(15) primary_category
        text(30) secondary_category
        text(30) tertiary_category
        binary sephora_exclusive
    }
    Post {
        text(50) product_id
        integer loves_count
        float raiting
        integer reviews
    }
```

# Operadores del álgebra relacional

\Pi