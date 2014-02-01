-- Q9 Find the names of all reviewers who have contributed three or more ratings.
-- (As an extra challenge, try writing the query without HAVING or without COUNT.) 

select name
from (select name, count(Rating.rID) as r_count
from Reviewer join Rating on Reviewer.rID = Rating.rID
group by Rating.rID)
where r_count >= 3;
