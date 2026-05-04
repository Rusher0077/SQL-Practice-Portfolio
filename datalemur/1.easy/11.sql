-- Well Paid Employees
-- Find employees who earn more than their direct managers.
-- Return the employee_id and name for such employees.

select
    e.employee_id,
    e.name
from
    employee e
    join employee m on m.employee_id = e.manager_id
where
    e.salary > m.salary

-- Emp table's manager_id = Manager tables emp_id

```
Emp Table:

id | name  | manager_id
---|-------|-----------
1  | Alice | NULL
2  | Bob   | 1
3  | Carol | 1
4  | Dave  | 2

Manager Table:
id | name  | 
---|-------|
1  | Alice | 
2  | Bob   | 
```

-- So after joining it becomes 

```
e_id | e_name | m_id | m_name
-----|--------|------|--------
2    | Bob    | 1    | Alice
3    | Carol  | 1    | Alice
4    | Dave   | 2    | Bob

