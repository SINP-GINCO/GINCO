ALTER EXTENSION postgis UPDATE TO "2.2.2";
GRANT SELECT ON TABLE geometry_columns TO PUBLIC;
GRANT INSERT, DELETE ON TABLE geometry_columns TO ogam;