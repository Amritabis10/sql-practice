With cte as (Select c.candidate_id, c.years_of_exp,  r.interview_id, r. round_id, r.score
from Candidates as c inner join Rounds as r
on c.interview_id = r.interview_id
and c.years_of_exp >= 2)
Select candidate_id  from cte 
group by candidate_id having sum(score) > 15