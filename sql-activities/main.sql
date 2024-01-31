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

-- ACTIVITY 3 JOINS

CREATE TYPE grade_types AS ENUM ('A','B','C','D','E','F');

CREATE TABLE research_papers (
	id			INTEGER			PRIMARY KEY,
	student_id	INTEGER			NOT NULL,
	grade		grade_types,
	FOREIGN KEY (student_id) REFERENCES students(id)
);


INSERT INTO research_papers
	( id, student_id, grade )
VALUES
	( 1, 1, 'A'),
	( 2, 1, 'D'),
	( 3, 1, 'B'),
	( 4, 3, 'A'),
	( 5, 3, 'C'),
	( 6, 3, 'A'),
	( 7, 2, NULL),
	( 8, 4, NULL),
	( 9, 1, 'A'),
	( 10, 1, 'B');

SELECT s.first_name, s.last_name, COUNT(r.id) AS number_of_research_papers FROM students s
	LEFT JOIN research_papers r ON s.id = r.student_id
		GROUP BY s.id, s.first_name, s.last_name
			HAVING COUNT(r.id) > 1;

SELECT s.first_name, s.last_name, r.id AS research_paper_id, r.grade FROM students s
	LEFT JOIN research_papers r ON s.id = r.student_id
		WHERE r.grade IS NULL
			GROUP BY s.id, s.first_name, s.last_name, r.id, r.grade
				HAVING COUNT(r.id) > 0;