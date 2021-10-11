CREATE DATABASE college;
GO
USE college
GO

CREATE TABLE Student
(
	studentId INT IDENTITY(1,1),
	studentName NVARCHAR(50) NOT NULL,
	[address] NVARCHAR(250) NOT NULL,
	phoneNumber NVARCHAR(10) NOT NULL,
	emergencyNumber NVARCHAR(10) NOT NULL,
	email NVARCHAR(100) NOT NULL,
	birthdate DATE NOT NULL,
	PRIMARY KEY(studentId)
)

CREATE TABLE AcademicUnit
(
	academicUnitId INT IDENTITY(1,1),
	academicUnitName NVARCHAR(100) NOT NULL,
	PRIMARY KEY(academicUnitId)
)

CREATE TABLE Teacher
(
	teacherId INT IDENTITY(1,1),
	teacherName NVARCHAR(50) NOT NULL,
	academicUnitId INT NOT NULL,
	[address] NVARCHAR(250) NOT NULL,
	phoneNumber NVARCHAR(10) NOT NULL,
	emergencyNumber NVARCHAR(10) NOT NULL,
	email NVARCHAR(100) NOT NULL,
	birthdate DATE NOT NULL,
	PRIMARY KEY(teacherId),
	FOREIGN KEY(academicUnitId) REFERENCES AcademicUnit(academicUnitId)
)

CREATE TABLE Program
(
	programId INT IDENTITY(1,1),
	programName NVARCHAR(100),
	academicUnitId INT,
	PRIMARY KEY(programId),
	FOREIGN KEY(academicUnitId) REFERENCES AcademicUnit(academicUnitId)
)

CREATE TABLE StudentProgram
(
	studentProgramId INT IDENTITY(1,1),
	studentId INT,
	programId INT,
	PRIMARY KEY(studentProgramId),
	FOREIGN KEY(studentId) REFERENCES Student(studentId),
	FOREIGN KEY(programId) REFERENCES Program(programId)
)

CREATE TABLE Classroom
(
	classroomId INT IDENTITY(1,1),
	classroomName NVARCHAR(50) NOT NULL,
	PRIMARY KEY(classroomId)
)

CREATE TABLE [Subject]
(
	subjectId INT IDENTITY(1,1),
	subjectName NVARCHAR(100) NOT NULL,
	classroomId INT,
	teacherId INT,
	hoursWeek INT NOT NULL,
	credits INT NOT NULL,
	PRIMARY KEY(subjectId),
	FOREIGN KEY(teacherId) REFERENCES Teacher(teacherId),
	FOREIGN KEY(classroomId) REFERENCES Classroom(classroomId)
)

CREATE TABLE StudentSubject
(
	studentSubjectId INT IDENTITY(1,1),
	studentId INT,
	subjectId INT,
	PRIMARY KEY(studentSubjectId),
	FOREIGN KEY(studentId) REFERENCES Student(studentId),
	FOREIGN KEY(subjectId) REFERENCES [Subject](subjectId)
)