-- Q8. List movie titles and average ratings, from highest-rated to lowest-rated.
-- If two or more movies have the same average rating, list them in alphabetical order. 

select title, avg(stars) as avg_stars
from Movie join Rating on Movie.mID = Rating.mID
group by Movie.mID
order by avg_stars desc, Movie.title;