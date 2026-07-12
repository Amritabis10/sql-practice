select b.birthday, a.name, avg(a.rating) as avg_rating from nominee_filmography as a
join nominee_information as b on
 a.name = b.name
 group by a.name, b.birthday
 order by b.birthday;