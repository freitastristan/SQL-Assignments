-- cd C:\xampp\mysql\bin

-- mysql -u root -p < G:\mysql\create_my_guitar_shop.sql
-- mysql -u root -p < G:\mysql\TFA04Task1.sql > G:\mysql\TFA04Task1.out

SELECT '' AS 'Tristan Freitas';
SELECT '' AS 'PROG2220: Section #3';
SELECT '' AS 'Assignment #4: Task #1';

SELECT SYSDATE() AS 'Current System Date';

use my_guitar_shop; 

SELECT '';
SELECT '' AS '*** Task 1, Q1. MGS Exercise 6-1 [5 points] ***';

SELECT COUNT(order_id) as Order_Count,
	SUM(tax_amount) as Tax_Total
FROM Orders;

SELECT '';
SELECT '' AS '*** Task 1, Q2. MGS Exercise 6-2 [5 points] ***';

SELECT category_name, COUNT(p.product_id), MAX(p.list_price)
FROM categories c
	JOIN products p
    ON c.category_id = p.category_id 
GROUP BY category_name
HAVING MAX(list_price)
ORDER BY COUNT(product_id) DESC;

SELECT '';
SELECT '' AS '*** Task 1, Q3. MGS Exercise 6-6 [5 points] ***';

SELECT product_name, SUM((item_price - discount_amount) * quantity) as product_total
FROM Products p 
	JOIN order_items o
	ON p.product_id = o.product_id
GROUP BY product_name WITH ROLLUP;

