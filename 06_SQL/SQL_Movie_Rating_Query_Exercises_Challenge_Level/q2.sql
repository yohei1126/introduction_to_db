-- Q2 Find the difference between the average rating of movies released before 1980 and the average rating of movies released after 1980.
-- (Make sure to calculate the average rating for each movie, then the average of those averages for movies before 1980 and movies after.
-- Don't just calculate the overall average rating before and after 1980.) 

select avg(avg_star_each_movie_before_1980)-avg(avg_star_each_movie_after_1980)
from
(select avg(stars) as avg_star_each_movie_before_1980
  from Movie, Rating
  where Movie.mID = Rating.mID and year < 1980
  group by Rating.mID),
(select avg(stars) as avg_star_each_movie_after_1980
  from Movie, Rating
  where Movie.mID = Rating.mID and year >= 1980
  group by Rating.mID);
