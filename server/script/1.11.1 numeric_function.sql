CREATE TABLE ${TABLE_NAME} (c1 INT key, c2 MEDIUMINT, c3 DECIMAL(60,30), c4 DOUBLE);
INSERT INTO ${TABLE_NAME} VALUES (1,4,12.12,4.551),(10,6,11.11,4.55),(22,21,123.123,3.14),(34,30,12345.12345,3.14135),(14,10,100.1,111.551),(9,9,9.9,99.341),(30,31,34.67,14.001),(18,null,13.331,9.991),(-18,null,-13.331,-9.991);
SELECT * FROM ${TABLE_NAME} WHERE ABS(c1) = 18 ;
SELECT * FROM ${TABLE_NAME} WHERE EXP(c1) < 1;
SELECT * FROM ${TABLE_NAME} WHERE MOD(c1, 2) = 0;
SELECT * FROM ${TABLE_NAME} WHERE c1 < POWER(5, -2);
SELECT * FROM ${TABLE_NAME} WHERE SIGN(c1) = -1;
SELECT * FROM ${TABLE_NAME} WHERE SQRT(c1) = 3;
SELECT * FROM ${TABLE_NAME} WHERE CEIL(c3) = 14;
SELECT * FROM ${TABLE_NAME} WHERE CEILING(c3) = 14;
SELECT * FROM ${TABLE_NAME} WHERE FLOOR(c1) < 10;
SELECT * FROM ${TABLE_NAME} WHERE ROUND(c3) > 123;
SELECT * FROM ${TABLE_NAME} WHERE TRUNCATE(c3, 3) = 12345.123;


