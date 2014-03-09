-- Q2 Write an instead-of trigger that enables updates to the stars attribute of view LateRating. 
-- Policy: Updates to attribute stars in LateRating should update Rating.stars for the corresponding movie rating.
-- (You may assume attributes [mID,ratingDate] together are a key for table Rating.)
-- Make sure the mID and ratingDate attributes of view LateRating have not also been updated --
-- if either one has been updated, don't make any changes. Don't worry about updates to title.

drop trigger if exists UpdateStars;
create trigger UpdateStars
instead of update of stars on LateRating
for each row
when new.stars != old.stars
begin
  update Rating set stars = new.stars where Rating.mID = new.mID and Rating.ratingDate = new.ratingDate;
end;
