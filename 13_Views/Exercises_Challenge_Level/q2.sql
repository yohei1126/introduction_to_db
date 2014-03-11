-- Q2 Write an instead-of trigger that enables insertions into view HighlyRated. 
-- Policy: An insertion should be accepted only when the (mID,title) pair already exists in the Movie table.
-- (Otherwise, do nothing.) Insertions into view HighlyRated should add a new rating for the inserted movie with rID = 201, stars = 5, and NULL ratingDate.

drop trigger if exists InsertHighlyRated;
create trigger InsertHighlyRated
instead of insert on HighlyRated
for each row
when new.title = (select title from Movie where mID = New.mID)
begin
  insert into Rating values (201,New.mID,5,null);
end;
