/*** QUERIES SELECTS/VIEWS  ***/
USE college
GO
--- Teachers by Academic Unit
SELECT academicUnitName AcademicUnit, teacherName Teacher
FROM [dbo].Teacher T
JOIN [dbo].AcademicUnit AU
ON T.academicUnitId = AU.academicUnitId
ORDER BY academicUnitName
GO

---Program Name&AcademicUnit Name
SELECT DISTINCT programName Program, AcademicUnitName AcademicUnit
FROM [dbo].Program P
JOIN [dbo].AcademicUnit AU
ON P.academicUnitId = AU.academicUnitId
ORDER BY academicUnitName
GO

--- View Program Name&Student Name
CREATE OR ALTER VIEW StudentsByProgram
AS
SELECT programName Program, studentName Student
FROM [dbo].StudentProgram SP
JOIN [dbo].Program P
ON SP.programId = P.programId
JOIN [dbo].Student S
ON SP.studentId = S.studentId
GO

--- View of Students by Program
CREATE OR ALTER VIEW NumStudentsByProgram
AS
SELECT programName Program, count(studentId) AS EnrolledStudents
FROM [dbo].studentProgram SP
JOIN [dbo].Program P
ON SP.programId = P.programId
GROUP BY programName
GO

--- Subject Name&Student Name
SELECT subjectName [Subject], studentName Student
FROM [dbo].StudentSubject SS
JOIN [dbo].Student Student
ON SS.studentId = Student.studentId 
JOIN [dbo].[Subject] Sub
ON SS.subjectId = Sub.subjectId
ORDER BY subjectName
GO

--- View Teacher Name&Subject Name
CREATE OR ALTER VIEW SubjectByTeacher
AS
SELECT teacherName Teacher, subjectName [Subject]
FROM [dbo].[Subject] S
JOIN [dbo].Teacher T
ON S.teacherId = T.teacherId
GO

--- Total subjects by teacher
CREATE OR ALTER VIEW TotalSubjectsByTeacher
AS
SELECT teacherName Teacher, count(subjectId) as TotalSubjects
FROM [dbo].Teacher T
JOIN [dbo].[Subject] S
ON T.teacherId = S.teacherId
GROUP BY teacherName
GO

--- Subjects with credits >=5
SELECT subjectName [Subject], credits Credits
FROM [dbo].[Subject] S
WHERE S.credits >= 5
GO

--- Subjects and classrooms 
CREATE OR ALTER VIEW SubjectClassroom
AS
SELECT subjectName [Subject], classroomName Classroom
FROM [dbo].[Subject] Sub
JOIN [dbo].Classroom C
ON C.classroomId = Sub.classroomId
GO

--- Student Schedule Info
SELECT studentName Student, subjectName [Subject], classroomName Classroom, teacherName Teacher
FROM [dbo].Student Stu
JOIN [dbo].StudentSubject SS
ON Stu.studentId = SS.studentId
JOIN [dbo].[Subject] Sub
ON Sub.subjectId = SS.subjectId
JOIN [dbo].Classroom C
ON C.classroomId = Sub.classroomId
JOIN [dbo].Teacher T
ON T.teacherId = Sub.teacherId
ORDER BY studentName
GO

--- Student Info
CREATE OR ALTER VIEW StudentsInfo
AS
SELECT studentName Student, programName Program, phoneNumber PhoneNumber, email Email
FROM [dbo].Student S
JOIN [dbo].StudentProgram SP
ON S.studentId = SP.studentId
JOIN [dbo].Program P
ON SP.programId = P.programId
GO 

--- Teacher Info
CREATE OR ALTER VIEW TeachersInfo
AS
SELECT teacherName Student, academicUnitName AcademicUnit, phoneNumber PhoneNumber, email Email
FROM [dbo].Teacher T
JOIN [dbo].AcademicUnit AU
ON T.academicUnitId = au.academicUnitId
GO 

--- Subjects with 2 to 5 hr a week
SELECT subjectName [Subject], hoursWeek 
FROM [dbo].Subject S
WHERE S.hoursWeek BETWEEN 2 AND 5
GO

--- teachers born between 1980-1985
SELECT teacherName Teacher, birthdate Birthdate
FROM [dbo].Teacher T
WHERE T.birthdate BETWEEN '1980-01-01' AND '1985-01-01'


--- Subjects like x
SELECT subjectName [Subject]
FROM [dbo].[Subject]
WHERE subjectName LIKE '%log%'
