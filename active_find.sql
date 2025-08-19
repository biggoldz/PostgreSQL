---------[ RECORD 1 ]------------------------------
--secs     | 5.845579
--pid      | 14089
--database | tpcc
--state    | active
--query    | autovacuum: ANALYZE public.stock
select extract(epoch from (clock_timestamp()-xact_start)) secs, pid, 
datname database, state, query 
from pg_stat_activity 
where backend_xmin IS NOT 
NULL OR backend_xid IS NOT NULL order by greatest(age(backend_xmin), 
age(backend_xid)) desc limit 1 \gx 
