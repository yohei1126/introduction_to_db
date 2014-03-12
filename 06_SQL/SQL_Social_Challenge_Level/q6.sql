-- Q6 Find the name and grade of the student(s) with the greatest number of friends. 

select name,grade from Highschooler, Friend
  where ID=ID1
  group by ID
  having count(*) >= (select max(ct) from (select count(*) as ct from Highschooler, Friend where ID = ID1 group by ID));
