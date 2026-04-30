-- Unfinished Parts
-- Find all parts that have started the assembly process but are not yet finished.
-- Return the part and assembly_step for parts where finish_date is null.

SELECT
    part,
    assembly_step
FROM
    parts_assembly
WHERE
    finish_date IS NULL;