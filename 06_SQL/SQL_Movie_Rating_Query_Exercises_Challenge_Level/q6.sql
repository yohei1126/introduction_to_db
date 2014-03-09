-- Q6 For each director, return the director's name together with the title(s) of the movie(s) 
-- they directed that received the highest rating among all of their movies, and the value of that rating.
-- Ignore movies whose director is NULL. 

select director,title,max(hr)
from(
  select director,title,max(stars) hr
  from Movie,Rating
  where Movie.mID = Rating.mID and director not like ''
  group by Rating.mID
 ) group by director;
