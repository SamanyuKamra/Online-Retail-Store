--Find details of a all carts by a customer.
SELECT *
FROM Customer
WHERE customer.customer_id = 20095
UNION
SELECT *
FROM cart
WHERE cart.customer_id = 20095