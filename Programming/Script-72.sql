CREATE FUNCTION one() 
RETURNS integer AS 
$$
    SELECT 1 
    AS result;
$$ LANGUAGE SQL;

SELECT public.one();

