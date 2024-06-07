CREATE TABLE Smartphone_product (
  product_id serial PRIMARY KEY,
  product_name VARCHAR(255),
  category1 VARCHAR(50),
  category2 VARCHAR(50),
  category3 VARCHAR(50),
  category4 VARCHAR(50),
  price DECIMAL(10,2),
  weight DECIMAL(5,2),
  stock INT ,
  discount INT,
  city varchar,
  state varchar,
  postal_code bigint,
  region varchar
)

INSERT INTO Smartphone_Product (product_name, category1, category2, category3, category4, price, weight, stock, discount, city, state, postal_code, region) 
VALUES
('iPhone 13 Pro Max', 'Electronics', 'Smartphones', 'iOS', 'Apple', 1299.99, 0.2, 100, 10, 'New York', 'NY', 10001, 'Northeast'),
('Galaxy S21 Ultra', 'Electronics', 'Smartphones', 'Android', 'Samsung', 1199.99, 0.25, 120, 5, 'Los Angeles', 'CA', 90001, 'West'),
('Pixel 6 Pro', 'Electronics', 'Smartphones', 'Android', 'Google', 899.99, 0.18, 80, NULL, 'Chicago', 'IL', 60601, 'Midwest'),
('Mate 40 Pro', 'Electronics', 'Smartphones', 'Android', 'Huawei', 1099.99, 0.22, 90, 8, 'Houston', 'TX', 77001, 'South'),
('Xperia 1 III', 'Electronics', 'Smartphones', 'Android', 'Sony', 1299.99, 0.23, 110, NULL, 'Phoenix', 'AZ', 85001, 'West'),
('ROG Phone 5', 'Electronics', 'Smartphones', 'Android', 'ASUS', 999.99, 0.26, 95, 12, 'Philadelphia', 'PA', 19019, 'Northeast'),
('Mi 11 Ultra', 'Electronics', 'Smartphones', 'Android', 'Xiaomi', 1099.99, 0.21, 85, NULL, 'San Antonio', 'TX', 78201, 'South'),
('Find X3 Pro', 'Electronics', 'Smartphones', 'Android', 'Oppo', 1099.99, 0.24, 100, 15, 'San Diego', 'CA', 92101, 'West'),
('Galaxy Z Fold 3', 'Electronics', 'Smartphones', 'Android', 'Samsung', 1799.99, 0.3, 70, NULL, 'Dallas', 'TX', 75201, 'South'),
('Zenfone 8 Flip', 'Electronics', 'Smartphones', 'Android', 'ASUS', 899.99, 0.25, 85, NULL, 'San Jose', 'CA', 95101, 'West'),
('Mi 11 Lite', 'Electronics', 'Smartphones', 'Android', 'Xiaomi', 499.99, 0.17, 150, 20, 'Austin', 'TX', 73301, 'South'),
('X60 Pro+', 'Electronics', 'Smartphones', 'Android', 'Vivo', 1099.99, 0.22, 95, 10, 'Jacksonville', 'FL', 32099, 'South'),
('OnePlus 9 Pro', 'Electronics', 'Smartphones', 'Android', 'OnePlus', 969.99, 0.21, 90, NULL, 'San Francisco', 'CA', 94101, 'West'),
('iQOO 7 Legend', 'Electronics', 'Smartphones', 'Android', 'Vivo', 999.99, 0.22, 80, NULL, 'Indianapolis', 'IN', 46201, 'Midwest'),
('Legion Phone Duel 2', 'Electronics', 'Smartphones', 'Android', 'Lenovo', 1099.99, 0.28, 70, 10, 'Columbus', 'OH', 43201, 'Midwest'),
('X60t Pro', 'Electronics', 'Smartphones', 'Android', 'Vivo', 899.99, 0.23, 100, NULL, 'Fort Worth', 'TX', 76101, 'South'),
('Galaxy A72', 'Electronics', 'Smartphones', 'Android', 'Samsung', 599.99, 0.19, 120, 5, 'Charlotte', 'NC', 28201, 'South'),
('Xperia 5 III', 'Electronics', 'Smartphones', 'Android', 'Sony', 1099.99, 0.23, 100, NULL, 'Detroit', 'MI', 48201, 'Midwest'),
('Mi 11i', 'Electronics', 'Smartphones', 'Android', 'Xiaomi', 799.99, 0.2, 110, 8, 'El Paso', 'TX', 79901, 'South'),
('Axon 30 Ultra', 'Electronics', 'Smartphones', 'Android', 'ZTE', 749.99, 0.24, 100, NULL, 'Seattle', 'WA', 98101, 'West'),
('Zenfone 8', 'Electronics', 'Smartphones', 'Android', 'ASUS', 599.99, 0.18, 130, 10, 'Denver', 'CO', 80201, 'West'),
('Moto G Power', 'Electronics', 'Smartphones', 'Android', 'Motorola', 249.99, 0.19, 200, 15, 'Washington', 'DC', 20001, 'Northeast'),
('G8X ThinQ', 'Electronics', 'Smartphones', 'Android', 'LG', 499.99, 0.21, 150, NULL, 'Memphis', 'TN', 37501, 'South'),
('Fairphone 4', 'Electronics', 'Smartphones', 'Android', 'Fairphone', 649.99, 0.24, 100, 20, 'Boston', 'MA', 02101, 'Northeast'),
('Nord CE 5G', 'Electronics', 'Smartphones', 'Android', 'OnePlus', 399.99, 0.17, 180, NULL, 'Nashville', 'TN', 37201, 'South'),
('Honor 50', 'Electronics', 'Smartphones', 'Android', 'Honor', 399.99, 0.18, 200, NULL, 'Baltimore', 'MD', 21201, 'Northeast'),
('Redmi Note 10 Pro', 'Electronics', 'Smartphones', 'Android', 'Xiaomi', 299.99, 0.18, 250, 25, 'Oklahoma City', 'OK', 73101, 'South'),
('Galaxy M62', 'Electronics', 'Smartphones', 'Android', 'Samsung', 449.99, 0.2, 140, NULL, 'Louisville', 'KY', 40201, 'South');

