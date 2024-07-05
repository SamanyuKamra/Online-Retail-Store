
CREATE TABLE distributor(
    distributor_id INT NOT NULL AUTO_INCREMENT,
    full_name VARCHAR(40) ,
    phone BIGINT ,
    email VARCHAR(40) DEFAULT NULL,
    house_no VARCHAR(40),
    city VARCHAR(30) ,
    State VARCHAR(30),
    pin_code BIGINT,
    PRIMARY KEY(distributor_id) ,
    admin_id INT,
    FOREIGN KEY (admin_id) REFERENCES administration (admin_id)
);

 INSERT INTO distributor(admin_id,distributor_id,full_name,phone,email,house_no,city,State,pin_code)
VALUES 
(1,10,"Amul Dairy","41060858113","nulla.integer@yahoo.net","Ap #701-2322 In Street","AN","India","942744"),
  (3,11,"The Natural Fresh Dairy","01558695463","ut@icloud.couk","782-3027 Malesuada Road","GA","India","144081"),
  (4,12,"Brittania Bakery","38717338111","nullam@aol.org","961-3662 Nunc Av.","PB","India","385766"),
  (3,13,"Tide Cleaning Supplies","92134514845","lacus.vestibulum@google.couk","660 Fringilla Av.","TR","India","306637"),
  (4,14,"Eezy Cleaning Supplies","42129886223","integer.tincidunt@google.org","P.O. Box 811, 6129 Aliquam St.","AS","India","501047"),
  (5,15,"Godrej Cleaning Supplies","55472129758","luctus.lobortis@icloud.edu","9505 Nec St.","UT","India","378459"),
  (4,16,"Vics Wellness","11078042397","commodo.auctor.velit@google.couk","Ap #794-3978 Est. Rd.","MZ","India","513638"),
  (2,17,"Fortune Grainery","84261245187","interdum@protonmail.edu","Ap #483-5286 Sociis St.","DD","India","723593"),
  (4,18,"Classmate Office Supplies","22292162843","non.enim@aol.ca","P.O. Box 620, 696 Eget Road","JK","India","441488"),
  (5,19,"Maximus Beverage Company","51847421342","proin.sed@yahoo.net","Ap #539-1516 Metus. St.","HR","India","566941"),
  (1,20,"Tropicana Beverage Company","38462671851","vestibulum.ut.eros@google.couk","1870 Maecenas Ave","GJ","India","666646"),
  (2,21,"Freshly Yours Fruits & Vegetables","28975647257","est@google.com","P.O. Box 836, 2115 Ut, Avenue","PY","India","458534"),
  (2,22,"Fit Snackers","28975689257","eatfit@google.com","P.O. Box 896, 211Ut, Avenue R","PY","India","458034"),
  (5,23,"Pedigree Pet Foodstuff","5227222975","petst@icloud.edu","95 New St.","UP","India","378411");