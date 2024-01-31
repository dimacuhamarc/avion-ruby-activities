CREATE TABLE classrooms (
	id			INTEGER			PRIMARY KEY,
	student_id	INTEGER,
	section		CHARACTER(1)	NOT NULL
);

-- DROP TABLE classrooms;

-- SELECT * FROM classrooms;

INSERT INTO classrooms
  ( id, student_id, section )
VALUES
  (1, 1, 'A'),
  (2, 2, 'A'),
  (3, 3, 'B'),
  (4, 4, 'C'),
  (5, 5, 'B'),
  (6, 6, 'A'),
  (7, 7, 'C'),
  (8, 8, 'B'),
  (9, 9, 'B'),
  (10, 10, 'C');

-- Inner Join
SELECT
	classrooms.student_id,
	classrooms.section
FROM
	classrooms
	INNER JOIN students ON students.id = classrooms.student_id;

-- Left Join
SELECT
	c.id,
	c.section,
	s.id,
	s.last_name
FROM
	classrooms c
	LEFT JOIN students s ON s.id = c.student_id
ORDER BY
	c.id ASC;

-- Right Join
SELECT *
FROM
	classrooms
	RIGHT JOIN students ON students.id = classrooms.student_id
ORDER BY
	section ASC;

-- Full Join
SELECT
	c.section,
	s.id,
	s.first_name,
	s.last_name,
	s.age
FROM
	classrooms c
	FULL JOIN students s ON c.student_id = s.id;