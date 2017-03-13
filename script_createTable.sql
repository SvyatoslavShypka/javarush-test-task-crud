DROP DATABASE IF EXISTS TEST;
CREATE DATABASE TEST;
USE TEST;
DROP TABLE IF EXISTS `test`.`user`;

CREATE TABLE `user`(
  `id` INT(8) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(25) NOT NULL DEFAULT '0',
  `age` INT(3) NOT NULL DEFAULT '0',
  `isAdmin` BIT NOT NULL,
  `createdDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO test.user (NAME, AGE, ISADMIN)
VALUES
  ('Артём', '23', b'1'),
  ('Ivan', '20', b'0'),
  ('Андрей', '43', b'0'),
  ('Ольга', '20', b'0'),
  ('Олена', '34', b'0'),
  ('Василь', '19', b'0'),
  ('Петро', '45', b'0'),
  ('Daniel', '23', b'0'),
  ('Nikola', '32', b'0'),
  ('Alex', '24', b'1'),
  ('Sergey', '35', b'0'),
  ('Irina', '33', b'0'),
  ('Olga', '23', b'0'),
  ('Anastasia', '52', b'0'),
  ('Sergey', '25', b'0'),
  ('Alexey', '18', b'0'),
  ('Gleb', '19', b'0');
