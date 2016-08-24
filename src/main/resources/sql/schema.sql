CREATE DATABASE JD;
USE JD;

DROP TABLE IF EXISTS tb_product;

-- 创建产品表
CREATE TABLE tb_product (
  id INT(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  goods_id VARCHAR(20) DEFAULT NULL COMMENT '产品编号',
  data_url VARCHAR(300) DEFAULT NULL COMMENT '数据链接',
  pic_url VARCHAR(300) DEFAULT NULL COMMENT '图片链接',
  title VARCHAR(300) DEFAULT NULL COMMENT '产品标题',
  price VARCHAR(10) DEFAULT NULL COMMENT '产品价格',
  param TEXT COMMENT '产品参数',
  PRIMARY KEY (id)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS tb_users;

-- 创建用户表
CREATE TABLE tb_users (
  account VARCHAR(50) NOT NULL COMMENT '账号，主键',
  passwd VARCHAR(200) NOT NULL COMMENT '密码',
  salt_key VARCHAR(200) NOT NULL COMMENT '盐值',
  user_name VARCHAR(50) NOT NULL COMMENT '用户名',
  PRIMARY KEY (account)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;

insert into tb_users values ("ni_menhao", "f14254c9b9f6f8c965d2c65c572cf04d", "salt", "文浩");


DROP TABLE IF EXISTS tb_orders;

-- 创建订单表，用户与订单为一对多关系
CREATE TABLE tb_orders (
  id INT(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  order_id VARCHAR(20) DEFAULT NULL COMMENT '订单编号',
  account VARCHAR(50) NOT NULL COMMENT '账号，主键',
  is_paid TINYINT(1) NOT NULL COMMENT '是否付款',
  create_time DATETIME NOT NULL COMMENT '下单时间',
  is_old TINYINT(1) NOT NULL COMMENT '是否过时',
  PRIMARY KEY (id)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS tb_orders_product;

-- 创建订单产品关联表
CREATE TABLE tb_orders_product(
  id INT(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  order_id VARCHAR(200) NOT NULL COMMENT '订单编号',
  goods_id VARCHAR(200) NOT NULL COMMENT '产品编号',
  PRIMARY KEY (id)
)ENGINE=MYISAM DEFAULT CHARSET=utf8;




