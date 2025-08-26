-- Solution for Evaluate Boolean Expression
-- Write your SQL query here
Select e.left_operand, e.operator, e.right_operand, (case WHEN e.operator = '<' AND v1.value < v2.value THEN 'true'
            WHEN e.operator = '=' AND v1.value = v2.value THEN 'true'
            WHEN e.operator = '>' AND v1.value > v2.value THEN 'true'
            ELSE 'false'end) as value from Expressions as e left join Variables as v1 on 
e.left_operand = v1.name 
left join Variables as v2 
ON e.right_operand = v2.name