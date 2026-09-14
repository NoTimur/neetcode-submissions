-- Write your query below
select name, COALESCE(sum(distance) , 0) AS travelled_distance
from users u
left join rides r
on u.id = r.user_id
group by u.name
order by COALESCE(sum(distance) , 0) DESC