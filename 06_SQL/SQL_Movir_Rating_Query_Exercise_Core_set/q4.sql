-- Some reviewers didn't provide a date with their rating.
-- Find the names of all reviewers who have ratings with a NULL value for the date. 
select name
from Reviewer join Rating on Reviewer.rID = Rating.rID
where ratingDate IS NULL;
