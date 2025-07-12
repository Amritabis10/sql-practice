SELECT followee AS follower, COUNT(follower) num
FROM Follow
WHERE followee IN 
(
    SELECT follower FROM Follow
)
GROUP BY followee
ORDER BY 