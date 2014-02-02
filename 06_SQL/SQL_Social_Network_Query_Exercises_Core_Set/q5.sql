-- Q5 Find the name and grade of all students who are liked by more than one other student. 

select name, grade
from (select ID2, count(ID2) as like_count
      from Likes
      group by ID2)
      join Highschooler on ID2 = ID
where like_count > 1;