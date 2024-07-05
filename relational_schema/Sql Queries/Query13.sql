-- Customers who have not placed an order

SELECT customer.customer_id, customer.full_name
FROM Customer
WHERE customer_id NOT IN (
    SELECT DISTINCT customer_id
    FROM Cart
    JOIN _order ON cart.cart_id = _order.cart_id
)
