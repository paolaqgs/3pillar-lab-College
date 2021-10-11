USE college
GO
--sp = Stored Procedures
			--sp para Academic Unit
--INSERT
CREATE OR ALTER PROCEDURE spInsertAcademicUnit
(
	@academicUnitName nvarchar(100)	
)
AS 
BEGIN
	INSERT INTO [dbo].[AcademicUnit]
	VALUES (@academicUnitName)

	SELECT * FROM [dbo].[AcademicUnit]
END
GO
-----------------------------------------------------------
--UPDATE
CREATE OR ALTER PROCEDURE spUpdateAcademicUnit
(
	@academicUnitId int,
	@academicUnitName nvarchar(100)
)
AS 
BEGIN 
	UPDATE [dbo].[AcademicUnit]
	SET academicUnitName = @academicUnitName
	WHERE academicUnitId= @academicUnitId
	
	SELECT * FROM [dbo].[AcademicUnit]
 END
GO
-----------------------------------------------------------
--DELETE 
CREATE OR ALTER PROCEDURE spDeleteAcademicUnit
(
	@academicUnitId nvarchar(100)
)
AS
BEGIN
	DELETE FROM [dbo].[AcademicUnit]
	WHERE academicUnitId = @academicUnitId
	
	SELECT * FROM [dbo].[AcademicUnit]
END
GO
-----------------------------------------------------------

			--sp para Classroom
--INSERT
CREATE OR ALTER PROCEDURE spInsertClassroom
(
	@classroomname nvarchar(50)
)
AS
BEGIN
	INSERT INTO [dbo].[Classroom]
	VALUES ( @classroomname )

	SELECT * FROM [dbo].[Classroom]
END 
GO
-----------------------------------------------------------
--UPDATE
CREATE OR ALTER PROCEDURE spUpdateClassroom
(
	@classroomId int,
	@classroomname nvarchar(50)
)
AS
BEGIN
	UPDATE [dbo].[Classroom]
	SET classroomName = @classroomname
	WHERE classroomId= @classroomId
	
	SELECT * FROM [dbo].[Classroom]
END 
GO

-----------------------------------------------------------
--DELETE
CREATE OR ALTER PROCEDURE spDeleteClassroom
(
	@classroomId int
)
AS
BEGIN
	DELETE FROM [dbo].[Classroom]
	WHERE classroomId = @classroomId
	SELECT * FROM [dbo].[Classroom]
END 
GO
-----------------------------------------------------------

			--sp para Program
--INSERT
CREATE OR ALTER PROCEDURE spInsertProgram
(
    @programName nvarchar(100),
	@academicUnitId int
)
AS 
BEGIN 
	INSERT INTO [dbo].[Program]
	VALUES ( @programName, @academicUnitId)

	SELECT * FROM [dbo].[Program]
END 
GO
-----------------------------------------------------------
--UPDATE
CREATE OR ALTER PROCEDURE spUpdateProgram
(
	@programId int,
    @programName nvarchar(100),
	@academicUnitId int
)
AS
BEGIN 
	UPDATE [dbo].[Program]
	SET programName = @programName,
	academicUnitId = @academicUnitId
	WHERE programId = @programId

	SELECT * FROM [dbo].[Program]
END
GO
-----------------------------------------------------------
--DELETE
CREATE OR ALTER PROCEDURE spDeleteProgram
(
	@programId int
)
AS
BEGIN
	DELETE FROM [dbo].[Program]
	WHERE programId = @programId

	SELECT * FROM [dbo].[Program]
END 
GO
-----------------------------------------------------------
			--sp para Student
--INSERT
CREATE OR ALTER PROCEDURE spInsertStudent
(
	@studentName nvarchar(50),
    @address nvarchar(250),
    @phoneNumber nvarchar(10),
    @emergencyNumber nvarchar(10),
    @email nvarchar(100),
    @birthdate date
)
AS
BEGIN 
	INSERT INTO [dbo].[Student]
	VALUES 
	(
		@studentName,
		@address,
		@phoneNumber,
		@emergencyNumber,
		@email,
		@birthdate
	)

	SELECT * FROM [dbo].[Student]
END 
GO
-----------------------------------------------------------
--UPDATE
CREATE OR ALTER PROCEDURE spUpdateStudent
(
	@studentId int,
	@studentName nvarchar(50),
    @address nvarchar(250),
    @phoneNumber nvarchar(10),
    @emergencyNumber nvarchar(10),
    @email nvarchar(100),
    @birthdate date
)
AS
BEGIN 
	UPDATE [dbo].[Student]
	SET 
		studentName = @studentName,
		[address] = @address,
		phoneNumber = @phoneNumber,
		emergencyNumber= @emergencyNumber,
		email = @email,
		birthdate = @birthdate
	WHERE 
		studentId = @studentId

		SELECT * FROM [dbo].[Student]
END
GO
-----------------------------------------------------------
--DELETE
CREATE OR ALTER PROCEDURE spDeleteStudent
(
	@studentId int 
)
AS 
BEGIN 
	DELETE FROM [dbo].[Student]
	WHERE studentId = @studentId

	SELECT * FROM [dbo].[Student]
END
GO

-----------------------------------------------------------
			--sp para StudentProgram
--INSERT
CREATE OR ALTER PROCEDURE spInsertStudentProgram
(
	@studentId int,
    @programId int
)
AS 
BEGIN
	INSERT INTO [dbo].[StudentProgram]
	VALUES 
	( @studentId, @programId )

	SELECT * FROM [dbo].[StudentProgram]
