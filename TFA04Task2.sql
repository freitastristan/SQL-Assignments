-- cd C:\xampp\mysql\bin

-- mysql -u root -p < G:\mysql\db_setup\create_databases.sql
-- mysql -u root -p < G:\mysql\TFA04Task2.sql > G:\mysql\TFA04Task2.out

SELECT '' AS 'Tristan Freitas';
SELECT '' AS 'PROG2220: Section #3';
SELECT '' AS 'Assignment #4: Task #2';

SELECT SYSDATE() AS 'Current System Date';

use my_guitar_shop; 

SELECT '';
SELECT '' AS '*** Task 2, Q1. MGS Exercise 7-1 [2 points] ***';

SELECT category_name
FROM categories
WHERE category_id IN
	(SELECT category_id
		FROM products);
        
SELECT '';
SELECT '' AS '*** Task 2, Q2. MGS Exercise 7-3 [3 points] ***';

SELECT category_name
FROM categories c
WHERE NOT EXISTS
	(SELECT category_id
		FROM products p
        WHERE p.category_id = c.category_id)
ORDER BY category_name;

SELECT '';
SELECT '' AS '*** Task 2, Q3. MGS Exercise 7-6 [5 points] ***';

SELECT c.customer_id, c.email_address, o.order_id, o.order_date
FROM customers c 
	JOIN orders o
    ON c.customer_id = o.customer_id
WHERE (SELECT MIN(order_date))
GROUP BY c.customer_id
ORDER BY order_date;
