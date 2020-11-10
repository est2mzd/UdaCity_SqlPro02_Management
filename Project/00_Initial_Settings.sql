
/*  Create Database */
$ psql -h localhost -U postgres

postgres=# CREATE DATABASE udacity_pro2;
postgres=# \l
postgres=# \q

/*  Import UdaCity Data */
$ psql -h localhost -U postgres -d udacity_pro2 -f bad-db.sql 

/*  Login to Createe Database */
$ psql -h localhost -U postgres -d udacity_pro2
postgres=# \dt