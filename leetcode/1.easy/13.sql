-- Swap Salary
-- Swap all 'm' and 'f' values in the sex column.
-- Update the table without using a temporary table.

UPDATE salary
SET sex = CASE 
    WHEN sex = 'm' THEN 'f'
    ELSE 'm'
END