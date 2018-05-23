create database ljdb default character set utf8 collate utf8_general_ci;
create user 'lijian'@'%' identified by 'lj120208';
grant select,insert,update,delete,create on ljdb.* to lijian;
flush privileges;
