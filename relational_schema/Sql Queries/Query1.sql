-- Details of all customers with order amount above 500
  SELECT customer.customer_id , customer.full_name 
  FROM customer
  WHERE customer.customer_id IN (SELECT cart.customer_id
                                FROM cart
                                WHERE cart.cart_id IN (SELECT _order.cart_id
                                                                  FROM _order
                                                                  WHERE _order.amount>=500 ));