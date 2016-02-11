-- cd C:\xampp\mysql\bin

-- mysql -u root -p < G:\mysql\swexpert/swexpert/swexpert.sql
-- mysql -u root -p < G:\mysql\TFA03Task3.sql > G:\mysql\TFA03Task3.out

SELECT '' AS 'Tristan Freitas';
SELECT '' AS 'PROG2220: Section #3';
SELECT '' AS 'Assignment #3: Task #3';

SELECT SYSDATE() AS 'Current System Date';

USE swexpert;

SELECT '';
SELECT '' AS '*** Task 3, Q1. SWE Exercise 1 [2 points] ***';

INSERT INTO consultant (c_id, c_last, c_first, c_mi, c_add,
	c_city, c_state, c_zip, c_phone, c_email)
VALUES (106, "Freitas", "Tristan", "M", "56 Conestoga Road",
	"Waterloo", "NB", "N1P 1L3", "226-852-9874", 
		"tristanfreitashotmail@gmail.com");
SELECT ROW_COUNT() AS 'INSERT: rows affected';

SELECT '';
SELECT '' AS '*** Task 3, Q2. SWE Exercise 2 [2 points] ***';

INSERT INTO client (client_id, client_name, contact_last,
	contact_first, contact_phone)
VALUES (7, "City of Kitchener", "Vrbanovic", "Berry",
	"519 741 2300");
SELECT ROW_COUNT() AS 'INSERT: rows affected';

SELECT '';
SELECT '' AS '*** Task 3, Q3. SWE Exercise 3 [3 points] ***';

INSERT INTO project (p_id, project_name, client_id, mgr_id, 
	parent_p_id)
VALUES (77, "New Buisness", DEFAULT, DEFAULT, DEFAULT);
SELECT ROW_COUNT() AS 'INSERT: rows affected';


SELECT '';
SELECT '' AS '*** Task 3, Q4. SWE Exercise 4 [3 points] ***';

UPDATE project
SET parent_p_id = 77
WHERE parent_p_id IS NULL AND
project_name != "New Buisness";
SELECT ROW_COUNT() AS 'UPDATE: rows affected';