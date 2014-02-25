-- Write a trigger that automatically deletes students when they graduate, i.e., when their grade is updated to exceed 12. 

drop trigger if exists Graduate;
create trigger Graduate
after update on Highschooler
for each row
when New.grade > 12
Begin
  delete from Highschooler where ID=New.ID;
  delete from Friend where ID1=New.ID or ID2=New.ID; 
  delete from Likes where ID1=New.ID or ID2=New.ID;
End;
