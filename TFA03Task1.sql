-- cd C:\xampp\mysql\bin

-- mysql -u root -p < G:\mysql\db_setup\create_databases.sql
-- mysql -u root -p < G:\mysql\TFA03Task1.sql > G:\mysql\TFA03Task1.out

SELECT '' AS 'Tristan Freitas';
SELECT '' AS 'PROG2220: Section #3';
SELECT '' AS 'Assignment #3: Task #1';

SELECT SYSDATE() AS 'Current System Date';

USE ap;

SELECT '';
SELECT '' AS '*** Task 1, Q1. Textbook Exercise 5-04 (page 164) [2 points] ***';

INSERT INTO Invoices (invoice_id, vendor_id, invoice_number, invoice_date, invoice_total,
	payment_total, credit_total, terms_id, invoice_due_date, payment_date)
VALUES (DEFAULT, 32, "AX-014-027", '2014-08-01', 434.58, 0.00, 0.00, 2, '2014-08-31', NULL);
SELECT ROW_COUNT() AS 'INSERT: rows affected';

SELECT '';
SELECT '' AS '*** Task 1, Q2. Textbook Exercise 5-05 (page 165) [2 points] ***';

INSERT INTO Invoice_Line_items (invoice_id, invoice_sequence, account_number, 
line_item_amount, line_item_description)
VALUES (last_insert_id(), 1, 160, 180.23, "Hard drive"),
	(last_insert_id(), 2, 527, 254.35, "Exchange Server update"); 
    SELECT ROW_COUNT() AS 'INSERT: rows affected';
    
SELECT '';
SELECT '' AS '*** Task 1, Q3. Textbook Exercise 5-06 (page 165) [2 points] ***';

UPDATE Invoices
SET credit_total = 0.10 * invoice_total, payment_total = invoice_total - credit_total
WHERE invoice_id = 115; 
SELECT ROW_COUNT() AS 'UPDATE: rows affected';

SELECT '';
SELECT '' AS '*** Task 1, Q4. Textbook Exercise 5-09 (page 165) [4 points] ***';

DELETE FROM invoice_line_items
WHERE invoice_id = 115;
SELECT ROW_COUNT() AS 'DELETE: rows affected';

DELETE FROM invoices
WHERE invoice_id = 115;
SELECT ROW_COUNT() AS 'DELETE: rows affected';

