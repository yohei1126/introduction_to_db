-- Q1 Write one or more triggers to maintain symmetry in friend relationships.
-- Specifically, if (A,B) is deleted from Friend, then (B,A) should be deleted too.
-- If (A,B) is inserted into Friend then (B,A) should be inserted too. Don't worry about updates to the Friend table. 

drop trigger if exists DeleteFriends;
Create Trigger DeleteFriends
After Delete on Friend
For Each Row
Begin
  delete from Friend where OLD.ID1 = ID2 and OLD.ID2 = ID1;
End;

drop trigger if	exists InsertFriends;
Create Trigger InsertFriends
After Insert on Friend
For Each Row
Begin
  insert into Friend values(New.ID2, New.ID1);
End;

