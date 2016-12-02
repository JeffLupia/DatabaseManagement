SELECT *
FROM Courses
INNER JOIN Prerequisites on Courses.num = Prerequisites.CourseNum ;


create or replace function PreReqsFor(int, REFCURSOR) returns refcursor as 
$$
declare
	cidNum int := $1;
	
	resultset REFCURSOR := $2;
   
begin

   open resultset for
   
		SELECT name AS CourseName, num AS CourseNum, preReqNum
		FROM Courses c INNER JOIN Prerequisites p on c.num = p.courseNum
		WHERE cidNum = courseNum;
		
   return resultset;
   
end;
$$ 
language plpgsql;

SELECT PreReqsFor(220, 'results');
Fetch all from results;



create or replace function IsPreReqFor(int, REFCURSOR) returns refcursor as 
$$
declare
   cidNum int := $1;	
   resultset REFCURSOR := $2;
begin

   open resultset for
   
      SELECT name AS CourseName, num AS CourseNum, preReqNum
      FROM Courses c INNER JOIN Prerequisites p on c.num = p.courseNum
      WHERE cidNum = preReqNum;
      
   return resultset;
   
end;
$$ 
language plpgsql;

select IsPreReqFor(308, 'results');

Fetch all from results;