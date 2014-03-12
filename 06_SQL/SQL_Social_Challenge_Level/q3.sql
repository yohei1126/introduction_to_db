-- Q3 Find the difference between the number of students in the school and the number of different first names. 

select num_students - num_names from 
  (select count(*) as num_students from Highschooler),
  (select count(*) as num_names from (select * from Highschooler group by name));