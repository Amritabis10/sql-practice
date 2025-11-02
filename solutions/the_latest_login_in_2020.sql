
Select user_id,  max(time_stamp) as last_stamp  from(
Select user_id, time_stamp from Logins where year(time_stamp) = 2020) as t
group by user_id