CREATE TABLE ${TABLE_NAME} (id INT PRIMARY KEY, c1 INT, c2 INT );
ALTER TABLE ${TABLE_NAME} ADD INDEX k1 (c1);
ALTER TABLE ${TABLE_NAME} ADD INDEX k2 (c2);
INSERT INTO ${TABLE_NAME} VALUE (1, 10, 100), (2, 20, 200);
ANALYZE TABLE ${TABLE_NAME};
EXPLAIN SELECT /*+ USE_INDEX(${TABLE_NAME}, k1) */ c1, c2 FROM ${TABLE_NAME} WHERE c1 = 2;
EXPLAIN SELECT /*+ USE_INDEX(${TABLE_NAME}, k2) */ c1, c2 FROM ${TABLE_NAME} WHERE c1 = 2;