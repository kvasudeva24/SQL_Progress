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
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);
--this is a database schema




INSERT INTO student VALUES(
    1, 'Kartik', 'CS'
);

INSERT INTO student VALUES(
    2, 'John Pork', 'Finance'
);

--if you don't know all the values
--you can only do the ones you know 
INSERT INTO student(student_id, name) VALUES(
    3, 'Maria'
);

INSERT INTO student(student_id, name) VALUES(
    4, 'Maria'
);

--shows all the data in the table
SELECT * FROM student;



--shows tables
DESCRIBE student; 


--add a column
ALTER TABLE student ADD gpa DEC(3, 2);


--delete a columnn
ALTER TABLE student DROP COLUMN gpa;




--deletes table
DROP TABLE student;


