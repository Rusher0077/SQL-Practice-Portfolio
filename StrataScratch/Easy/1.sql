select distinct p.*
from facebook_posts p
    left join facebook_reactions r on r.post_id = p.post_id
where r.reaction = 'heart'