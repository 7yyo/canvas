CREATE TABLE ${TABLE_NAME}_user (id INT PRIMARY KEY, name VARCHAR(11), age INT);
CREATE TABLE ${TABLE_NAME}_order (id INT PRIMARY KEY, user_id INT);
INSERT INTO ${TABLE_NAME}_user VALUES (1, 'Green', 18), (2, 'Jim', 24), (3, 'Lucy', 24);
INSERT INTO ${TABLE_NAME}_order VALUES (1, 1),(2, 2);
SELECT * FROM ${TABLE_NAME}_user WHERE EXISTS(SELECT * FROM ${TABLE_NAME}_order WHERE id = ${TABLE_NAME}_user.id);