SELECT '' AS 'Tristan Freitas';
SELECT '' AS 'PROG2220: Section #3';
SELECT '' AS 'Assignment #2: Task #2';

SELECT SYSDATE() AS 'Current System Date';

USE swexpert;

SELECT '';
SELECT '' AS ' *** Task 2, Q1. SWE Exercise 1[2 points] ***';

SELECT DISTINCT c_city
FROM consultant 
ORDER BY c_city ASC;

SELECT '';
SELECT '' AS ' *** Task 2, Q2. SWE Exercise 2[2 points] ***';

SELECT p_id, project_name
FROM project
WHERE parent_p_id IS NOT NULL;

SELECT '';
SELECT '' AS ' *** Task 2, Q3. SWE Exercise 3[4 points] ***';

SELECT p.p_id, p.project_name, p.parent_p_id, p2.project_name
FROM project p LEFT JOIN project p2
    ON p.p_id = p2.p_id AND
    p.parent_p_id = p2.parent_p_id;

SELECT '';
SELECT '' AS ' *** Task 2, Q4. SWE Exercise 4[4 points] ***';

SELECT c_id, skill_id, certification
FROM consultant_skill cs
WHERE certification = "Y"
ORDER BY skill_id, c_id;

SELECT '';
SELECT '' AS ' *** Task 2, Q5. SWE Exercise 3[4 points] ***';

SELECT c.c_id, c_last, c_first, s.skill_id, s.skill_description
FROM consultant c 
	JOIN consultant_skill cs
		ON c.c_id = cs.c_id
	JOIN skill s
		ON cs.skill_id = s.skill_id
WHERE certification = "y"
ORDER BY skill_id, c_id;