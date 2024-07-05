-- Apply discount to price of cart and update order price

UPDATE _order 
JOIN cart ON _order.cart_id = cart.cart_id 
JOIN offer ON cart.offer_id = offer.offer_id 
SET _order.amount = cart.total_price * (1 - offer.percentagediscount/100)
WHERE _order.order_id = 15091;