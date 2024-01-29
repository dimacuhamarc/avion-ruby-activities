-- ACTIVITY 1

CREATE TABLE students (
	id			INTEGER			PRIMARY KEY,
	first_name	CHARACTER(50)	NOT NULL,
	middle_name CHARACTER(50),
	last_name	CHARACTER(50)	NOT NULL,
	age			INTEGER			NOT NULL,
	location	CHARACTER(50)	NOT NULL
);

-- SELECT * FROM students;

-- DROP TABLE students;

INSERT INTO students
	( id, first_name, last_name, age, location )
VALUES
	( 1, 'Juan', 'Cruz', 18, 'Manila'),
	( 2, 'Anne', 'Wall', 20, 'Manila'),
	( 3, 'Theresa', 'Joseph', 21, 'Manila'),
	( 4, 'Isaac', 'Gray', 19, 'Laguna'),
	( 5, 'Zack', 'Matthews', 22, 'Marikina'),
	( 6, 'Finn', 'Lam', 25, 'Manila');

UPDATE students
	SET 
		first_name = 'Ivan',
		middle_name = 'Ingram',
		last_name = 'Howard',
		age = 25,
		location = 'Bulacan'
	WHERE 
		id = 1;

DELETE FROM students
	WHERE id = (SELECT MAX(id) FROM students);

-- ACTIVITY 2

SELECT COUNT(id) FROM students;

SELECT COUNT(id) FROM students WHERE location = 'Manila';

SELECT AVG(age) AS average_age FROM students;

SELECT * FROM students ORDER BY age DESC;