CREATE TABLE ${TABLE_NAME} (id INT PRIMARY KEY, c1 INT, c2 INT);
ALTER TABLE ${TABLE_NAME} ADD INDEX k1(c1);
ALTER TABLE ${TABLE_NAME} ADD INDEX k2(c2);
INSERT INTO ${TABLE_NAME} VALUES (1, 10, 100), (2, 20, 200);
EXPLAIN SELECT * FROM ${TABLE_NAME} WHERE c1 = 10 OR c2 = 200;