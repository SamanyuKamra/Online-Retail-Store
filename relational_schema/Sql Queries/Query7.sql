--Update price of a product in a particular category

UPDATE product
SET price = price * 1.1
WHERE product.category_id = (
    SELECT category.category_id
    FROM category
    WHERE category.category_name = 'Dairy'
)