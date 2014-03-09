-- Q4 Find the movie(s) with the highest average rating. Return the movie title(s) and average rating.
-- (Hint: This query is more difficult to write in SQLite than other systems; 
-- you might think of it as finding the highest average rating and then choosing the movie(s) with that average rating.) 

select title,avg(stars)
  from Movie,Rating
  where Movie.mID = Rating.mID
  group by Rating.mID
  having avg(stars) =
   (select max(avg_stars)
        from (select title, avg(stars) as avg_stars from Movie,Rating where Movie.mID = Rating.mID group by Rating.mID));