select * from smartphone_product

 CREATE TABLE customer (
   cus_id SERIAL PRIMARY KEY,
  product_id int,
   customer_name VARCHAR(50),
   gender CHAR(1),
   city VARCHAR(50),
   state VARCHAR(50),
   pincode VARCHAR(50),
FOREIGN key (product_id) REFERENCES smartphone_product(product_id)
 )

 INSERT INTO customer (product_id,customer_name, gender, city, state, pincode)
	 VALUES
(1,'John Doe', 'M', 'New York', 'NY', '10001'),
(2,'Jane Smith', 'F', 'Los Angeles', 'CA', '90001'),
(3,'Michael Johnson', 'M', 'Chicago', 'IL', '60601'),
(4,'Emily Williams', 'F', 'Houston', 'TX', '77001'),
(5,'William Brown', 'M', 'Phoenix', 'AZ', '85001'),
(6,'Emma Jones', 'F', 'Philadelphia', 'PA', '19019'),
(7,'David Miller', 'M', 'San Antonio', 'TX', '78201'),
(8,'Olivia Davis', 'F', 'San Diego', 'CA', '92101'),
(9,'Daniel Garcia', 'M', 'Dallas', 'TX', '75201'),
(10,'Sophia Martinez', 'F', 'San Jose', 'CA', '95101'),
(1,'James Rodriguez', 'M', 'Austin', 'TX', '73301'),
(2,'Isabella Hernandez', 'F', 'Jacksonville', 'FL', '32099'),
(3,'Joseph Lopez', 'M', 'San Francisco', 'CA', '94101'),
(4,'Ava Gonzalez', 'F', 'Indianapolis', 'IN', '46201'),
(5,'Charles Wilson', 'M', 'Columbus', 'OH', '43201'),
(6,'Mia Anderson', 'F', 'Fort Worth', 'TX', '76101'),
(7,'Thomas Taylor', 'M', 'Charlotte', 'NC', '28201'),
(8,'Amelia Thomas', 'F', 'Detroit', 'MI', '48201'),
(9,'Matthew Lee', 'M', 'El Paso', 'TX', '79901'),
(10,'Harper Harris', 'F', 'Seattle', 'WA', '98101'),
(11,'Benjamin Clark', 'M', 'Denver', 'CO', '80201'),
(12,'Evelyn Lewis', 'F', 'Washington', 'DC', '20001'),
(13,'Christopher Hall', 'M', 'Memphis', 'TN', '37501'),
(14,'Chloe Young', 'F', 'Boston', 'MA', '02101'),
(15,'Andrew Allen', 'M', 'Nashville', 'TN', '37201'),
(16,'Ella King', 'F', 'Baltimore', 'MD', '21201'),
(17,'Joshua Wright', 'M', 'Oklahoma City', 'OK', '73101'),
(18,'Grace Scott', 'F', 'Louisville', 'KY', '40201'),
(19,'Ryan Green', 'M', 'Portland', 'OR', '97201'),
(20,'Avery Baker', 'F', 'Las Vegas', 'NV', '88901'),
(20,'Jack Adams', 'M', 'Milwaukee', 'WI', '53201'),
(19,'Natalie Hill', 'F', 'Albuquerque', 'NM', '87101'),
(18,'Liam Nelson', 'M', 'Tucson', 'AZ', '85701'),
(17,'Lily Ramirez', 'F', 'Fresno', 'CA', '93701'),
(16,'Tyler Campbell', 'M', 'Sacramento', 'CA', '95814'),
(15,'Zoe Mitchell', 'F', 'Kansas City', 'MO', '64101'),
(14,'Jackson Roberts', 'M', 'Long Beach', 'CA', '90801'),
(13,'Madison Carter', 'F', 'Mesa', 'AZ', '85201'),
(12,'Noah Phillips', 'M', 'Atlanta', 'GA', '30301'),
(11,'Aria Evans', 'F', 'Virginia Beach', 'VA', '23450'),
(10,'Logan Turner', 'M', 'Omaha', 'NE', '68101'),
(9,'Aurora Parker', 'F', 'Miami', 'FL', '33101'),
(8,'Lucas Cruz', 'M', 'Tulsa', 'OK', '74101'),
(7,'Scarlett Edwards', 'F', 'Oakland', 'CA', '94601'),
(6,'Ethan Collins', 'M', 'Minneapolis', 'MN', '55401'),
(5,'Hannah Stewart', 'F', 'Wichita', 'KS', '67201'),
(4,'Alexander Sanchez', 'M', 'Arlington', 'TX', '76001'),
(3,'Addison Morris', 'F', 'Raleigh', 'NC', '27601'),
(2,'Carter Murphy', 'M', 'New Orleans', 'LA', '70112'),
(1,'Layla Rivera', 'F', 'Honolulu', 'HI', '96801');

