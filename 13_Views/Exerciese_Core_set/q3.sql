-- Q3 Write an instead-of trigger that enables updates to the mID attribute of view LateRating. 
-- Policy: Updates to attribute mID in LateRating should update Movie.mID and Rating.mID for the corresponding movie.
-- Update all Rating tuples with the old mID, not just the ones contributing to the view. Don't worry about updates to title, stars, or ratingDate.

drop trigger if exists UpdateMID;
create trigger UpdateMID
instead of update of mID on LateRating
for each row
when new.mID != old.mID
begin
  update Movie  set mID = NEW.mID where Movie.mID = OLD.mID;
  update Rating set mID = NEW.mID where Rating.mID = OLD.mID;
end;
