-- Q2 Write a trigger that automatically deletes students when they graduate, i.e., when their grade is updated to exceed 12.
-- In addition, write a trigger so when a student is moved ahead one grade, then so are all of his or her friends. 

drop trigger if exists Graduate;
create trigger Graduate
after update on	Highschooler
for each row
when New.grade > 12
Begin
  delete from Highschooler where ID=New.ID;
  delete from Friend where ID1=New.ID or ID2=New.ID;
  delete from Likes where ID1=New.ID or ID2=New.ID;
End;

drop trigger if exists MoveAhead;
create trigger MoveAhead
after update on Highschooler
for each row
when New.grade - Old.grade = 1
Begin
  Update Highschooler set grade=grade+1 where ID IN (select ID2 from Friend where ID1=New.ID);
End;
