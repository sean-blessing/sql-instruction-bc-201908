-- select all from customer
SELECT * from CUSTOMER;
SELECT * 
  FROM customer
-- single line comment:  one way to do this  
-- WHERE state = 'OH'
--    OR state = 'IN'
-- another way to do this:
  where state in ('OH', 'IN')
 ORDER BY name desc;
 
