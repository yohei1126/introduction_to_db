-- Q1 Write an instead-of trigger that enables updates to the title attribute of view LateRating.
-- Policy: Updates to attribute title in LateRating should update Movie.title for the corresponding movie.
-- (You may assume attribute mID is a key for table Movie.) Make sure the mID attribute of view LateRating
-- has not also been updated -- if it has been updated, don't make any changes.
-- Don't worry about updates to stars or ratingDate.

drop trigger if exists UpdateTitle;
create trigger UpdateTitle
instead of update of title on LateRating
for each row
when new.title != old.title
begin
  update Movie set title = NEW.title where new.mID = Movie.mID;
end;
