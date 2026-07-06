-- Friendly Movies Streamed Last Month
-- Write your solution here
Select distinct c.title  from content as c join 
TVProgram as t on t.content_id= c.content_id
and Left(program_date, 7) = '2020-06'
where Kids_content = 'Y' and content_type = 'Movies'