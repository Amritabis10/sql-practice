Select abs(a.x - b.x) as shortest from point as a join
point as b on a.x!=b.x order by shortest limit 1