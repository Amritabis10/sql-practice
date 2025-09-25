-- Write your solution here
Select p.name as name , ifnull(sum(i.rest),0) as rest, ifnull(sum(i.paid), 0) as paid, ifnull(sum(i.canceled),0) as canceled, ifnull(sum(i.refunded),0) as refunded
from product as p left join invoice as i on
p.product_id = i.product_id
 group by p.product_id
 order by p.name