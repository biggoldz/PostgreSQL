SELECT pid, usename, client_addr, state, query FROM pg_stat_activity WHERE state = 'idle';
