-- Q3 Write a trigger to enforce the following behavior: If A liked B but is updated to A liking C instead,
-- and B and C were friends, make B and C no longer friends. Don't forget to delete the friendship in both
-- directions, and make sure the trigger only runs when the "liked" (ID2) person is changed but the "liking" (ID1) person is not changed. 

drop trigger if exists updateFriend;
create trigger updateFriend
after update on Likes
for each row
when (New.ID1=Old.ID1 and New.ID2!=Old.ID2)
Begin
  delete from Friend where (ID1=Old.ID2 and ID2=New.ID2) or (ID1=New.ID2 and ID2=Old.ID2);
End;
