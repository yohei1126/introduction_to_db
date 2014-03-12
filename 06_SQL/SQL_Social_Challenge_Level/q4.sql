-- Q4 What is the average number of friends per student? (Your result should be just one number.) 

select avg(cid) from (select count(ID2) as cid from Highschooler, Friend where Highschooler.ID = Friend.ID1 group by ID);