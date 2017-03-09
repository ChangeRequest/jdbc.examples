CREATE TABLE students (
  id   BIGINT NOT NULL,
  name VARCHAR(255)
);
INSERT INTO students (id, name) VALUES (1, 'Ivanov');
INSERT INTO students VALUES (2, 'Petrov');

ALTER TABLE students ALTER COLUMN id BIGINT AUTO_INCREMENT;

INSERT INTO students (name) VALUES ('Sidorov');

DROP TABLE students;
