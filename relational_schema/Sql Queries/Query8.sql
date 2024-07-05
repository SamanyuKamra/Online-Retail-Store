--Work done by a particular admin

SELECT full_name,phone
FROM distributor
WHERE distributor.admin_id = 3
UNION
SELECT promocode,min_orderval
FROM offer
WHERE offer.admin_id = 3
UNION
SELECT full_name,avg_rating
FROM Delivery
WHERE Delivery.admin_id = 3