-- Q3 Write an instead-of trigger that enables insertions into view NoRating. 
-- Policy: An insertion should be accepted only when the (mID,title) pair already exists in the Movie table.
-- (Otherwise, do nothing.) Insertions into view NoRating should delete all ratings for the corresponding movie.

drop trigger if exists InsertNoRating;
create trigger InsertNoRating
instead of insert on NoRating
for each row
when new.title = (select title from Movie where mID = new.mID)
begin
  delete from Rating      where mID = new.mID;
end;
