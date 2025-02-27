create index idx_person_name on person (upper(name));
EXPLAIN ANALYZE
select name 
from person
where upper(name) = 'DMITRIY';