USE college
GO
/*TEST PROCEDURES COLLEGE */

			/* ACADEMIC UNIT */
---INSERT
EXEC spInsertAcademicUnit 'Faculty of Arts'
GO
---UPDATE
EXEC spUpdateAcademicUnit 11, 'Faculty of AAA'
GO
---DELETE
EXEC spDeleteAcademicUnit 11
GO

			/* CLASSROOM */
---INSERT
EXEC spInsertClassroom 'Z1'
GO
---UPDATE
EXEC spUpdateClassroom 11, 'D1'
GO
---DELETE
EXEC spDeleteClassroom 11
GO

			/* PROGRAM */
---INSERT
EXEC spInsertProgram 'Sistemas', 10
GO
---UPDATE

EXEC spUpdateProgram 11, 'Sistemas de Info', 10
GO
---DELETE
EXEC spDeleteProgram 11
GO

			/* STUDENT */
---INSERT
EXEC spInsertStudent 'Student', 'MX', '66245855', '5552540', '@correo', '2000-03-06'
GO
---UPDATE
EXEC spUpdateStudent 16, 'Student2', 'MX', '66245855', '5552540', '@correo', '1998-04-28'
GO
---DELETE
EXEC spDeleteStudent 16
GO

			/* STUDENT PROGRAM */
---INSERT
EXEC spInsertStudentProgram 1, 1
GO
---UPDATE
EXEC spUpdateStudentProgram 11, 1,2
GO
---DELETE
EXEC spDeleteStudentProgram 11
GO

			/* STUDENT SUBJECT */
---INSERT
EXEC spInsertStudentSubject 3,1
GO
---UPDATE
EXEC spUpdateStudentSubject 11, 3, 2
GO
---DELETE
EXEC spDeleteStudentSubject 11
GO


			/* SUBJECT */
---INSERT
EXEC spInsertSubject  'Math', 1, 2, 5, 4
GO
---UPDATE
EXEC spUpdateSubject 11,'Advanced Math', 3, 3, 5, 4
GO
---DELETE
EXEC spDeleteSubject 11
GO

			/* TEACHER */
---INSERT
EXEC spInsertTeacher 'Teacher', 1, 'MX', '58255', '333333', '@correo', '1980-02-02'
GO
---UPDATE
EXEC spUpdateTeacher 11, 'Teacher 2', 1,'MX', '58255', '333333', '@correo', '1960-02-02'
GO
---DELETE
EXEC spDeleteTeacher 11
GO