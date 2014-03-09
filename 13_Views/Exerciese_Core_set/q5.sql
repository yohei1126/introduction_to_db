-- Q5 Write an instead-of trigger that enables deletions from view HighlyRated. 
-- Policy: Deletions from view HighlyRated should update all ratings for the corresponding movie that have stars > 3 so they have stars = 3.

drop trigger if exists DeleteRating;
create trigger DeleteRating
instead	of delete on HighlyRated
for each row
begin
  update Rating set stars = 3 where Rating.mID = OLD.mID and Rating.stars > 3;
end;