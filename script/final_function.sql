-- Define the final function (finalfunc)
CREATE OR REPLACE FUNCTION maxmin_finalfunc(state jsonb) RETURNS text AS $$
BEGIN
RETURN coalesce(state->>'max', '') || ' -> ' || coalesce(state->>'min', '');
END;
$$ LANGUAGE plpgsql;
