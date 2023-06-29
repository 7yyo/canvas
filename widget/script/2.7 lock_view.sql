CREATE TABLE ${TABLE_NAME} (id INT PRIMARY KEY, c1 VARCHAR(11));
INSERT INTO ${TABLE_NAME} VALUE (1, 'abc');
BEGIN;
SELECT NOW();
UPDATE ${TABLE_NAME} SET c1 = 'tidb' WHERE id = 1;
SELECT SLEEP(60);
## -
SELECT SLEEP(2);
BEGIN;
SELECT NOW();
UPDATE ${TABLE_NAME} SET c1 = 'xyz' WHERE id = 1;
## -
SELECT SLEEP(3);
SELECT NOW();
SELECT * FROM information_schema.data_lock_waits;