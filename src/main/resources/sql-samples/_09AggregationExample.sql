CREATE TABLE groups (
  id          BIGINT       NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name        VARCHAR(255) NOT NULL,
  course      INTEGER      NOT NULL,
  scholarship DECIMAL                           DEFAULT 0
);

INSERT INTO groups (name, course, scholarship) VALUES ('Java', 1, 300);
INSERT INTO groups (name, course, scholarship) VALUES ('Java', 2, 350);
INSERT INTO groups (name, course, scholarship) VALUES ('Java', 3, 400);
INSERT INTO groups (name, course, scholarship) VALUES ('SQL', 1, 200);
INSERT INTO groups (name, course, scholarship) VALUES ('SQL', 2, 300);
INSERT INTO groups (name, course, scholarship) VALUES ('SQL', 3, 400);
INSERT INTO groups (name, course, scholarship) VALUES ('PHP', 1, 200);
INSERT INTO groups (name, course, scholarship) VALUES ('PHP', 2, 250);
INSERT INTO groups (name, course, scholarship) VALUES ('PHP', 3, 300);
INSERT INTO groups (name, course, scholarship) VALUES ('QA', 1, 100);

SELECT name, max(scholarship) AS max FROM groups GROUP BY name;
SELECT name, min(scholarship) AS min FROM groups GROUP BY name HAVING min(scholarship) > 100;

SELECT avg(scholarship) AS avg FROM groups;
SELECT count(*) AS count FROM groups;
SELECT sum(scholarship) AS sum FROM groups;

SELECT name, count(*) AS count FROM groups WHERE scholarship > 200 GROUP BY name;

DROP TABLE groups;
