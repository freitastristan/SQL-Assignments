-- cd C:\xampp\mysql\bin

-- mysql -u root -p < G:\mysql\create_my_guitar_shop.sql
-- mysql -u root -p < G:\mysql\TFA03Task2.sql > G:\mysql\TFA03Task2.out

SELECT '' AS 'Tristan Freitas';
SELECT '' AS 'PROG2220: Section #3';
SELECT '' AS 'Assignment #3: Task #2';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Task 2, Q1. MGS Exercise 5-1 [8 points] ***';


INSERT INTO categories(category_name) 
VALUES ('Wind');
SELECT ROW_COUNT() AS 'INSERT: rows affected';

UPDATE categories
SET category_name = "String"
WHERE category_id = 5;
SELECT ROW_COUNT() AS 'UPDATE: rows affected';

DELETE FROM categories
WHERE category_id = 5;
SELECT ROW_COUNT() AS 'DELETE: rows affected';

SELECT '';
SELECT '' AS '*** Task 2, Q2. MGS Exercise 5-4 [6 points] ***';

INSERT INTO Products (product_id, category_id, product_code, product_name, 
	description, list_price, discount_percent, date_added)
VALUES (DEFAULT, 4, "dgx_640", "Yamaha DGX 640 Digital Piano", 
"Yamaha DGX 640 Digital Piano with 88 keys", 845.95, 10, SYSDATE());
SELECT ROW_COUNT() AS 'INSERT: rows affected';

UPDATE Products
SET discount_percent = 30
WHERE product_id = 11; 
SELECT ROW_COUNT() AS 'UPDATE: rows affected';

SELECT '';
SELECT '' AS '*** Task 2, Q3. MGS Exercise 5-7 [6 points] ***';

INSERT INTO Customers (email_address, password, first_name, last_name)
VALUES ("joel@murach.com", " ", "Joel", "Murach");
SELECT ROW_COUNT() AS 'INSERT: rows affected';

UPDATE Customers
SET password = "s3cr3t"
WHERE email_address = "joel@murach.com";
SELECT ROW_COUNT() AS 'UPDATE: rows affected';