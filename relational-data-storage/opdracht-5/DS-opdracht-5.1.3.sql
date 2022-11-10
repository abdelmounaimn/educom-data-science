select count(hitcount) , avg(hitcount),min(hitcount), max(hitcount), sum(hitcount) from mhl_hitcount
group by year , month