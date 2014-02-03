-- Q2 If two students A and B are friends, and A likes B but not vice-versa, remove the Likes tuple.

delete from Likes
where ID1 in (
   select ID1 from (
   select * from Likes
   except
   select ID2 as ID1, ID1 as ID2 from Likes
   intersect
   select * from Friend));

