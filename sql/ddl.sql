DROP DATABASE IF EXISTS exam;
CREATE DATABASE IF NOT EXISTS exam;

# user table
DROP TABLE IF EXISTS exam.user;
CREATE TABLE exam.user (
  id       INT                   AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username VARCHAR(255) UNIQUE
  COMMENT '用户名',
  password VARCHAR(255) NOT NULL
  COMMENT '密码',
  role     VARCHAR(255) NOT NULL DEFAULT 'user'
  COMMENT 'admin:管理员; user:普通用户'
)
  COMMENT '用户表';
# dictionary table
DROP TABLE IF EXISTS exam.dictionary;
CREATE TABLE exam.dictionary (
  id       INT                   AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  chinese VARCHAR(255) NOT NULL
  COMMENT '中文',
  english VARCHAR(255) NOT NULL
  COMMENT '英文',
   property    VARCHAR(255) NOT NULL
  COMMENT '属性',
  sentence VARCHAR(255) NOT NULL
  COMMENT '例句'
)
  COMMENT '词典表';


INSERT INTO exam.user VALUES (NULL, 'a', 'a', 'admin');

SELECT *
FROM exam.user;
SELECT *
FROM exam.dictionary;