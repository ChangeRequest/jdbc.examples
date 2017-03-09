CREATE TABLE students (
  id   BIGINT NOT NULL,
  name VARCHAR(255)
);
INSERT INTO students (id, name) VALUES (1, 'Ivanov');
INSERT INTO students (id, name) VALUES (2, 'Ivanov');
INSERT INTO students (id, name) VALUES (3, 'Petrov');

DELETE FROM students WHERE name = 'Ivanov';

DROP TABLE students;
