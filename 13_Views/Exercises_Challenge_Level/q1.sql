-- Q1 Write a single instead-of trigger that enables simultaneous updates to attributes mID, title,
-- and/or stars in view LateRating. Combine the view-update policies of the questions 1-3 in the core set,
-- with the exception that mID may now be updated. Make sure the ratingDate attribute of view LateRating
-- has not also been updated -- if it has been updated, don't make any changes.

drop trigger if exists UpdateRating;
create trigger UpdateRAting
instead of update of mID,title,stars on LateRating
for each row
when new.ratingDate == old.ratingDate
begin
  update Movie  set title = NEW.title where Movie.mID  = OLD.mID;
  update Movie  set mID   = NEW.mID   where Movie.mID  = OLD.mID;
  update Rating set stars = NEW.stars where Rating.mID = OLD.mID and Rating.stars = OLD.stars;
  update Rating set mID   = NEW.mID   where Rating.mID = OLD.mID;
end;
