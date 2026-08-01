With cte as (SELECT distinct
    case when user_id < friend_id then user_id else friend_id end as user_id,
     case when user_id > friend_id then user_id else friend_id end as friend_id
     from friends WHERE USER_ID = 1 or USER_ID = 2 or friend_ID = 2 or
     friend_ID = 1 ), 
cte2 as (Select a.friend_id from cte as a join cte as b on a.user_id < b.user_id
     and a.friend_id = b.friend_id)
     Select c.friend_id, u.user_name from cte2 as c join users as u on
     c.friend_id = u.user_id