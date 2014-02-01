-- Q5 Write a query to return the ratings data in a more readable format:
-- reviewer name, movie title, stars, and ratingDate. Also, sort the data,
-- first by reviewer name, then by movie title, and lastly by number of stars. 
select name, title, stars, ratingDate
from (Movie join Rating on Movie.mID = Rating.mID) join Reviewer on Rating.rID = Reviewer.rID
order by name, title, stars;