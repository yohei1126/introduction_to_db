-- Q2 For every student who likes someone 2 or more grades younger than themselves,
-- return that student's name and grade, and the name and grade of the student they like. 

select h1name, h1grade, h2name, h2grade
from (select l1.ID1 as l1ID1, h1.name as h1name, h1.grade as h1grade
      from Likes l1 join Highschooler h1 on h1.ID = l1.ID1) join
     (select l2.ID1 as l2ID1, l2.ID2 as l2ID2, h2.name as h2name, h2.grade as h2grade 
      from Likes l2 join Highschooler h2 on h2.ID = l2.ID2)
     on l1ID1 = l2ID1
where (h1grade - h2grade) >= 2;


