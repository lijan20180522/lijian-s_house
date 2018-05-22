# 创建数据库

create database campusMall;
use campusMall;

# 创建用户表

create table if not exists `member_info`(
`member_id` mediumint(8) unsigned not null default '0' comment '用户id',
`member_name` varchar(50) not null comment '用户名',
`member_moblie` 
`member_pwd` varchar(32) not null comment '用户密码',
`member_email` varchar(100) default null comment '邮箱',
`member_createTime` int(10) 
) engine=innodb default charset=utf8;

# 创建商品表

create table if not exists `goods`(
`goods_id`
`goods_name`
`goods_des`
`goods`
`member_id`
) engine=innodb default charset=utf8;

# 创建留言表

create table if not exists `note_info`(
`note_id` 
`goods_id`
`member_id`
`public_date`
`content`
) engine=innodb default charset=utf8;