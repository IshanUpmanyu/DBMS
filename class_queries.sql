

create fulltext index idx_posts_title_body
on sql_blog.posts(title, body);


-- Either react or redux
select * 
from sql_blog.posts
where match(title, body) 
against ("react redux" in boolean mode);

-- Must have react, redux is optional

select * 
from sql_blog.posts
where match(title, body) 
against ("+react redux" in boolean mode);


-- must have react, may have redux, must not have the word form
select * 
from sql_blog.posts
where match(title, body) 
against ("+react redux -form" in boolean mode);

