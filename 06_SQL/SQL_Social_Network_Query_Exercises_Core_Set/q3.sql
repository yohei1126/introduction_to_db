-- Q3 For every pair of students who both like each other, return the name and grade of both students.
-- Include each pair only once, with the two names in alphabetical order. 

select h1name, h1grade, h2name, h2grade
from (select h1.ID as h1ID, h1.name as h1name, h1.grade as h1grade, l1.ID2 as h1likesID
      from Likes l1 join Highschooler h1 on l1.ID1 = h1.ID)
     join
     (select h2.ID as h2ID, h2.name as h2name, h2.grade as h2grade, l2.ID2 as h2likesID                                                                                                                                          
      from Likes l2 join Highschooler h2 on l2.ID1 = h2.ID)
     where h1likesID = h2ID and h2likesID = h1ID and h1name < h2name;