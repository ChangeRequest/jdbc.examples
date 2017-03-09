CREATE TABLE groups (
  id   BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255)
);
CREATE TABLE students (
  id       BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name     VARCHAR(255),
  group_id BIGINT,
  FOREIGN KEY (group_id) REFERENCES groups (id)
);

INSERT INTO groups (name) VALUES ('Java');
INSERT INTO groups (name) VALUES ('PHP');
INSERT INTO groups (name) VALUES ('SQL');

INSERT INTO students (name, group_id) VALUES ('Ivanov0', (SELECT id FROM groups WHERE name = 'Java'));
INSERT INTO students (name, group_id) VALUES ('Ivanov1', (SELECT id FROM groups WHERE name = 'SQL'));
INSERT INTO students (name) VALUES ('Ivanov2');
INSERT INTO students (name, group_id) VALUES ('Ivanov3', (SELECT id FROM groups WHERE name = 'Java'));
INSERT INTO students (name, group_id) VALUES ('Ivanov4', (SELECT id FROM groups WHERE name = 'SQL'));
INSERT INTO students (name) VALUES ('Ivanov5');

INSERT INTO students (name, group_id) VALUES ('Sidorov0', (SELECT id FROM groups WHERE name = 'Java'));
INSERT INTO students (name, group_id) VALUES ('Sidorov1', (SELECT id FROM groups WHERE name = 'SQL'));
INSERT INTO students (name) VALUES ('Sidorov2');
INSERT INTO students (name, group_id) VALUES ('Sidorov3', (SELECT id FROM groups WHERE name = 'Java'));
INSERT INTO students (name, group_id) VALUES ('Sidorov4', (SELECT id FROM groups WHERE name = 'SQL'));
INSERT INTO students (name) VALUES ('Sidorov5');

INSERT INTO students (name, group_id) VALUES ('Petrov0', (SELECT id FROM groups WHERE name = 'Java'));
INSERT INTO students (name, group_id) VALUES ('Petrov1', (SELECT id FROM groups WHERE name = 'SQL'));
INSERT INTO students (name) VALUES ('Petrov2');
INSERT INTO students (name, group_id) VALUES ('Petrov3', (SELECT id FROM groups WHERE name = 'Java'));
INSERT INTO students (name, group_id) VALUES ('Petrov4', (SELECT id FROM groups WHERE name = 'SQL'));
INSERT INTO students (name) VALUES ('Petrov5');

SELECT * FROM students INNER JOIN groups ON students.group_id = groups.id;
SELECT * FROM students LEFT JOIN groups ON students.group_id = groups.id;
SELECT * FROM students RIGHT JOIN groups ON students.group_id = groups.id;
SELECT * FROM students JOIN groups ON students.group_id = groups.id;

DROP TABLE students;
DROP TABLE groups;
