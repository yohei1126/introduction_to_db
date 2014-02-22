drop table if exists R; 
create table R(a int, b int);
CREATE TRIGGER Rins
   AFTER INSERT ON R
   REFERENCING NEW ROW AS new
   FOR EACH ROW
   INSERT INTO R(a,b)
     (SELECT DISTINCT R.a, new.b
      FROM R
      WHERE R.b = new.a)
     EXCEPT
     (SELECT DISTINCT a,b FROM R);
