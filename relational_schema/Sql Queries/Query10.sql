--Delete all orders with COD as payment mode
DELETE FROM _order
WHERE payment_mode = 'COD';