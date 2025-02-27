create index idx_menu_unique on menu (pizzeria_id, pizza_name);
EXPLAIN ANALYZE
select pizzeria_id, pizza_name
from menu
where pizzeria_id = 6;