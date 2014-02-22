-- Q2. Write one or more triggers to manage the grade attribute of new Highschoolers.
-- If the inserted tuple has a value less than 9 or greater than 12, change the value to NULL.
-- On the other hand, if the inserted tuple has a null value for grade, change it to 9. 

Drop Trigger If exists UpdateGradeToNull;
Create Trigger UpdateGradeToNull
After Insert on Highschooler
For Each Row
When
  New.grade IS NULL OR
  New.grade < 9 OR
  New.grade > 12
Begin
  Update Highschooler Set grade=
    CASE
      When grade IS NULL Then 9
      When grade < 9 or grade > 12 Then null
      Else grade
    End
   Where id = new.id;
End;
