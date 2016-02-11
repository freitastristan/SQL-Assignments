-- cd C:\xampp\mysql\bin

-- mysql -u root -p < G:\mysql\swexpert\swexpert\swexpert.sql
-- mysql -u root -p < G:\mysql\TFA04Task3.sql > G:\mysql\TFA04Task3.out

SELECT '' AS 'Tristan Freitas';
SELECT '' AS 'PROG2220: Section #3';
SELECT '' AS 'Assignment #4: Task #3';

SELECT SYSDATE() AS 'Current System Date';

use swexpert; 

SELECT '';
SELECT '' AS '*** Task 3, Q1. SWE Exercise 1 [2 points] ***';

SELECT ROUND(AVG(score), 1) as Average_Score
FROM evaluation e
WHERE evaluatee_id IN 
(SELECT c_id
		FROM consultant c
        WHERE e.evaluatee_id = c.c_id);

SELECT '';
SELECT '' AS '*** Task 3, Q2. SWE Exercise 2 [3 points] ***';

SELECT COUNT(c_id) as Number_Of_Certified
FROM consultant_skill
WHERE skill_id = 1 AND
certification = "Y";

SELECT '';
SELECT '' AS '*** Task 3, Q3. SWE Exercise 3 [5 points] ***';

SELECT c_first, c_last
FROM consultant c
	JOIN project_consultant pc
	ON pc.c_id = c.c_id
WHERE (SELECT c_first, c_last
		FROM consultant
        WHERE c_first = "Mark" AND
        c_last = "LAST");
        
SELECT '';
SELECT '' AS '*** Task 3, Q4. SWE Exercise 4 [5 points] ***';

SELECT p_id
FROM evaluation e
WHERE score > 0
UNION
SELECT project_name
FROM project p
WHERE (SELECT c_last
		FROM consultant
        WHERE LEFT("z", 1));

