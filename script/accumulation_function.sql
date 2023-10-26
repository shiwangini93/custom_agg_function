-- Define the accumulation function (sfunc)
CREATE OR REPLACE FUNCTION maxmin_sfunc(state jsonb, value anyelement) RETURNS jsonb AS $$
BEGIN
  IF state->>'max' IS NULL OR value > (state->>'max')::numeric THEN
    state := jsonb_set(state, '{max}', to_jsonb(value));
  END IF;

  IF state->>'min' IS NULL OR value < (state->>'min')::numeric THEN
    state := jsonb_set(state, '{min}', to_jsonb(value));
  END IF;

  RETURN state;
END;
$$ LANGUAGE plpgsql;
