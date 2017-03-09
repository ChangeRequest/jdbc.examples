CREATE TABLE students (
  id   BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255)
);

INSERT INTO students (name) VALUES ('Ivanov0');
INSERT INTO students (name) VALUES ('Ivanov1');
INSERT INTO students (name) VALUES ('Ivanov2');
INSERT INTO students (name) VALUES ('Ivanov3');
INSERT INTO students (name) VALUES ('Ivanov4');
INSERT INTO students (name) VALUES ('Ivanov5');

INSERT INTO students (name) VALUES ('Sidorov0');
INSERT INTO students (name) VALUES ('Sidorov1');
INSERT INTO students (name) VALUES ('Sidorov2');
INSERT INTO students (name) VALUES ('Sidorov3');
INSERT INTO students (name) VALUES ('Sidorov4');
INSERT INTO students (name) VALUES ('Sidorov5');

INSERT INTO students (name) VALUES ('Petrov0');
INSERT INTO students (name) VALUES ('Petrov1');
INSERT INTO students (name) VALUES ('Petrov2');
INSERT INTO students (name) VALUES ('Petrov3');
INSERT INTO students (name) VALUES ('Petrov4');
INSERT INTO students (name) VALUES ('Petrov5');

SELECT id, name FROM students;
SELECT * FROM students;
SELECT name AS surname FROM students;

SELECT * FROM students WHERE id > 7;
SELECT * FROM students WHERE name LIKE '%rov%';

SELECT * FROM students LIMIT 5 OFFSET 5;
SELECT * FROM students ORDER BY name LIMIT 5 OFFSET 5;
SELECT * FROM students ORDER BY name DESC LIMIT 5;

DROP TABLE students;
