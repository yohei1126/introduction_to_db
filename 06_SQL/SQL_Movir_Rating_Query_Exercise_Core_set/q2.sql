-- Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order. 
select distinct year
from Movie join Rating on Movie.mID = Rating.mID
where stars >= 4
order by year asc;
