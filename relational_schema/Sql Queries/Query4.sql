--Top 10 products.

SELECT product.product_name , COUNT(*) AS FEEDBACK_COUNT FROM product
JOIN product_feedback
ON product.product_id = product_feedback.product_id
GROUP BY product.product_id
ORDER BY FEEDBACK_COUNT DESC
LIMIT 10