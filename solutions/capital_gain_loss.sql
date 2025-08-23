-- Capital Gain/Loss
-- Write your SQL solution here
With cte as ( select stock_name, sum(price) as t_buy from
Stocks where operation = 'Buy' group by stock_name)
, cte2 as( select stock_name, sum(price) as t_sell from
Stocks where Operation = 'Sell' group by stock_name)
Select cte.stock_name, (cte2.t_sell-cte.t_buy) as capital_gain_loss from cte join cte2
on cte.stock_name=cte2.stock_name