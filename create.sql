CREATE DATABASE Uczelnia;

USE Uczelnia;
CREATE TABLE Students(
	index_number INTEGER IDENTITY(1,1),
	s_name VARCHAR(32) NOT NULL,
	surname VARCHAR(32) NOT NULL,
	post_code CHAR(8) NOT NULL,
	street VARCHAR(32) NOT NULL,
	number CHAR(5) NOT NULL
);

CREATE TABLE Faculties(
	id INTEGER IDENTITY(1,1),
	faculty_name VARCHAR(64),
	description VARCHAR(255)
);

CREATE TABLE Tutors(
	id INTEGER IDENTITY(1,1),
	t_name VARCHAR(32),
	surname VARCHAR(32),
	post_code CHAR(8),
	street VARCHAR(32),
	number CHAR(5)
);

CREATE TABLE Marks(
	id INTEGER IDENTITY(1,1),
	mark_value DECIMAL(2,1)
);

CREATE TABLE Subjects(
	id INTEGER IDENTITY(1,1),
	subject_name VARCHAR(32)
);

DROP TABLE Faculties;
DROP TABLE Marks;
DROP TABLE Subjects;
DROP TABLE Students;
DROP TABLE Tutors;