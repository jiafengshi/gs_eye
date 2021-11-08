SELECT usename
 ,datname
 ,coorname
 ,enqueue
 ,count(*)
FROM pgxc_stat_activity
WHERE STATE <> 'idle'
GROUP BY 1,2,3,4
ORDER BY 5 desc;
