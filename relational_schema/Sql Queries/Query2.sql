-- Retrieve the number of products in each category:

SELECT category.category_name,(SELECT COUNT(*)
                               FROM product WHERE category_id = category.category_id) as Product_Count
FROM category;
