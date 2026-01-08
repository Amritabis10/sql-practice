select f.flight_id, m.movie_id, m.duration as movie_duration from
flight_schedule as f join entertainment_catalog as m
on f.flight_duration >= m.duration where 
f.flight_id = 101;