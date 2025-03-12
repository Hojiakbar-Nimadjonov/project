USE AdventureWorksDW2019;

create table DimAccount(id int);

--dbo.DimAccount
--marketing.DimAccount

--dbo.DimAccount = DimAccount

SELECT
	AccountKey,
	AccountDescription,
	AccountType
FROM DimAccount
ORDER BY AccountType desc,
		 AccountDescription asc
offset 10 rows 
fetch first 5 rows only
-- fetch 5 rows only

-- All rows of 2 clos delivered > oreder by > top, offset, first/next

SELECT DISTINCT
	AccountType,
	Operator
FROM DimAccount;
-----------------------------------------------------------------


SELECT
	Accountkey,

	AccountDescription
FROM DimAccount


SELECT COALESCE (NULL, NULL, 'JHON', 'DOE', 1, 2)

-------------------------------------------------------------

SELECT *
FROM DimAccount
WHERE (AccountType='Assets' 
	OR AccountKey <= 10)
	and AccountDescription LIKE 'A%'

SELECT *
FROM DimAccount
WHERE AccountType LIKE 'Asset_' -- Assetq, Assett, 

SELECT *
FROM DimAccount
WHERE AccountType LIKE '[A-N]%' -- Assetq, Assett,

SELECT *
FROM DimAccount
WHERE AccountType LIKE '2___0' -- Assetq, Assett,

-- '%'  - 1 MORE CHARACTER
-- '_' - 1 CHARACTER
-- [] - SELECTION
-- ^ - ANY
-- '-'
-------------------------------------------------------------------------

SELECT TOP 1 PERCENT
	*
FROM FactFinance





