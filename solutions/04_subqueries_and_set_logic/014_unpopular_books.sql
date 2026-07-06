-- Solution for Unpopular Books problem
-- Write your SQL solution here
with booklist as(
    select * 
    from books
    where datediff(month,available_from, '2019-06-23')>1
)
select b.book_id, b.name
from (
    select book_id,sum(quantity) as total
    from orders
    where dateadd(year,-1,'2019-6-23')<dispatch_date
    group by book_id )a
right join booklist b
on a.book_id = b.book_id
where a.total <10 or a.total is null