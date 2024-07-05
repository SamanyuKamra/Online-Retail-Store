--Change delivery agents contact info

UPDATE Delivery
SET phone = '+91-XXXXX-XXXXX'
WHERE Delivery.avg_rating < 3.5 AND Delivery.agent_id IN (
    SELECT _order.date_
    FROM _order
    WHERE _order.date_ > '2023-01-01'
)