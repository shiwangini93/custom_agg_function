-- create a table and add dummy data

create table validate_agg (a int,b float);

insert into validate_agg(a,b) values(10,1.0),(12,2.1),(14,6.9),(20,2.1); 



-- Now, both the below test script should return true for these test cases:

select max_to_min(a) = '20 -> 10' as test_result from validate_agg ;
select max_to_min(b) = '6.9 -> 1' as test_result from validate_agg ;

-- In first query, we're testing max_to_min function outcome for integer datatype. While in second query we're testing it for float datatype.
