--
-- To be executed as DBA / root.
-- To be executed before DML files have been executed
--

create database thermostat;
create user 'DB_USER_NAME'@'localhost' identified by 'SOME_PASSWORD';
create user 'DB_USER_NAME'@'SOME_OTHER_HOST' identified by 'SOME_PASSWORD';
grant all privileges on thermostat.* to 'DB_USER_NAME'@'localhost';
grant all privileges on thermostat.* to 'DB_USER_NAME'@'SOME_OTHER_HOST';
flush privileges;
