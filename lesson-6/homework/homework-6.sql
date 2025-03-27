SELECT DISTINCT 
    LEAST(col1, col2) AS col1, 
    GREATEST(col1, col2) AS col2
FROM InputTbl;

SELECT col1, col2
FROM (
    SELECT 
        CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS col1,
        CASE WHEN col1 > col2 THEN col1 ELSE col2 END AS col2
    FROM InputTbl
) AS t
GROUP BY col1, col2;

SELECT *
FROM TestMultipleZero
WHERE A <> 0 OR B <> 0 OR C <> 0 OR D <> 0;

SELECT *
FROM section1
WHERE id % 2 <> 0;

SELECT *
FROM section1
WHERE id = (SELECT MIN(id) FROM section1);

SELECT *
FROM section1
WHERE id = (SELECT MAX(id) FROM section1);

SELECT *
FROM section1
WHERE name LIKE 'B%';

SELECT *
FROM ProductCodes
WHERE Код LIKE '%\_%' ESCAPE '\';

