-- cd C:\xampp\mysql\bin

-- mysql -u root -p < G:\mysql\db_setup\create_databases.sql
-- mysql -u root -p < G:\mysql\TFA01Task1.sql > G:\mysql\TFA01Task1.out

SELECT '' AS 'Tristan Freitas';
SELECT '' AS 'PROG2220: Section #3';
SELECT '' AS 'Assignment #1: Task #1';

SELECT SYSDATE() AS 'Current System Date';

USE ap;

SELECT '';
SELECT '' AS '*** Task 1, Q1. Textbook Exercise 3-06 (page 111) [2 points] ***';

SELECT vendor_name, vendor_contact_last_name, vendor_contact_first_name
FROM vendors
ORDER BY vendor_contact_last_name ASC, vendor_contact_first_name ASC
LIMIT 10;

SELECT '';
SELECT '' AS '*** Task 1, Q2. Textbook Exercise 3-07 (page 111) [1 point] ***';

SELECT CONCAT(vendor_contact_last_name, ', ', vendor_contact_first_name) As full_name
FROM vendors
WHERE vendor_contact_last_name REGEXP '^[A-C]|^E'
ORDER BY vendor_contact_last_name ASC, vendor_contact_first_name ASC;

SELECT '';
SELECT '' AS '*** Task 1, Q3 Textbook Exercise 3-08 (page 111)***';

SELECT invoice_due_date as 'Due Date', invoice_total as 'Invoice Total', invoice_total *.10 as '10%', 
	invoice_total + (invoice_total/10) as 'Plus 10%'
FROM invoices
WHERE invoice_total >= 500 AND invoice_total <= 1000
ORDER BY invoice_due_date DESC;

SELECT '';
SELECT '' AS '*** Task 1, Textbook Exercise 3-09 (page 111) [2 points]***';

SELECT invoice_number, invoice_total, payment_total + credit_total as payment_credit_total,
	invoice_total - (payment_total + credit_total) as balance_due
FROM invoices
WHERE invoice_total - (payment_total + credit_total) > 50
ORDER BY balance_due DESC
LIMIT 5;

SELECT '';
SELECT '' AS '*** Task 1, Textbook Exercise 3-10 (page 112) [2 points]***';

SELECT invoice_number, invoice_date, invoice_total - (payment_total + credit_total) as balance_due, 
	payment_date
FROM invoices
WHERE payment_date is NULL;

SELECT '';
SELECT '' AS '*** Task 1, Textbook Exercise 3-11 (page 112) [1 points]***';

SELECT current_date, date_format(current_date, '%m/%d/%Y') as 'current_date';

SELECT '';
SELECT '' AS '*** Task 1, Textbook Exercise 3-12 (page 112) [1 points]***';

SELECT 50000 as starting_principal, (50000*0.065) as interest, 
	(50000 * 0.0065) + 50000 as principal_plus_interest; 
