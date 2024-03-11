-- Create  a Database Name as Terminals_Database inside that dump( insert the records or upload the excel files) 
-- which is given to you name as H001 and PartNumber_ALLTerminals_Data.

CREATE DATABASE Terminals_Database;

USE Terminals_database;

-- 1.	Retrieve all columns from the H001_terminal table.
SELECT * FROM dbo.H001;

--2.	Count the total number of records in the PartNumber_ALLTerminals_Data table.

SELECT * FROM PartNumber_ALLTerminals_data;

SELECT COUNT(*) AS TotalRecords
FROM PartNumber_ALLTerminals_Data;

--3.	List distinct values of the 'column_name' column from the H001_terminal table.

SELECT DISTINCT Plant_Code from dbo.H001;

--4.	Retrieve records from the H001_terminal table where 'column_name' is equal to a specific value.

SELECT * FROM H001 WHERE Plant_Code = Material_Group;

--5.	Calculate the average of the 'numeric_column' in the PartNumber_ALLTerminals_Data table.

SELECT AVG(Plant_Code) AS Totalavg
FROM PartNumber_ALLTerminals_Data;

--6.	Find the maximum value in the 'quantity' column of the H001_terminal table.

SELECT * FROM H001;

SELECT MAX(Material_item_no) as Maximum
FROM H001;

--7.	List all columns and records from H001_terminal where 'date_column' is in a specific date range.

-- ANS -- this column not avilable


--8.	Retrieve the top 10 records from PartNumber_ALLTerminals_Data based on a specific column.

SELECT * FROM PartNumber_ALLTerminals_data;

SELECT TOP 10 * FROM PartNumber_ALLTerminals_data;

--9.	Calculate the total sum of the 'amount' column in the H001_terminal table.

SELECT * FROM H001;

--10.	List the average quantity sold per day from the PartNumber_ALLTerminals_Data table.

-- ANS not column avilbale

--11. Update the 'status' column in the H001_terminal table to 'New' for records where 'condition_column' is met.

ALTER TABLE H1
ADD CONDITION_COLUMN VARCHAR(155);

--12.	Find the top 5 Part Numbers with the highest total sales from the PartNumber_ALLTerminals_Data table.

--  ans not column avilabel

--13.	Retrieve records from H001_terminal where the 'text_column' contains a specific word.

-- ANS NOT COLUMN AVILABLE

---14.	Count the number of unique 'categories' in the PartNumber_ALLTerminals_Data table.

-- AND NOT COLUMN AVILABLE

--15.	Find the average price per unit for each 'PartNumber' in the PartNumber_ALLTerminals_Data table.

-- AND NOT COLUMN AVILABLE

--16.	Delete records from H001_terminal where 'date_column' is older than a specific date

--  AND NOT COLUMN AVILABLE

--17.	List the top 3 most recent records from PartNumber_ALLTerminals_Data based on 'date_column'.

-- --  AND NOT COLUMN AVILABLE

--18.	Find the minimum and maximum values of the 'price' column in the H001_terminal table.

-- AND NOT COLUMN AILABLE

--19.	Calculate the total sales for each 'PartNumber' in the PartNumber_ALLTerminals_Data table.

-- AND NOT COLUMN AVILABLE

--20.	Retrieve records from H001_terminal where the 'quantity' is greater than 100 and the 'status' is 'Shipped'.

-- NOT COLUMN AVILALBLE

---Advanced Questions

-- 1.	Retrieve the PartNumbers and their details from H001_terminal and PartNumber_ALLTerminals_Data.

SELECT * 
FROM H001
INNER JOIN PartNumber_ALLTerminals_Data ON H001.Material_Item_No = PartNumber_ALLTerminals_Data.Material_Description;

--2 List all terminals from H001_terminal along with their corresponding part descriptions from PartNumber_ALLTerminals_Data

SELECT * 
FROM H001
FULL OUTER JOIN PartNumber_ALLTerminals_Data ON H001.Material_Item_No = PartNumber_ALLTerminals_Data.Material_Description;

--3.Find the PartNumbers from H001_terminal that have more than 1000 units in PartNumber_ALLTerminals_Data.

SELECT * FROM H001 ORDER BY SELECT FROM PartNumber_ALLTerminals_data;

--4 Retrieve the terminals with the highest number of units from H001_terminal.

-- ANS COLUMN NOT AVILABLE

--5.Create a stored procedure that returns the total count of terminals for a given PartNumber.

CREATE PROCEDURE MaterialItemNo
AS 
SELECT * FROM PartNumber_ALLTerminals_data
GO;

-- 6.	Update the stored procedure to include an output parameter for the total count.

INSERT INTO MaterialItemNo
 ENIAL VARCHAR(300);

 --7.	Create a view that displays PartNumbers, Terminals, and Units from both tables.

 SELECT PartNumbers , Terminals , UNITS FROM H001;

 -- 8.	Retrieve the data from the view created above.

 CREATE VIEW PART AS
 SELECT PARTNUMBER , TERMINLAS
 FROM H001
 WHERE Manufacturer_Name = 'SKF';


--INDEX--
--Problem:
--9 Add an index on the PartNumber column in both H001_terminal and PartNumber_ALLTerminals_Data.

CREATE INDEX MANUFACTURE
ON PartNumber_ALLTerminals_data (Internal_Material_Nos , Manufacturer)

---10.	Check the execution plan before and after adding the indees for a specific query.
--ANS I AM NOT IGBLE

---11.	Create a trigger that updates the Units in PartNumber_ALLTerminals_Data whenever Units are updated in H001_terminal.

CREATE TRIGGER H001_H
ON H001
ROW
BEGIN
END;

--11.Create a trigger that updates the Units in PartNumber_ALLTerminals_Data whenever Units are updated in H001_terminal.


























