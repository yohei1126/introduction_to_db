-- Q7. For each movie that has at least one rating, find the highest number of stars that movie received.
-- Return the movie title and number of stars. Sort by movie title. 
SELECT name, title
FROM Reviewer, Movie
WHERE exists (
 SELECT *
 from Rating R1, Rating R2
 WHERE (R1.rID = R2.rID and R1.mID = R2.mID and R1.ratingDate < R2.ratingDate and R1.stars < R2.stars) and R1.rID = Reviewer.rID and R1.mID = Movie.mID);

