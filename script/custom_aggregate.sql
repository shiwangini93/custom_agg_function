-- Create the custom aggregate
CREATE AGGREGATE max_to_min(anyelement) (
  sfunc = maxmin_sfunc,
  stype = jsonb,
  initcond = '{"max": null, "min": null}',
  finalfunc = maxmin_finalfunc
);
