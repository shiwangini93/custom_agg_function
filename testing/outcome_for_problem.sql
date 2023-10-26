-- for integer value:

SELECT max_to_min(val)
FROM (VALUES(5),(3),(6),(7),(9),(10),(7) )t(val);


-- for float values:

SELECT max_to_min(val)
FROM (VALUES(5),(3),(6),(7),(9),(10),(7) ,(1.2) )t(val); 
