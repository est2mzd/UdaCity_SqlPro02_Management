UPDATE people SET last_name =
    SUBSTR(last_name, 1,1) ||
    LOWER(SUBSTR(last_name,2));