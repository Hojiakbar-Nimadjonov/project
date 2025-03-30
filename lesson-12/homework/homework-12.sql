SELECT REPLACE(REVERSE('SQL Server'), ' ', '');

SELECT STRING_AGG(City, ', ') AS Cities
	FROM YourTable;

	SELECT 
    CASE 
        WHEN CHARINDEX('SQL', 'SQL Server') > 0 AND CHARINDEX('Server', 'SQL Server') > 0 
        THEN 'Found' 
        ELSE 'Not Found' 
    END AS Result;

	SELECT POWER(5, 3) AS Cube;

	SELECT value 
FROM STRING_SPLIT('apple;orange;banana', ';');

SELECT TRIM(' SQL ') AS Result;

SELECT DATEDIFF(HOUR, '2025-03-01 08:00:00', '2025-03-02 12:00:00') AS HourDifference;

SELECT DATEDIFF(MONTH, '2023-05-01', '2025-02-03') AS MonthDifference;

SELECT LEN('Learn SQL Server') - CHARINDEX('LQS', REVERSE('Learn SQL Server')) + 1 AS PositionFromEnd;

SELECT value 
FROM STRING_SPLIT('apple,orange,banana', ',');

SELECT DATEDIFF(DAY, '2025-01-01', GETDATE()) AS DaysDifference;

SELECT LEFT('Data Science', 4) AS FirstFourChars;

SELECT CEILING(SQRT(225)) AS Result;

SELECT CONCAT_WS('|', 'Hello', 'World') AS Result;

SELECT PATINDEX('%[0-9]%', 'abc123xyz') AS FirstDigitPosition;

SELECT CHARINDEX('SQL', 'SQL Server SQL', CHARINDEX('SQL', 'SQL Server SQL') + 1) AS SecondOccurrence;

SELECT DATEPART(YEAR, GETDATE()) AS CurrentYear;

SELECT DATEADD(DAY, -100, GETDATE()) AS Result;

SELECT POWER(7, 2) AS Square;
















