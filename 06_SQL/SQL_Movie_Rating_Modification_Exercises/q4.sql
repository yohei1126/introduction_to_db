-- Q4 Remove all ratings where the movie's year is before 1970 or after 2000,
-- and the rating is fewer than 4 stars. 

delete from Rating
  where mID in (select mID from Movie where year < 1970 or year > 2000)
    and stars < 4; 