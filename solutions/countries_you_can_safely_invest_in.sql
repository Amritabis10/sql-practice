-- Countries You Can Safely Invest In
-- Write your solution here
with base as
(
    select caller_id as person_id, duration from Calls
    union all
    select callee_id as person_id, duration from Calls
)

select
    c.name as country
from base as b
join Person as p on b.person_id = p.id
join Country as c on substr(p.phone_number, 1, 3) = c.country_code
group by c.name
having avg(b.duration) > (select avg(duration) from Calls)