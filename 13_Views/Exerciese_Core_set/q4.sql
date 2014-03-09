-- Q4 Write an instead-of trigger that enables deletions from view HighlyRated. 
-- Policy: Deletions from view HighlyRated should delete all ratings for the corresponding movie that have stars > 3.

drop trigger if exists DeleteRating;
create trigger DeleteRating
instead of delete on HighlyRated
for each row
begin
  delete from Rating where OLD.mID = Rating.mID and stars > 3;
end;