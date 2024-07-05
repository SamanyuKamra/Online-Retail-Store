--Retrieve the sellers who have products in multiple categories:

SELECT distributor.full_name , COUNT(DISTINCT product.category_id) as Category_Count
FROM distributor
INNER JOIN product ON distributor.distributor_id = product.distributor_id
GROUP BY distributor.distributor_id
HAVING Category_Count>1