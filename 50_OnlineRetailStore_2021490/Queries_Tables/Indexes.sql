--Index on Customer Table.
CREATE INDEX full_name on Customer(full_name);

--Index on Administration Table.
CREATE INDEX admin_id on Administration(admin_id);

--Index on distributor Table.
CREATE INDEX full_name on distributor(full_name);

--Index on Delivery Table.
CREATE INDEX full_name on Delivery(full_name);
CREATE INDEX rating on Delivery(avg_rating);

--Index on Category Table.
CREATE INDEX categoryname on Category(category_name);

--Index on Cart Table.
CREATE INDEX totalprice on Cart(total_price);
CREATE INDEX totalitems on Cart(num_items);

--Index on Offer Table.
CREATE INDEX percentagediscount on Offer(percentagediscount);
CREATE INDEX minimunorder on Offer(min_orderval);

--Index on _Order Table.
CREATE INDEX date_ on _Order(date_);
CREATE INDEX amount on _Order(amount);
CREATE INDEX paymentmode on _Order(payment_mode);

--Index on product Table.
CREATE INDEX productname on product(product_name);
CREATE INDEX price on product(price);

--Index on product_feedback Table.
CREATE INDEX product_id on product_feedback(product_id);
