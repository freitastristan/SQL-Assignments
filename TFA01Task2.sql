-- cd C:\xampp\mysql\bin

-- mysql -u root -p < G:\mysql\create_my_guitar_shop.sql
-- mysql -u root -p < G:\mysql\TFA01Task2.sql > G:\mysql\TFA01Task2.out

SELECT '' AS 'Tristan';
SELECT '' AS 'PROG2220: Section #3';
SELECT '' AS 'Assignment #1: Task #2';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Task 2, Q1. MGS Exercise 3-1 [2 points]***';

SELECT product_code, product_name, list_price, discount_percent
FROM products
ORDER BY list_price DESC;

SELECT '';
SELECT '' AS '*** Task 2, Q3. MGS Exercise 3-3 [5 points]***';

SELECT product_name, list_price, date_added
FROM products
WHERE  list_price > 500 AND list_price < 2000
ORDER BY date_added DESC;

SELECT '';
SELECT '' AS '*** Task 2, Q4. MGS Exercise 3-5 [5 points]***';

SELECT item_id, item_price, discount_amount, quantity, (item_price * quantity) as price_total, 
	(discount_amount * quantity) as discount_total, (item_price - discount_amount * quantity) as item_total
FROM order_items
WHERE item_price - discount_amount * quantity > 500
ORDER BY item_total DESC;

SELECT '';
SELECT '' AS '*** Task 2, Q5. MGS Exercise 3-6 [5 points]***';

SELECT order_id, order_date, ship_date
FROM orders
WHERE ship_date is NULL;

SELECT '';
SELECT '' AS '*** Task 2, Q6. MGS Exercise 3-8 [3 points]***';

SELECT 100 as price, 0.07 as tax_rate,
	(100 * 0.07) as tax_amount, (100 +(100*0.07)) as total;