SELECT  "name", "time"  FROM track 
order by "time"  DESC
limit 1; 

SELECT "name", "time"  FROM TRACK 
WHERE TIME >= 210;

SELECT "name"  FROM singer 
WHERE NOT name LIKE '%% %%';

SELECT "name"  FROM track 
WHERE "name"  LIKE '%my%' 
   OR "name" LIKE '%Мой%' 
   OR"name"  LIKE '%My%' 
   OR "name" LIKE '%мой%';
  
SELECT "name", "year" FROM collection
 WHERE "year" >= 2018
   AND "year" <= 2022;
  
select "name" , "year"  from album
where "year"  = 2018;