select * from customer

CREATE TABLE company (
  com_id SERIAL PRIMARY KEY,
  smartphone_manufacture_country VARCHAR(50),
   smartphone_maker VARCHAR(50),
   smartphone_model VARCHAR(50),
 product_id int,
FOREIGN key (product_id) REFERENCES smartphone_product(product_id)
 )

INSERT INTO company (smartphone_manufacture_country, smartphone_maker, smartphone_model,product_id)
	VALUES
('USA', 'Apple', 'iPhone 13',1),
('China', 'Huawei', 'Mate 40 Pro',2),
('South Korea', 'Samsung', 'Galaxy S21',3),
('Taiwan', 'ASUS', 'ROG Phone 5',4),
('USA', 'Google', 'Pixel 6',5),
('Finland', 'Nokia', '8.3',6),
('China', 'Xiaomi', 'Mi 11',7),
('South Korea', 'LG', 'Wing',8),
('USA', 'OnePlus', '9 Pro',9),
('Sweden', 'OnePlus', 'Nord 2',10),
('India', 'Realme', 'X7 Max',11),
('China', 'Oppo', 'Find X3 Pro',12),
('USA', 'Motorola', 'Edge+',13),
('Japan', 'Sony', 'Xperia 1 III',14),
('China', 'Vivo', 'X60 Pro+',15),
('Germany', 'TCL', '20 Pro 5G',16),
('India', 'Micromax', 'In Note 1',17),
('China', 'Lenovo', 'Legion Phone Duel',18),
('USA', 'Palm', 'Palm Phone',19),
('South Korea', 'LG', 'Velvet',20),
('USA', 'Razer', 'Phone 2',20),
('China', 'ZTE', 'Axon 30 Ultra',21),
('India', 'Xolo', 'Era 5X',21),
('Japan', 'Sharp', 'Aquos R6',22),
('Sweden', 'Fairphone', 'Fairphone 4',23),
('India', 'Lava', 'Z2',24),
('China', 'Meizu', '18 Pro',25),
('USA', 'RED', 'Hydrogen One',19),
('South Korea', 'Samsung', 'Galaxy Z Fold 3',18),
('USA', 'CAT', 'S62 Pro',17),
('China', 'Honor', '50',16),
('India', 'Karbonn', 'Aura Note 2',15),
('Finland', 'Nokia', 'G20',14),
('China', 'Doogee', 'S59 Pro',13),
('USA', 'Palm', 'Palm Phone Mini',12),
('South Korea', 'LG', 'K92 5G',11),
('USA', 'BlackBerry', 'KEY2',10),
('China', 'Elephone', 'U5',9),
('India', 'Spice', 'Smart Flo Pace 3',8),
('Japan', 'Kyocera', 'DuraForce Pro 2',7),
('China', 'Ulefone', 'Armor 9',6),
('USA', 'Essential', 'PH-1',5),
('South Korea', 'LG', 'G8 ThinQ',5),
('USA', 'Fairphone', 'Fairphone 3',4),
('India', 'Micromax', 'Canvas Infinity',3),
('China', 'Vivo', 'iQOO 8',2),
('USA', 'RED', 'Hydrogen One 2',1),
('South Korea', 'Samsung', 'Galaxy A52',10),
('USA', 'Razer', 'Phone 3',11); 

