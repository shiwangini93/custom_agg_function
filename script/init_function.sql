-- Define the initial state (initfunc)
CREATE OR REPLACE FUNCTION maxmin_initfunc(anyelement) RETURNS jsonb AS $$
BEGIN
  RETURN jsonb_build_object('max', NULL, 'min', NULL);
END;
$$ LANGUAGE plpgsql;
