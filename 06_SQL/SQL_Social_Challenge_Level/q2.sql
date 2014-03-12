-- Q2 For each student A who likes a student B where the two are not friends,
-- find if they have a friend C in common (who can introduce them!). For all such trios, return the name and grade of A, B, and C. 

-- A Likes B, A and C are friend
/*
select * from 
  (select nameA,gradeA,name as nameB, grade as gradeC, C from
    (select A,name as nameA,grade as gradeA,B,C from
      (select distinct A,B,C from
        (select A1 as A, B1 as B, C1 as C from 
          (select Likes.ID1 as A1, Likes.ID2 as B1, Friend.ID2 as C1 from Likes,Friend where Likes.ID1 = Friend.ID1),
          (select Likes.ID1 as A2, Likes.ID2 as B2, Friend.ID2 as C2 from Likes,Friend where Likes.ID2 = Friend.ID1)
          where A1=A2 and B1=B2 and C1=C2), Friend
         where (A != Friend.ID1 and B != Friend.ID2) or (A != Friend.ID2 and B != Friend.ID1)), Highschooler
      where A = ID),Highschooler where B = ID), Highschooler where C = ID; */

