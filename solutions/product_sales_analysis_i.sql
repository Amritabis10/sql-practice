Select p.product_name, s.year, s.price from product as p join sales as s on
s.product_id=p.product_id