-- Q5 Find the number of students who are either friends with Cassandra or are friends of friends of Cassandra.
-- Do not count Cassandra, even though technically she is a friend of a friend. 

select count(distinct friend) + count(distinct ID2) as FriendOfFriend from
  (select ID2 as friend from Highschooler, Friend where ID = ID1 and ID=1709), Friend
  where friend = ID1 and ID2 != 1709;

