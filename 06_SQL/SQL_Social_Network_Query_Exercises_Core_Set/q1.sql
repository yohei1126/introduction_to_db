-- Q1 Find the names of all students who are friends with someone named Gabriel.

select name
from Highschooler join Friend on ID = ID1
where ID2 in (
  select ID
  from Highschooler
  where name = 'Gabriel'
);
