--Create a view named 'CustomerOrders' that shows the order_id, payment_mode, and amount for all orders made by a cart with cart_id 'Cart001':



CREATE VIEW CustomerOrders AS
SELECT order_id, payment_mode, amount
FROM _order
WHERE _order.cart_id = 242;
