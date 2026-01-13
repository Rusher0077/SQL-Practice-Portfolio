-- Binary Tree Nodes
-- Write a query to find the node type of Binary Tree ordered by the value of the node.
-- Output one of the following for each node: 
--     *Root: If node is root node.
--     *Leaf: If node is leaf node.
--     *Inner: If node is neither root nor leaf node.
SELECT n,
    CASE
        WHEN p IS NULL THEN 'Root'
        WHEN n IN (
            SELECT p
            FROM bst
            WHERE p IS NOT NULL
        ) THEN 'Inner'
        ELSE 'Leaf'
    END
FROM bst
ORDER BY n