-- Q1. Write a trigger that makes new students named 'Friendly' automatically like everyone else in their grade.
-- That is, after the trigger runs, we should have ('Friendly', A) in the Likes table for every other Highschooler A in the same grade as 'Friendly'.

Create Trigger insertLikes
After Insert on Highschooler
For Each Row
When New.name = "Friendly"
Begin
  Insert into Likes
  select New.ID,ID from Highschooler where New.ID != ID and New.grade = grade;  
End;
