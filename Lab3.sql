USE master
GO
CREATE DATABASE Lab3

CREATE TABLE dbo.Event(
	EventID int IDENTITY(1,1) NOT NULL,
	Date date NULL,
	Time time(7) NULL,
	RoomNbr int NULL,
	EventName nchar(20) NULL,
 CONSTRAINT PK_Event PRIMARY KEY  
(
	EventID ASC
)
) 
GO

CREATE TABLE dbo.EventAttendanceList(
	TeacherID int NULL,
	EventID int NULL
) 
GO

CREATE TABLE dbo.EventPersonnel(
	VolunteerID int IDENTITY(1,1) NOT NULL,
	FirstName nchar(20) NULL,
	LastName nchar(20) NULL,
	Notes nchar(50) NULL,
	TshirtID int NULL,
	PersonnelType nchar(20) NULL,
	Email nchar(20) NULL,
 CONSTRAINT PK_Volunteer PRIMARY KEY  
(
	VolunteerID ASC
)
) 
GO

CREATE TABLE dbo.EventPresenters(
	PersonnelID int NULL,
	EventID int NULL,
	Role nchar(20) NULL
) 
GO

CREATE TABLE dbo.School(
	SchoolID int IDENTITY(1,1) NOT NULL,
	SchoolName nchar(20) NULL,
 CONSTRAINT PK_School PRIMARY KEY CLUSTERED 
(
	SchoolID ASC
)
)
GO

CREATE TABLE dbo.Student(
	StudentID int IDENTITY(1,1) NOT NULL,
	FirstName nchar(20) NULL,
	LastName nchar(20) NULL,
	Age int NULL,
	Notes nvarchar(50) NULL,
	TshirtID int NULL,
	SchoolID int NOT NULL,
	TeacherID int NOT NULL,
 CONSTRAINT PK_Student PRIMARY KEY CLUSTERED 
(
	StudentID ASC
)
)
GO

CREATE TABLE dbo.Teacher(
	TeacherID int IDENTITY(1,1) NOT NULL,
	SchoolID int NULL,
	FirstName nchar(20) NULL,
	LastName nchar(20) NULL,
	Notes nchar(50) NULL,
	TshirtID int NOT NULL,
	Email nchar(20) NULL,
	Grade int NULL,
 CONSTRAINT PK_Teacher PRIMARY KEY CLUSTERED 
(
	TeacherID ASC
)
)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Tshirt(
	TshirtID int IDENTITY(1,1) NOT NULL,
	Size nchar(20) NULL,
	Color nchar(20) NULL,
 CONSTRAINT PK_Tshirt PRIMARY KEY CLUSTERED 
(
	TshirtID ASC
)
) 
GO
CREATE TABLE dbo.UserInfo(
	Email nchar(20) NULL,
	Password nchar(20) NULL,
	Role nchar(20) NULL
)
GO
SET IDENTITY_INSERT dbo.Event ON 

INSERT dbo.Event (EventID, Date, Time, RoomNbr, EventName) VALUES (1, CAST(N'2020-09-07' AS Date), CAST(N'09:00:00' AS Time), 231, N'Movie               ')
INSERT dbo.Event (EventID, Date, Time, RoomNbr, EventName) VALUES (2, CAST(N'2020-09-07' AS Date), CAST(N'10:00:00' AS Time), 242, N'Moonbounce          ')
INSERT dbo.Event (EventID, Date, Time, RoomNbr, EventName) VALUES (3, CAST(N'2020-09-07' AS Date), CAST(N'11:00:00' AS Time), 100, N'Ping Pong           ')
INSERT dbo.Event (EventID, Date, Time, RoomNbr, EventName) VALUES (4, CAST(N'2020-09-07' AS Date), CAST(N'12:00:00' AS Time), 101, N'Lunch               ')
INSERT dbo.Event (EventID, Date, Time, RoomNbr, EventName) VALUES (5, CAST(N'2020-09-07' AS Date), CAST(N'13:00:00' AS Time), 212, N'Tree Climbing       ')
INSERT dbo.Event (EventID, Date, Time, RoomNbr, EventName) VALUES (6, CAST(N'2020-09-07' AS Date), CAST(N'14:00:00' AS Time), 333, N'Dentist Visit       ')
INSERT dbo.Event (EventID, Date, Time, RoomNbr, EventName) VALUES (7, CAST(N'2020-09-07' AS Date), CAST(N'15:00:00' AS Time), 423, N'Rug Cleaning        ')
INSERT dbo.Event (EventID, Date, Time, RoomNbr, EventName) VALUES (8, CAST(N'2020-09-07' AS Date), CAST(N'16:00:00' AS Time), 246, N'Scavenger Hunt      ')
SET IDENTITY_INSERT dbo.Event OFF
GO
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (1, 4)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (2, 2)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (2, 6)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (3, 5)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (5, 7)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (6, 6)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (8, 5)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (9, 4)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (11, 3)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (12, 1)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (13, 2)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (14, 3)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (6, 7)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (1, 3)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (3, 7)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (12, 5)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (5, 4)
INSERT dbo.EventAttendanceList (TeacherID, EventID) VALUES (4, 5)
GO
SET IDENTITY_INSERT dbo.EventPersonnel ON 

