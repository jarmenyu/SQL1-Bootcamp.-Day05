DROP INDEX IF EXISTS idx_1;
create index idx_1 on pizzeria (rating, id);
SET enable_seqscan=off;
EXPLAIN ANALyze
SELECT
    m.pizza_name AS pizza_name,
    max(rating) OVER (PARTITION BY rating ORDER BY rating ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS k
FROM  menu m
INNER JOIN pizzeria pz ON m.pizzeria_id = pz.id
ORDER BY 1,2;