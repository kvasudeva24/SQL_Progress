--  INT 
--  DECIMAL(M,N)
--  VARCHAR(1)
--  BLOB
--  DATE
--  TIMESTAMP()

 --all the basic datatypes in SQL

 -- m is the total number of digits
 --n is after the decimal point

CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20) ,
    PRIMARY KEY(student_id)
);
--this is a database schema


INSERT INTO student(name, major) VALUES(
    'Jack', 'Biology'
);

INSERT INTO student(name, major) VALUES(
    'Kate', 'Sociology'
);

INSERT INTO student(name, major) VALUES(
    'Claire', 'Chemistry'
);

INSERT INTO student(name, major) VALUES(
    'Jack', 'Biology'
);

INSERT INTO student(name, major) VALUES(
    'Mike', 'Computer Science'
);



--shows all the data in the table
SELECT * FROM student;


--update and delete
UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = "Comp Sci"
WHERE major = "Computer Science";

UPDATE student 
SET major = "Comp Sci"
WHERE student_id = 4;

UPDATE student 
SET name = "Tom", major = "Undecided"
WHERE student_id = 1;

--with no where it affefcts all rows
UPDATE student
SET major = 'Undecided';

--same thing here with no delete it will delete all rows
DELETE FROM student
WHERE name = 'Tom' AND major = 'Undecided';

DELETE FROM student;




--shows tables
DESCRIBE student; 


--add a column
ALTER TABLE student ADD gpa DEC(3, 2);


--delete a columnn
ALTER TABLE student DROP COLUMN gpa;




--deletes table
DROP TABLE student;

