CREATE TABLE students (
  id   BIGINT NOT NULL,
  name VARCHAR(255)
);
CREATE TABLE groups (
  id   BIGINT NOT NULL,
  name VARCHAR(255)
);

ALTER TABLE students ADD birthday BIGINT;
ALTER TABLE students ALTER COLUMN birthday DATE;
ALTER TABLE students DROP COLUMN birthday;

ALTER TABLE students ALTER COLUMN name SET NOT NULL;
ALTER TABLE students ADD PRIMARY KEY (id, name);
ALTER TABLE students DROP PRIMARY KEY;
ALTER TABLE students ADD PRIMARY KEY (id);

ALTER TABLE students ADD group_id BIGINT;
ALTER TABLE students ADD FOREIGN KEY (group_id) REFERENCES groups(id);

DROP TABLE groups;
DROP TABLE students;
