-- Q2 For every student who likes someone 2 or more grades younger than themselves,
-- return that student's name and grade, and the name and grade of the student they like. 

select *
from (select *
      from Likes l1 join Highschooler h1 on h1.ID = l1.ID1),
     (select *
      from Likes l2 join Highschooler h2 on h2.ID = l2.ID2)
where l1.ID2 = l2.ID1;
