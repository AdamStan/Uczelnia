USE Uczelnia;

CREATE TABLE SubjectToTutors(
	subject_id INTEGER,
	tutor_id INTEGER
);

ALTER TABLE Faculties
	ADD CONSTRAINT pk_fac PRIMARY KEY (id);

ALTER TABLE Subjects
	ADD CONSTRAINT pk_sub PRIMARY KEY (id);

ALTER TABLE Students
	ADD CONSTRAINT pk_stud PRIMARY KEY (index_number),
		faculty_id INTEGER,
		CONSTRAINT fk_fac_stud FOREIGN KEY (faculty_id) REFERENCES Faculties(id)
	;

ALTER TABLE Tutors
	ADD CONSTRAINT pk_tut PRIMARY KEY (id),
		faculty_id INTEGER,
		CONSTRAINT fk_fac_tut FOREIGN KEY (faculty_id) REFERENCES Faculties(id)
	;

ALTER TABLE Marks
	ADD CONSTRAINT pk_mk PRIMARY KEY (id),
		student_id INTEGER,
		subject_id INTEGER,
		tutor_id INTEGER,
		CONSTRAINT fk_std_mk FOREIGN KEY (student_id) REFERENCES Students(index_number),
		CONSTRAINT fk_sub_mk FOREIGN KEY (subject_id) REFERENCES Subjects(id),
		CONSTRAINT fk_tut_mk FOREIGN KEY (tutor_id) REFERENCES Tutors(id)
	;

ALTER TABLE SubjectToTutors
	ADD CONSTRAINT fk_sub FOREIGN KEY (subject_id) REFERENCES Subjects(id),
		CONSTRAINT fk_tut FOREIGN KEY (tutor_id) REFERENCES Tutors(id)
	;

