CREATE TABLE [dbo].[Enrolment]
(
	[StudentId] INT NOT NULL, 
    [subjectCode] NVARCHAR(100) NOT NULL, 
    [Grade] NVARCHAR(2) NULL,
    PRIMARY KEY (StudentId, subjectCode),
    FOREIGN KEY(StudentID) REFERENCES Student, 
    CONSTRAINT [CK_Grades] CHECK (Grade IN ('N','P','C'))
)
