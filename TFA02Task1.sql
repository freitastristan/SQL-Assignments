SELECT '' AS 'Tristan Freitas';
SELECT '' AS 'PROG2220: Section #3';
SELECT '' AS 'Assignment #2: Task #1';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS ' *** Task 1, Q1. MGS Exercise 4-1 [5 points] ***';

SELECT category_name, product_name, list_price
FROM Categories c
	JOIN Products p
    ON c.category_id = p.category_id
ORDER BY category_name ASC, product_name ASC;

SELECT '';
SELECT '' AS ' *** Task 1, Q2. MGS Exercise 4-2 [5 points] ***';

SELECT first_name, last_name, line1, city, state, zip_code
FROM Customers c JOIN Addresses a
    ON c.customer_id = a.customer_id
WHERE c.email_address = 'allan.sherwood@yahoo.com';

SELECT '';
SELECT '' AS ' *** Task 1, Q3. MGS Exercise 4-4 [5 points] ***';

SELECT last_name, first_name, order_date, product_name, item_price,
	discount_amount, quantity
FROM Customers c
	JOIN Orders o
		ON c.customer_id = o.customer_id
	JOIN Order_Items oi
		ON o.order_id = oi.order_id
    JOIN Products p
		ON oi.product_id = p.product_id
ORDER BY last_name, order_date, product_name;

SELECT '';
SELECT '' AS ' *** Task 1, Q4. MGS Exercise 4-5 [5 points] ***';

SELECT p.product_id, p.product_name, p.list_price
FROM products p
	JOIN products p2
		ON p.list_price = p2.list_price AND
		p.product_id <> p2.product_id;
		
SELECT '';
SELECT '' AS ' *** Task 1, Q5. MGS Exercise 4-7 [5 points] ***';

SELECT "Shipped" as ship_status, order_id, order_date
FROM Orders
WHERE ship_date IS NOT NULL
UNION
SELECT "Not Shipped" as ship_status, order_id, order_date
FROM Orders
WHERE ship_date IS NULL
ORDER BY order_date;

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
