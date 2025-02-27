SET enable_seqscan = off;

EXPLAIN ANALYZE
select m.pizza_name as pizza_name, pi.name as pizzeria_name
from menu as m
inner join pizzeria as pi on pi.id = m.pizzeria_id;