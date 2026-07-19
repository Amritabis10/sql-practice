select distinct f.post_id, f.poster, p.post_text, p.post_keywords, p.post_date  from facebook_reactions
as f join facebook_posts as p on
f.post_id = p.post_id
and f.poster = p.poster
where f.reaction = 'heart'