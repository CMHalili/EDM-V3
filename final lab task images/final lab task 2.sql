CREATE DATABASE student_db;

-- STUDENT TABLE --
CREATE TABLE student_tbl (
username VARCHAR (50) PRIMARY KEY
);

DESCRIBE student_tbl;

-- ASSIGNMENT TABLE --
CREATE TABLE assignment_tbl (
shortname VARCHAR (50) PRIMARY KEY,
due_date DATE NOT NULL,
url VARCHAR (255)
);

DESCRIBE assignment_tbl;

-- SUBMISSION TABLE --
CREATE TABLE submission_tbl (
username VARCHAR (50),
shortname VARCHAR (50),
version INT,
submit_date DATE NOT NULL,
PRIMARY KEY (username, shortname, version),
FOREIGN KEY (username) REFERENCES student_tbl(username),
FOREIGN KEY (shortname) REFERENCES assignment_tbl(shortname)
);

DESCRIBE submission_tbl;