END 
GO

-----------------------------------------------------------
--UPDATE
CREATE OR ALTER PROCEDURE spUpdateStudentProgram
(
	@studentProgramId int,
	@studentId int,
    @programId int
)
AS
BEGIN
	UPDATE [dbo].[StudentProgram]
	SET studentId = @studentId, 
	programId = @programId
	WHERE studentProgramId = @studentProgramId
	SELECT * FROM [dbo].[StudentProgram]
END
GO
-----------------------------------------------------------
--DELETE
CREATE OR ALTER PROCEDURE spDeleteStudentProgram
(
	@studentProgramId int
)
AS
BEGIN 
	DELETE FROM [dbo].[StudentProgram]
	WHERE studentProgramId = @studentProgramId

	SELECT * FROM [dbo].[StudentProgram]
END
GO

-----------------------------------------------------------
			--sp para StudentSubject
--INSERT
CREATE OR ALTER PROCEDURE spInsertStudentSubject
(
	@studentId int,
	@subject int
)
AS 
BEGIN 
	INSERT INTO [dbo].[StudentSubject]
	VALUES ( @studentId, @subject )

	SELECT * FROM [dbo].[StudentSubject]
END
GO
-----------------------------------------------------------
--UPDATE
CREATE OR ALTER PROCEDURE spUpdateStudentSubject
(
	@studentSubjectId int,
	@studentId int,
	@subjectId int
)
AS 
BEGIN 
	UPDATE [dbo].[StudentSubject]
	SET studentId = @studentId,
	subjectid = @subjectid
	WHERE studentSubjectId = @studentSubjectId

	SELECT * FROM [dbo].[StudentSubject]
END
GO

-----------------------------------------------------------
--DELETE
CREATE OR ALTER PROCEDURE spDeleteStudentSubject
(
	@studentSubjectId int
)
AS
BEGIN 
	DELETE FROM [dbo].[StudentSubject]
	WHERE studentSubjectId = @studentSubjectId

	SELECT * FROM [dbo].[StudentSubject]
END
GO

-----------------------------------------------------------
			--sp para Subject
--INSERT
CREATE OR ALTER PROCEDURE spInsertSubject
(
	@subjectName nvarchar(100),
	@classroomId int,
    @teacherId int,
    @hoursWeek int,
    @credits int
)
AS 
BEGIN
	INSERT INTO [dbo].[Subject]
	VALUES (
	@subjectName, @classroomId, @teacherId, @hoursWeek, @credits
	)

	SELECT * FROM [dbo].[Subject]
END 
GO

-----------------------------------------------------------
--UPDATE
CREATE OR ALTER PROCEDURE spUpdateSubject
(
	@subjectId int,
	@subjectName nvarchar(100),
	@classroomId int,
    @teacherId int,
    @hoursWeek int,
    @credits int
)
AS 
BEGIN
	UPDATE [dbo].[Subject]
	SET classroomId= @classroomId, 
	teacherId= @teacherId, 
	subjectName= @subjectName, 
	hoursWeek= @hoursWeek, 
	credits = @credits
	WHERE subjectId = @subjectId

	SELECT * FROM [dbo].[Subject]
END 
GO

-----------------------------------------------------------
--DELETE
CREATE OR ALTER PROCEDURE spDeleteSubject
(
	@subjectId int
)
AS
BEGIN 
	DELETE FROM [dbo].[Subject]
	WHERE subjectId= @subjectId

	SELECT * FROM [dbo].[Subject]
END
GO
-----------------------------------------------------------

			--sp para Teacher
--INSERT
CREATE OR ALTER PROCEDURE spInsertTeacher
(
	@teacherName nvarchar(50),
	@academicUnitId int,
    @address nvarchar(250),
    @phoneNumber nvarchar(10),
    @emergencyNumber nvarchar(10),
    @email nvarchar(100),
    @birthdate date
)
AS 
BEGIN 
	INSERT INTO [dbo].[Teacher]
	VALUES ( @teacherName, @academicUnitId, @address, @phoneNumber, @emergencyNumber, @email, @birthdate )

	SELECT * FROM [dbo].[Teacher]
END 
GO
-----------------------------------------------------------
--UPDATE
CREATE OR ALTER PROCEDURE spUpdateTeacher
(
	@teacherId int, 
	@teacherName nvarchar(50),
	@academicUnitId int,
    @address nvarchar(250),
    @phoneNumber nvarchar(10),
    @emergencyNumber nvarchar(10),
    @email nvarchar(100),
    @birthdate date
)
AS 
BEGIN 
	UPDATE [dbo].[Teacher]
	SET teacherName = @teacherName, academicUnitId = @academicUnitId,
	[address] = @address, phoneNumber = @phoneNumber,
	emergencyNumber= @emergencyNumber,	email = @email,
	birthdate = @birthdate
	WHERE teacherId = @teacherId

	SELECT * FROM [dbo].[Teacher]
END
GO

-----------------------------------------------------------
--DELETE
CREATE OR ALTER PROCEDURE spDeleteTeacher
(
	@teacherId int
)
AS
BEGIN 
	DELETE FROM [dbo].[Teacher]
	WHERE teacherId= @teacherId

	SELECT * FROM [dbo].[Teacher]
END
GO