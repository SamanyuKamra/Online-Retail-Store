CREATE TABLE category(
    category_id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(50) ,
    PRIMARY KEY(category_id)

);

INSERT INTO category(category_id,category_name)
VALUES (120, 'Vegetables & Fruits'),
(121, 'Dairy'),
(122, 'Bakery & Biscuits'),
(123, 'Cleaning Essentials'),
(124, 'Pharma & Personal Care'),
(125, 'Atta, Rice & Dal'),
(126, 'Sauces & Spreads'),
(127, 'Home & Office'),
(128, 'Hot & Cold Beverages'),
(129, 'Munchies'),
(130, 'Pet Foods');

