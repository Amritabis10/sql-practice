-- Solution for: Weather Type in Each Country
-- Write your SQL solution here

With cte as (Select country_id, avg(weather_state) as weather from  weather where day >=  '2019-11-01' and day <= '2019-11-30' group by country_id)
 Select c.country_name, case when cte.weather <= 15 then 'Cold'
when cte.weather >= 25 then 'Hot' else 'Warm'
  end as weather_type from countries as c join cte on 
 c.country_id=cte.country_id order by weather_type