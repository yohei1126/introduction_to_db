-- Q3 For all movies that have an average rating of 4 stars or higher,
-- add 25 to the release year. (Update the existing tuples; don't insert new tuples.) 

update Movie set year = (year + 25) where mID in (
  select mID from Rating group by mID having avg(stars) >= 4);