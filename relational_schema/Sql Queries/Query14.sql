-- Displays order placed by customer and the delivery address

SELECT 
    CONCAT(_order.house_no, ', ', _order.city, ', ', _order.State, ' ', _order.pin_code) AS full_address,
    _order.order_id,
    CONCAT(customer.full_name, ' ') AS customer_name
FROM _order
JOIN cart ON _order.cart_id = cart.cart_id
JOIN customer ON cart.customer_id = customer.customer_id;
