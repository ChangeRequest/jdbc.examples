CREATE USER IF NOT EXISTS demo_user PASSWORD 'demo123';

CREATE TABLE IF NOT EXISTS groups (
  id          BIGINT       NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name        VARCHAR(255) NOT NULL,
  course      INT          NOT NULL,
  scholarship DECIMAL      NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS students (
  id       BIGINT       NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name     VARCHAR(255) NOT NULL,
  group_id BIGINT,
  FOREIGN KEY (group_id) REFERENCES groups (id)
);

INSERT INTO groups (name, course, scholarship) VALUES ('Java', 1, 300);
INSERT INTO groups (name, course, scholarship) VALUES ('Java', 2, 350);
INSERT INTO groups (name, course, scholarship) VALUES ('Java', 3, 400);
INSERT INTO groups (name, course, scholarship) VALUES ('PHP', 1, 200);
INSERT INTO groups (name, course, scholarship) VALUES ('PHP', 2, 250);
INSERT INTO groups (name, course, scholarship) VALUES ('QA', 1, 200);
