select project_id,  ROUND(AVG(CAST(score AS DECIMAL(10, 2))),2) as average_score from project_data
group by project_id
having count (team_member_id) >= 2;