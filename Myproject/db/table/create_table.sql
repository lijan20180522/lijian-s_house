# 创建数据库
drop DATABASE if exists  campusMall;
create database campusMall;
use campusMall;

# 创建管理员信息表

create table if not exists `admin_info`(
`admin_id` varchar(20) not null comment '管理员账号',
`admin_pwd` varchar(32) not null comment '管理员密码'
) engine=innodb default charset=utf8;

# 创建用户表

create table if not exists `member_info`(
`member_id` mediumint(5) unsigned not null default '0' comment '用户id',
`member_name` varchar(50) not null comment '用户名',
`member_moblie` varchar(11) default NULL COMMENT '手机',
`member_pwd` varchar(32) not null comment '用户密码',
`member_email` varchar(100) default null comment '邮箱',
`member_date` int(10) unsigned not null comment '创建时间',
`member_address` varchar(255) default NULL COMMENT '地址'
) engine=innodb default charset=utf8;

# 创建商品表

create table if not exists `goods`(
`goods_id` mediumint(8) unsigned not null default '0' comment '商品id',
`goods_name` varchar(50) not null comment '商品名称',
`goods_description` text not null comment '内容',
`goods_status` enum('online','close','saled') not null default 'online' comment '商品状态',
`goods_price` decimal(10,2) not null default '0.00' comment '价格',
`goods_num` smallint not null default '1' comment '数量',
`goods_date` int(10) unsigned not null comment '创建时间',
`member_id` mediumint(5) unsigned not null default '0' comment '用户id',
`member_name` varchar(50) not null comment '用户名',
`member_address` varchar(255) not null COMMENT '地址'
) engine=innodb default charset=utf8;

# 创建留言表

create table if not exists `note_info`(
`note_id` mediumint(10) unsigned not null default '0' comment '留言id',
`goods_id` mediumint(8) unsigned not null default '0' comment '商品id',
`member_id` mediumint(5) unsigned not null default '0' comment '用户id',
`note_date` int(10) unsigned not null comment '发布时间',
`note_content` text not null comment '内容'
) engine=innodb default charset=utf8;
