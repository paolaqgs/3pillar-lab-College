USE college
GO
/*-----------------Students-----------------*/
INSERT INTO Student  (studentName, [address], phoneNumber, emergencyNumber, email, birthdate)
	VALUES 
		('Benito Martinez', '21759 Akeem Ways Suite 799', '3676511948', '3676511948', 'badbunny@gmail.com', '1994-03-10' ),
		('Ana Ochoa',  '8303 Bria Fords', '6621458975', '6621758549', 'an.round@gmail.com',	'1998-08-27'),
		('Alondra Quirarte', '4555 Asha River', '6223485132', '6223485132',	'alon8a@gmail.com', '1998-07-25'),
		('Oliver Nickell', '30866 Mozell Road', '6623569856', '6623569856',	'oli33@gmail.com', '1998-06-29'),
		('Dominic Harrison', '4555 Asha River', '6621555569', '6621555569',	'domHarr@gmail.com', '1997-08-05'),
		('Pol Q', '4555 Asha River', '6623885245', '6623885245',	'polq@gmail.com', '1998-04-28'),
		('Shakira Mebarak', '4555 Asha River', '6621996647', '6621996647',	'shakishaki@gmail.com', '1977-02-02'),
		('Robert Burnham', '4555 Asha River', '6622446655', '6622446655',	'bobbu2@gmail.com', '1990-08-21'),
		('Matthew Lillard', '4555 Asha River', '6622123214', '6622123214',	'mattlizz@gmail.com', '1970-01-24'),
		('Declan McKenna', '4555 Asha River', '6623333333', '6623333333',	'mcKennaD@gmail.com', '1998-12-24'),
		('Eduardo Badía', '420 Mohammad Knoll', '5533642158', '5533642158', 'jjbadia@gmail.com', '1991-03-15' ),
		('Mario Lopez Espinosa',  '122 Genesis Expressway', '8566001014', '8566001014', 'eduU@gmail.com',	'1990-04-20'),
		('José Antonio Capistrán', '3937 Lura Haven', '6225500020', '6225500020',	'marcaop@gmail.com', '1989-10-20'),
		('Stefani Germanotta', '95321 Hamill Fork Apt. 873', '6620772241', '6620772241', 'ladygg@gmail.com', '1986-06-2'),
		('Douglas Driver', '1075 Ray Heights Suite 199', '6633379520', '6633379520',	'driverAda@gmail.com', '1993-11-19')
GO

/*-----------------Academic Units-----------------*/
INSERT INTO AcademicUnit (academicUnitName)
	VALUES 
		('Administration'),
		('Agriculture'),
		('Arts'),
		('Anthropology'),
		('Physical Sciences'),
		('Biological Sciences'),
		('Health & Medicine'),
		('Social Sciences'),
		('Engineering'),
		('Humanities')
GO

/*-----------------Programs-----------------*/
INSERT INTO Program 
	(programName, academicUnitId)
	VALUES 
		('Public Administration', 1),
		('Agribusiness & Managment', 2),
		('Visual & Performing Arts', 3),
		('Anthropology', 4),
		('Astronomy', 5),
		('Cell Biology', 6),
		('Environmental Health Sciences', 7),
		('Law', 8),
		('Computer Science', 9),
		('American Studies', 10)
GO

/*-----------------Student Program-----------------*/
INSERT INTO StudentProgram (studentId, programId)
	VALUES 
		(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 1),
		(12, 2),
		(13, 3),
		(14, 4),
		(15, 5)
GO

/*-----------------Teachers-----------------*/
INSERT INTO Teacher 
	(teacherName, academicUnitId, [address], phoneNumber, emergencyNumber, email, birthdate)
	VALUES
		('Rosalía Vila Tobella',1, '95957 Constance View Apt. 123', '6621454582', '6621454582', 'laRosalia@gmail.com','1993-09-25'),
		('Natalia Gutiérrez Batista',2, '566 Orpha Locks Apt. 326', '8524569512', '8524569512', 'nattinatasha@gmail.com','1986-12-10'),
		('Remus John Lupin', 3,'358 Wolf Flats', '6635496528', '6635496528', 'moonyL@gmail.com','1960-03-10'),
		('Agatha Trunchbull', 4,'8473 Pink Landing Suite 986', '6658455798', '6658455798', 'tronchatoro@gmail.com','1948-05-11'),
		('Walter Hartwell White', 5, '58742 Dawson Throughway', '6655485987', '6655485987', 'heisenberg@gmail.com','1958-09-07'),
		('Sharon Norbury', 6, '94975 Agustin Turnpike Apt. 597', '2236521003', '2236521003', 'sharonmth@gmail.com','1970-05-18'),
		('Susan Rodham Sylvester', 7, '32284 Ferry Ranch', '6634887700', '6634887700', 'sue4life@gmail.com','1960-07-14'),
		('Dewey Finn', 8, '454 Fausto Ridge Apt. 555', '8663000412', '8663000412', 'blackjack@gmail.com','1969-08-28'),
		('Elliot Alderson', 9, '95294 Gulgowski Squares', '3332654123', '3332654123', 'mrRoboto@gmail.com','1981-05-12'),
		('Britney Jean Spears', 10, '7793 Addison Trace Suite 406', '6666471100', '6666471100', 'freeme@gmail.com','1981-12-02')
GO
		
/*-----------------Classrooms-----------------*/
INSERT INTO Classroom (classroomName)
	VALUES 
		('A101'),
		('A201'),
		('A300'),
		('B100'),
		('B201'),
		('B330'),
		('C110'),
		('C210'),
		('C302'),
		('C400')
GO

/*-----------------Subjects-----------------*/
INSERT INTO [Subject] (subjectName, classroomId, teacherId, hoursWeek, credits)
	VALUES 
		('General Administration', 1, 1, 5, 5),
		('Agricultural projects', 9, 2, 5, 5),
		('Stage Management', 2, 3, 10, 7),
		('Anthropological Theory', 10, 4, 7, 3),
		('Astrophysics', 3, 5, 4, 3),
		('Microbiology', 3, 6, 3, 8),
		('Environmental Quality', 4, 7, 4, 8),
		('Criminal Law', 4, 8, 5, 8),
		('Artificial Intelligence', 5, 9, 5, 8),
		('The American Experience', 5, 10, 2, 4)
GO

/*-----------------StudentSubject-----------------*/
INSERT INTO StudentSubject (studentId, subjectId) 
	VALUES 
		(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 1),
		(12, 2),
		(13, 3),
		(14, 4),
		(15, 5)
GO