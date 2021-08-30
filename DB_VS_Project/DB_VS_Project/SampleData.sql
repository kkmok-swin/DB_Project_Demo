/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

If ('$(RunPostDeployScript)' = 'true')

BEGIN

delete from student;

INSERT INTO STUDENT (StudentID, FNAME, Surname, NewColumn) VALUES
(1, 'One', 'Smith', null),
(2, 'Two', 'Jones', null),
(3, 'Three', 'Mason', null);
END