select * from company

select * from customer as cus
 inner join smartphone_product as smartphone
 on cus.product_id = smartphone.product_id
 inner join company as com
 on cus.product_id = com.product_id
 
 --where query
 select * from smartphone_product 

select * from smartphone_product where price > 1000

select * from smartphone_product where city = 'Austin'

--AND, or distinct
select * from smartphone_product where price <1000 and stock >100

select * from smartphone_product where category4 = 'Xiaomi'
and product_name = 'Honor 50'
 
-- NOT,DELETE,UPDATE,ALTER 
select * from smartphone_product
 
 select * from smartphone_product where city = 'Chicago'
 
  select * from smartphone_product Where NOT city = 'Chicago' AND NOT city = 'Nagpur'
  
  select * from smartphone_product where product_name = 'Redmi10s' And product_id = 2

select * from smartphone_product Where city = 'Nagpur'


1. ---using group, having, order by
  select category1, sum(price) as "sumOfprice" from smartphone_Product
  group by category1
  
   select category1, sum(price) as "sumOfsellingprice" from smartphone_Product
  group by category1 
  order by sum(price)

 select category1, sum(price) as "sumOfsellingprice" from smartphone_Product
 group by category1 
 having sum(price)>200
 order by sum(price)
 
  2.---using join,having,group by
 
 select * from smartphone_Product as a
 inner join customer as c
 on a.product_id = c.cus_id
 group by category3
 having sum(price)> 100
 
 3.------window function
 
 select product_name,category1,sum(price)
 over()
 as sum_window,price,stock,discount
 from smartphone_Product
 
  select product_name,category1,avg(price)
 over()
 as avg_window,price,stock,discount
 from smartphone_Product
 
 select product_name,category2,avg(price)
 over(partition by category2
 )
 as avg_window,price,discount,stock
 from smartphone_Product
 
 4.---subQuery
 select * from smartphone_Product
 
 select * from smartphone_Product where weight>0.20
 select * from smartphone_Product where stock = '100'
 
select * from customer as c
left join smartphone_Product as a
on c.cus_id = a.product_id

5---join with where
 
 select * from customer as c
 left join smartphone_Product as a
 on c.cus_id = a.product_id
 where
 category2 = 'Smartphones'
 and 
 gender = 'M'
 
 select * from customer as c
 left join smartphone_Product as a
 on c.cus_id = a.product_id
 where
 category2 = 'Smartphones'
 and 
 gender = 'F'
 
 6-----3 table join

select * from smartphone_Product as a
inner join customer as c
on a.product_id = c.cus_id
inner join company as m
on a.product_id = m.com_id

