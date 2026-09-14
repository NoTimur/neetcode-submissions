-- Write your query below
with cte as (
    select *, ROW_NUMBER() OVER (partition by student_id order by score desc, exam_id asc) as rn
    from exam_results)

select student_id, exam_id, score
from cte
where rn=1