-- Q4. Find names and grades of students who only have friends in the same grade.
-- Return the result sorted by grade, then by name within each grade. 

select h1.name, h1.grade
from (Highschooler h1 join Friend f1 on h1.ID = f1.ID1)  join Highschooler h12 on f1.ID2 = h12.ID
where h1.grade = h12.grade and h1.ID not in (
  select h2.ID
  from (Highschooler h2 join Friend f2 on h2.ID = f2.ID1)  join Highschooler h22 on f2.ID2 = h22.ID
  where h2.grade != h22.grade)
group by h1.ID
order by h1.grade, h1.name;