INSERT dbo.EventPersonnel (VolunteerID, FirstName, LastName, Notes, TshirtID, PersonnelType, Email) VALUES (1, N'Fred                ', N'Singer              ', NULL, 5, N'Volunteer           ', N'fsin@me.com         ')
INSERT dbo.EventPersonnel (VolunteerID, FirstName, LastName, Notes, TshirtID, PersonnelType, Email) VALUES (2, N'Erik                ', N'Kloster             ', NULL, 4, N'Coordinator         ', N'eklo@me.com         ')
INSERT dbo.EventPersonnel (VolunteerID, FirstName, LastName, Notes, TshirtID, PersonnelType, Email) VALUES (3, N'Eric                ', N'Simpson             ', NULL, 2, N'Volunteer           ', N'esim@me.com         ')
INSERT dbo.EventPersonnel (VolunteerID, FirstName, LastName, Notes, TshirtID, PersonnelType, Email) VALUES (4, N'Ivica               ', N'Ducic               ', NULL, 6, N'Coordinator         ', N'iduc@me.com         ')
INSERT dbo.EventPersonnel (VolunteerID, FirstName, LastName, Notes, TshirtID, PersonnelType, Email) VALUES (5, N'Heather             ', N'Mann                ', NULL, 1, N'Volunteer           ', N'hman@me.com         ')
INSERT dbo.EventPersonnel (VolunteerID, FirstName, LastName, Notes, TshirtID, PersonnelType, Email) VALUES (6, N'Gabriela            ', N'Gresenz             ', NULL, 3, N'Coordinator         ', N'ggre@me.com         ')
INSERT dbo.EventPersonnel (VolunteerID, FirstName, LastName, Notes, TshirtID, PersonnelType, Email) VALUES (7, N'Julian              ', N'Malouf              ', NULL, 5, N'Volunteer           ', N'jmal@me.com         ')
INSERT dbo.EventPersonnel (VolunteerID, FirstName, LastName, Notes, TshirtID, PersonnelType, Email) VALUES (8, N'Christian           ', N'Malouf              ', NULL, 3, N'Volunteer           ', N'cmal@me.com         ')
INSERT dbo.EventPersonnel (VolunteerID, FirstName, LastName, Notes, TshirtID, PersonnelType, Email) VALUES (9, N'Charlie             ', N'Bachman             ', NULL, 2, N'Volunteer           ', N'cbac@me.com         ')
INSERT dbo.EventPersonnel (VolunteerID, FirstName, LastName, Notes, TshirtID, PersonnelType, Email) VALUES (10, N'Cindy               ', N'Browning            ', NULL, 5, N'Volunteer           ', N'cbro@me.com         ')
INSERT dbo.EventPersonnel (VolunteerID, FirstName, LastName, Notes, TshirtID, PersonnelType, Email) VALUES (11, N'Pete                ', N'Wehner              ', NULL, 4, N'Volunteer           ', N'pweh@me.com         ')
SET IDENTITY_INSERT dbo.EventPersonnel OFF
GO
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (2, 1, N'Coordinator         ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (2, 2, N'Coordinator         ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (6, 6, N'Coordinator         ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (4, 4, N'Coordinator         ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (6, 8, N'Coordinator         ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (4, 7, N'Coordinator         ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (1, 1, N'Volunteer           ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (3, 2, N'Volunteer           ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (5, 2, N'Volunteer           ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (7, 4, N'Volunteer           ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (8, 5, N'Volunteer           ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (9, 6, N'Volunteer           ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (10, 7, N'Volunteer           ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (11, 8, N'Volunteer           ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (3, 4, N'Volunteer           ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (9, 4, N'Volunteer           ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (5, 3, N'Volunteer           ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (7, 5, N'Volunteer           ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (6, 7, N'Coordinator         ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (4, 3, N'Coordinator         ')
INSERT dbo.EventPresenters (PersonnelID, EventID, Role) VALUES (4, 5, N'Coordinator         ')
GO
SET IDENTITY_INSERT dbo.School ON 

INSERT dbo.School (SchoolID, SchoolName) VALUES (1, N'Potomac             ')
INSERT dbo.School (SchoolID, SchoolName) VALUES (2, N'Flint Hill          ')
INSERT dbo.School (SchoolID, SchoolName) VALUES (3, N'St. Albans          ')
INSERT dbo.School (SchoolID, SchoolName) VALUES (4, N'Langley             ')
INSERT dbo.School (SchoolID, SchoolName) VALUES (5, N'Gonzaga             ')
INSERT dbo.School (SchoolID, SchoolName) VALUES (6, N'National Cathedral  ')
SET IDENTITY_INSERT dbo.School OFF
GO
SET IDENTITY_INSERT dbo.Student ON 

INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (1, N'Daniel              ', N'Ducic               ', 9, N'Investment Banker', 2, 2, 2)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (2, N'Hugh                ', N'Collins             ', 10, N'Big Head', 1, 3, 1)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (3, N'John                ', N'Wehner              ', 10, N'Smart Cookie!', 2, 3, 1)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (4, N'Dana                ', N'Bachman             ', 8, N'Brick House', 7, 2, 2)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (5, N'Al                  ', N'Pachino             ', 7, N'Mean', 3, 5, 5)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (6, N'Joaquin             ', N'Phoenix             ', 6, N'Weirdo', 4, 3, 1)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (7, N'Matthew             ', N'McConaughey         ', 9, N'Jawline', 6, 6, 14)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (8, N'Robin               ', N'Wright              ', 11, N'God only knows', 8, 6, 13)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (9, N'Jeff                ', N'Bridges             ', 7, N'Lazy', 9, 5, 12)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (11, N'John                ', N'Goodman             ', 10, N'Insensitive', 3, 5, 11)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (12, N'Ray                 ', N'Liotta              ', 10, N'Mobster', 5, 4, 9)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (13, N'Jack                ', N'Nicholson           ', 9, N'Crazy', 7, 4, 8)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (14, N'George              ', N'Clooney             ', 8, N'Handsome', 8, 3, 6)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (15, N'John                ', N'Malkovich           ', 7, N'Who?', 5, 1, 4)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (16, N'Sean                ', N'Penn                ', 10, N'Irrelevant', 6, 1, 3)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (17, N'Klaus               ', N'Kinski              ', 9, N'German', 7, 2, 2)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (18, N'Percival            ', N'Lueilwitz           ', 9, N'Fugit fugiat in occaecati est odio quo.', 8, 3, 1)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (20, N'Garland             ', N'Simonis             ', 7, N'Incidunt omnis error quasi acc', 8, 5, 11)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (21, N'Shany               ', N'Raynor              ', 10, N'Aspernatur maxime ea laborum o', 8, 4, 8)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (22, N'Talia               ', N'Strosin             ', 10, N'Rerum qui odit aut voluptatem ', 6, 5, 11)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (23, N'Maida               ', N'Larson              ', 9, N'Eos nihil quo alias quibusdam ', 7, 2, 2)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (24, N'Xzavier             ', N'Corkery             ', 7, N'Tempora deserunt mollitia beat', 6, 2, 2)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (25, N'Russ                ', N'Weissnat            ', 10, N'Architecto officia quaerat err', 6, 3, 6)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (26, N'Mafalda             ', N'Padberg             ', 10, N'Earum soluta libero atque cons', 2, 3, 1)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (27, N'Sammie              ', N'Schroeder           ', 7, N'Voluptas exercitationem facili', 6, 3, 6)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (28, N'Ettie               ', N'Crooks              ', 7, N'Tempore voluptatem u', 6, 1, 3)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (29, N'Verla               ', N'Bergstrom           ', 8, N'Voluptatem consequun', 6, 1, 3)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (30, N'Omari               ', N'Lindgren            ', 10, N'Est fugit modi minus', 8, 1, 3)
INSERT dbo.Student (StudentID, FirstName, LastName, Age, Notes, TshirtID, SchoolID, TeacherID) VALUES (31, N'Nicklaus            ', N'Moore               ', 9, N'Eos dignissimos accu', 6, 4, 8)
SET IDENTITY_INSERT dbo.Student OFF
GO
SET IDENTITY_INSERT dbo.Teacher ON 

INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (1, 3, N'Paul T              ', N'Anderson            ', N'Insured for inherent vice                         ', 2, N'pta@edu.com         ', NULL)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (2, 2, N'Werner              ', N'Herzog              ', N'Looks like a Grizzly Man                          ', 1, N'wher@edu.com        ', NULL)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (3, 1, N'Terrence            ', N'Malick              ', N'Hates Red Lines                                   ', 4, N'tmal@edu.com        ', NULL)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (4, 1, N'Charlie             ', N'Kaufman             ', N'Loves John Malkovich                              ', 5, N'ckau@edu.com        ', NULL)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (5, 2, N'Francis F           ', N'Coppola             ', N'Big on Family                                     ', 8, N'fcop@edu.com        ', NULL)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (6, 3, N'Wes                 ', N'Anderson            ', N'Foxy                                              ', 7, N'wand@edu.com        ', NULL)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (8, 4, N'Stanley             ', N'Kubrick             ', N'A dull boy                                        ', 6, N'skub@edu.com        ', NULL)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (9, 4, N'Martin              ', N'Scorsese            ', N'Don''t look at him wrong                           ', 3, N'msco@edu.com        ', NULL)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (11, 5, N'Ethan               ', N'Coen                ', N'Better than Joel                                  ', 3, N'ecoe@edu.com        ', NULL)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (12, 5, N'Joel                ', N'Coen                ', N'Jealous of Ethan                                  ', 4, N'jcoe@edu.com        ', NULL)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (13, 6, N'Rob                 ', N'Reiner              ', N'Will do as you wish                               ', 7, N'rrei@edu.com        ', NULL)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (14, 6, N'Richard             ', N'Linklater           ', N'Likes High School Girls                           ', 3, N'rlin@edu.com        ', NULL)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (19, 3, N'Shania              ', N'Renner              ', N'Et sapiente sunt aut eos incidunt.                ', 2, N'daisha@edu.com      ', NULL)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (24, 2, N'Cortez              ', N'Graham              ', N'Sint voluptatem voluptatem architecto aperiam.    ', 2, N'CortezG@edu.com     ', 6)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (25, 5, N'Wiley               ', N'Kuhn                ', N'Quaerat et id ut quisquam quis est autem.         ', 8, N'WileyK@edu.com      ', 6)
INSERT dbo.Teacher (TeacherID, SchoolID, FirstName, LastName, Notes, TshirtID, Email, Grade) VALUES (26, 2, N'Ora                 ', N'Barton              ', N'Dolorum magni omnis non.                          ', 7, N'OraB@edu.com        ', 6)
SET IDENTITY_INSERT dbo.Teacher OFF
GO
SET IDENTITY_INSERT dbo.Tshirt ON 

INSERT dbo.Tshirt (TshirtID, Size, Color) VALUES (1, N'Large               ', N'Blue                ')
INSERT dbo.Tshirt (TshirtID, Size, Color) VALUES (2, N'Small               ', N'Green               ')
INSERT dbo.Tshirt (TshirtID, Size, Color) VALUES (3, N'Medium              ', N'Red                 ')
INSERT dbo.Tshirt (TshirtID, Size, Color) VALUES (4, N'Large               ', N'Green               ')
INSERT dbo.Tshirt (TshirtID, Size, Color) VALUES (5, N'Large               ', N'Red                 ')
INSERT dbo.Tshirt (TshirtID, Size, Color) VALUES (6, N'Medium              ', N'Green               ')
INSERT dbo.Tshirt (TshirtID, Size, Color) VALUES (7, N'Medium              ', N'Blue                ')
INSERT dbo.Tshirt (TshirtID, Size, Color) VALUES (8, N'Small               ', N'Blue                ')
INSERT dbo.Tshirt (TshirtID, Size, Color) VALUES (9, N'Small               ', N'Red                 ')
SET IDENTITY_INSERT dbo.Tshirt OFF
GO
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'cbro@me.com         ', N'1111                ', N'Volunteer           ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'ckau@edu.com        ', N'1111                ', N'Teacher             ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'cmal@me.com         ', N'1111                ', N'Volunteer           ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'daisha@edu.com      ', N'1111                ', N'Teacher             ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'ecoe@edu.com        ', N'1111                ', N'Teacher             ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'eklo@me.com         ', N'1111                ', N'Coordinator         ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'esim@me.com         ', N'1111                ', N'Volunteer           ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'fcop@edu.com        ', N'1111                ', N'Teacher             ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'fsin@me.com         ', N'1111                ', N'Volunteer           ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'ggre@me.com         ', N'1111                ', N'Coordinator         ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'hman@me.com         ', N'1111                ', N'Volunteer           ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'iduc@me.com         ', N'1111                ', N'Coordinator         ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'jcoe@edu.com        ', N'1111                ', N'Teacher             ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'jmal@me.com         ', N'1111                ', N'Volunteer           ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'msco@edu.com        ', N'1111                ', N'Teacher             ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'pta@edu.com         ', N'1111                ', N'Teacher             ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'rlin@edu.com        ', N'1111                ', N'Teacher             ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'rrei@edu.com        ', N'1111                ', N'Teacher             ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'skub@edu.com        ', N'1111                ', N'Teacher             ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'tmal@edu.com        ', N'1111                ', N'Teacher             ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'wand@edu.com        ', N'1111                ', N'Teacher             ')
INSERT dbo.UserInfo (Email, Password, Role) VALUES (N'wher@edu.com        ', N'1111                ', N'Teacher             ')
GO
ALTER TABLE dbo.EventAttendanceList  WITH CHECK ADD  CONSTRAINT FK_EventTeacherList_Event FOREIGN KEY(EventID)
REFERENCES dbo.Event (EventID)
GO
ALTER TABLE dbo.EventAttendanceList CHECK CONSTRAINT FK_EventTeacherList_Event
GO
ALTER TABLE dbo.EventAttendanceList  WITH CHECK ADD  CONSTRAINT FK_EventTeacherList_Teacher FOREIGN KEY(TeacherID)
REFERENCES dbo.Teacher (TeacherID)
GO
ALTER TABLE dbo.EventAttendanceList CHECK CONSTRAINT FK_EventTeacherList_Teacher
GO
ALTER TABLE dbo.EventPersonnel  WITH CHECK ADD  CONSTRAINT FK_Volunteer_Tshirt FOREIGN KEY(TshirtID)
REFERENCES dbo.Tshirt (TshirtID)
GO
ALTER TABLE dbo.EventPersonnel CHECK CONSTRAINT FK_Volunteer_Tshirt
GO
ALTER TABLE dbo.EventPresenters  WITH CHECK ADD  CONSTRAINT FK_VolunteerEventList_Event FOREIGN KEY(EventID)
REFERENCES dbo.Event (EventID)
GO
ALTER TABLE dbo.EventPresenters CHECK CONSTRAINT FK_VolunteerEventList_Event
GO
ALTER TABLE dbo.EventPresenters  WITH CHECK ADD  CONSTRAINT FK_VolunteerEventList_Volunteer FOREIGN KEY(PersonnelID)
REFERENCES dbo.EventPersonnel (VolunteerID)
GO
ALTER TABLE dbo.EventPresenters CHECK CONSTRAINT FK_VolunteerEventList_Volunteer
GO
ALTER TABLE dbo.Student  WITH CHECK ADD  CONSTRAINT FK_Student_School FOREIGN KEY(SchoolID)
REFERENCES dbo.School (SchoolID)
GO
ALTER TABLE dbo.Student CHECK CONSTRAINT FK_Student_School
GO
ALTER TABLE dbo.Student  WITH CHECK ADD  CONSTRAINT FK_Student_Tshirt FOREIGN KEY(TshirtID)
REFERENCES dbo.Tshirt (TshirtID)
GO
ALTER TABLE dbo.Student CHECK CONSTRAINT FK_Student_Tshirt
GO
ALTER TABLE dbo.Teacher  WITH CHECK ADD  CONSTRAINT FK_Teacher_School FOREIGN KEY(SchoolID)
REFERENCES dbo.School (SchoolID)
GO
ALTER TABLE dbo.Teacher CHECK CONSTRAINT FK_Teacher_School
GO
ALTER TABLE dbo.Teacher  WITH CHECK ADD  CONSTRAINT FK_Teacher_Tshirt FOREIGN KEY(TshirtID)
REFERENCES dbo.Tshirt (TshirtID)
GO
ALTER TABLE dbo.Teacher CHECK CONSTRAINT FK_Teacher_Tshirt
GO
USE master
GO
ALTER DATABASE Lab3 SET  READ_WRITE 
GO
