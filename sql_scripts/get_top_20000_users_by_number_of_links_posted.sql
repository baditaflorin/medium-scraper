select mpl.user_username,
count(*) number_of_links,
count(distinct mpl.post_id) number_of_posts,
count(*)/count(distinct mpl.post_id) links_per_post,

avg(mps.reading_time) 
  from medium_posts_links mpl

inner join medium_posts_stats mps on mps.post_id = mpl.post_id

group by mpl.user_user_id,mpl.user_username
order by number_of_links desc
limit 20000
