CREATE TABLE ${TABLE_NAME} (id INT PRIMARY KEY, c1 INT, c2 VARCHAR(11), key k1(c1));
SHOW CREATE TABLE ${TABLE_NAME};
ALTER TABLE ${TABLE_NAME} DROP INDEX k1;
SHOW CREATE TABLE ${TABLE_NAME};