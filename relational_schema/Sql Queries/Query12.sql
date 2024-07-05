-- Retrieve the names of all customers who have ordered from the same delivery agent
-- more than once, and the delivery agent's average rating
SELECT customer.full_name, AVG(Delivery.avg_rating) AS avg_rating
FROM Customer
JOIN cart ON customer.customer_id = cart.customer_id
JOIN _order ON cart.cart_id = _order.cart_id
JOIN Delivery  ON Delivery.agent_id = _order.agent_id
WHERE Delivery.agent_id IN (
    SELECT _order.agent_id
    FROM _order 
    JOIN Delivery ON _order.agent_id = Delivery.agent_id
    GROUP BY Delivery.agent_id
    HAVING COUNT(DISTINCT _order.cart_id) >= 2
)
GROUP BY customer.customer_id;