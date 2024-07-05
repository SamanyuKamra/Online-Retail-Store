--Details of all orders at a particular city and payment mode

SELECT order_id, payment_mode
FROM _order
WHERE city = 'Delhi'
UNION
SELECT order_id, 'COD' AS payment_mode
FROM _order
WHERE _order.cart_id IN (
    SELECT cart.cart_id
    FROM cart , _order
    WHERE cart.total_price>0 
)