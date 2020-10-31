<1> Create Dabase
# psql -h localhost -U postgres
postgres# CREATE DATABASE dml_l04_09;
postgres# \q

<2> Grand access rights
# psql -h localhost -U postgres -d dml_l04_09
postgres# GRANT ALL ON ALL TABLES IN SCHEMA public TO postgres;
postgres# \q

<3> Run Script from UdaCity in order to create table with data
# psql -h localhost  -U postgres -d dml_l04_09 -f L04_09_01_init.sql

<4> Confirm the results
# psql -h localhost -U postgres -d dml_l04_09
postgres# SELECT * FROM people;
