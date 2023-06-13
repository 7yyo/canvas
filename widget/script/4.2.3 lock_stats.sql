CREATE TABLE ${TABLE_NAME} (id INT PRIMARY KEY, c1 INT, INDEX k(c1));
INSERT INTO ${TABLE_NAME} VALUE (1, 100),(2, 200),(3, 300);
ANALYZE TABLE ${TABLE_NAME};
LOCK STATS ${TABLE_NAME};
INSERT INTO ${TABLE_NAME} VALUE (4, 400),(5, 500),(6, 600);
ANALYZE TABLE ${TABLE_NAME};
EXPLAIN SELECT * FROM ${TABLE_NAME};
UNLOCK STATS ${TABLE_NAME};
ANALYZE TABLE ${TABLE_NAME};
EXPLAIN SELECT * FROM ${TABLE_NAME};