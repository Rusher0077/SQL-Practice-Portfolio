-- Rank Scores 
-- Rank the scores in the Scores table in descending order.
-- If two scores are the same, they should have the same rank.
-- The next rank after a tie should be the next consecutive integer (dense ranking).
-- Return the score and the corresponding rank.

SELECT score,
    DENSE_RANK() OVER (     
        ORDER BY score DESC
    ) AS rank
FROM scores

-- RANK skips subsequent rank after a tie. i.e.
-- Score Rank
--  6    1
--  6    1
--  4    3
--  3    4

-- but DENSE_RANK doesn't
-- Score Rank
--  6    1
--  6    1
--  4    2
--  3    3
     