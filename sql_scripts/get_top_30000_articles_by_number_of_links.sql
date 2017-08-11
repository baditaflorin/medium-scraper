select mpl.user_username,mps.article_url,mps.image_count,post_tags,recommends,reading_time,mps.title,count(*) link_count from medium_posts_links mpl

inner join medium_posts_stats mps on mps.post_id = mpl.post_id
group by mpl.post_id,mpl.user_username,article_url,mps.image_count,mps.post_tags,mps.recommends,mps.reading_time,mps.title
order by link_count desc
limit 30000
