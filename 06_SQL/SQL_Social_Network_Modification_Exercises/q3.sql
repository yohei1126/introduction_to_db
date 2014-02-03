-- Q3 For all cases where A is friends with B, and B is friends with C, add a new friendship for the pair A and C.
-- Do not add duplicate friendships, friendships that already exist, or friendships with oneself.
-- (This one is a bit challenging; congratulations if you get it right.) 

-- all pair A and C where A is friends with B, and B is friends with C 
insert into Friend (ID1, ID2) 
  select distinct f1.ID1 as ID1, f2.ID2 as ID2
  from Friend f1 join Friend f2 on f1.ID2 = f2.ID1 and f1.ID1 != f2.ID2
  except
  select * from Friend;
