-- Insert Category
INSERT INTO category VALUES (1, 'Mowing Service');
INSERT INTO category VALUES (2, 'Tree&Shrub');
INSERT INTO category VALUES (3, 'Plants&Vegie');
INSERT INTO category VALUES (4, 'Support');

-- Insert Products
INSERT INTO product (name, price, description, category_id) VALUES ('Mowing Small Yard', 30.00, 'Lot Size 10ftx300ft', 1);
INSERT INTO product (name, price, description, category_id) VALUES ('Mowing Medium Yard', 40.00, 'Lot-Size 300ftX500ft', 1);
INSERT INTO product (name, price, description, category_id) VALUES ('Mowing Large Yard', 70.00, '500ftX700ft', 1);
INSERT INTO product (name, price, description, category_id) VALUES ('Tree&Shrub Trimming', 100.00, '0ft-100ft, 0-10 trees&50 shrubs', 2);
INSERT INTO product (name, price, description, category_id) VALUES ('Tree&Shrub Trimming', 60.00, '0ft-50ft, 0-10 tress&30 shrubs', 2);
INSERT INTO product (name, price, description, category_id) VALUES ('Tree&Shrub Trimming', 40.00, '0ft-30ft, 0-10 trees&20 shrubs', 2);
INSERT INTO product (name, price, description, category_id) VALUES ('Perennials', 12.95, 'Package of 6 variety of flowers', 3);
INSERT INTO product (name, price, description, category_id) VALUES ('Annuals', 5.95, 'Package of 6 variety of flowers', 3);
INSERT INTO product (name, price, description, category_id) VALUES ('Vegetables', 4.95, 'Set of 9 plants: Tomatoes, Bell peppers, and Chillies', 3);
INSERT INTO product (name, price, description, category_id) VALUES ('Mulch', 5.95, 'Bag size 10lbs covers 100sqft', 4);
INSERT INTO product (name, price, description, category_id) VALUES ('TopSoil', 10.00, '20lbs', 4);
INSERT INTO product (name, price, description, category_id) VALUES ('Fertilizer', 21.95, '50lbs covers 1500sqft', 4);
