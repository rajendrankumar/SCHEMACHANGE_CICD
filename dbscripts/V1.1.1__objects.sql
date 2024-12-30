CREATE database {{DB_NAME}};
CREATE role __{{DB_NAME}}_FULL_AR;
CREATE role __{{DB_NAME}}_FULL_FR;

GRANT USAGE ON DATABASE {{DB_NAME}} TO ROLE __{{DB_NAME}}_FULL_AR;


GRANT USAGE ON ALL SCHEMAS IN DATABASE {{DB_NAME}} TO ROLE __{{DB_NAME}}_FULL_AR;

-- Grant select privileges on all tables in the database (read access example)
GRANT SELECT ON ALL TABLES IN DATABASE {{DB_NAME}} TO ROLE __{{DB_NAME}}_FULL_AR;
