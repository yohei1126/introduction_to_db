-- Q7. For each movie that has at least one rating, find the highest number of stars that movie received.
-- Return the movie title and number of stars. Sort by movie title. 

SELECT title, max(r1.stars)
FROM (Rating r1 join Rating r2 on r1.mID = r2.mID and r1.stars > r2.stars) join Movie on r1.mID = Movie.mID
group by r1.mID
order by title;

