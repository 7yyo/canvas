CREATE TEMPORARY TABLE ${TABLE_NAME} (id INT PRIMARY KEY );
INSERT INTO ${TABLE_NAME} VALUE (1);
SELECT * FROM ${TABLE_NAME};
## -
CREATE TEMPORARY TABLE ${TABLE_NAME} (id INT PRIMARY KEY );
INSERT INTO ${TABLE_NAME} VALUE (2);
SELECT * FROM ${TABLE_NAME};