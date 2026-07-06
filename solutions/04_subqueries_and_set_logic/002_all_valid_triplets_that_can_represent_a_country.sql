-- All Valid Triplets That Can Represent a Country
-- Write your solution here
Select a.student_name as member_A, 
b.student_name as member_B,
c.student_name as member_C
from SchoolA as a join SchoolB as b on
a.student_id <> b.student_id
and a.student_name <> b.student_name
join SchoolC AS c on
a.student_id <> c.student_id and
b.student_id <> c.student_id
and a.student_name <> c.student_name
and b.student_name <> c.student_name