-- Q6 For all cases where the same reviewer rated the same movie twice and
-- gave it a higher rating the second time, return the reviewer's name and the title of the movie. 
SELECT name, title
FROM Reviewer, Movie
WHERE exists (
 SELECT *
 from Rating R1, Rating R2
 WHERE (R1.rID = R2.rID and R1.mID = R2.mID and R1.ratingDate < R2.ratingDate and R1.stars < R2.stars) and R1.rID = Reviewer.rID and R1.mID = Movie.mID);

