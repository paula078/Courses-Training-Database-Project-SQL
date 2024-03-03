USE u_zarska;

CREATE TABLE Users (
	UserID INT IDENTITY(1,1) PRIMARY KEY,
	FirstName NVARCHAR(20) NOT NULL,
	LastName NVARCHAR(20) NOT NULL,
	Nationality NVARCHAR(10) NOT NULL,
	Phone NVARCHAR(12) NOT NULL,
	Email NVARCHAR(30) NOT NULL,
	CHECK (LEN(FirstName) <= 20),
	CHECK (LEN(LastName) <= 20),
	CHECK (LEN(Nationality) <= 10),
	CHECK (LEN(Phone) <= 12),
	CHECK (LEN(Email) <= 30),
	CONSTRAINT Unique_Email UNIQUE (Email),
	CONSTRAINT Unique_Phone UNIQUE (Phone),
	CONSTRAINT Unique_FirstName_LastName_Phone UNIQUE (FirstName, LastName, Phone)
);

CREATE TABLE Languages (
    LanguageID INT IDENTITY(1,1) PRIMARY KEY,
    LanguageName NVARCHAR(20) NOT NULL,
	CONSTRAINT Unique_LanguageName UNIQUE (LanguageName),
  	CHECK(LEN(LanguageName)<=20)
);

CREATE TABLE Titles (
	TitleID INT IDENTITY(1,1) PRIMARY KEY,
	TitleName NVARCHAR(30) NOT NULL,
	CHECK (LEN(TitleName) <= 30),
	CONSTRAINT Unique_TitleName UNIQUE (TitleName)
);
-----------------------------------------------------------------
CREATE TABLE Lecturers(
  	LecturerID INT PRIMARY KEY,
  	TitleID INT NOT NULL,
  	LanguageID INT NOT NULL,
	FOREIGN KEY(LanguageID) REFERENCES Languages(LanguageID),
	FOREIGN KEY(TitleID) REFERENCES Titles(TitleID),
	FOREIGN KEY(LecturerID) REFERENCES Users (UserID)
);

CREATE TABLE Studies (
	StudyID INT IDENTITY(1,1) PRIMARY KEY,
	StudyName NVARCHAR(30) NOT NULL,
	CoordinatorID INT NOT NULL,
	StudentsLimit INT NOT NULL,
	EntryFee MONEY NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	CONSTRAINT Check_DateRange CHECK (StartDate <= EndDate),
	FOREIGN KEY(CoordinatorID) REFERENCES Lecturers(LecturerID),
	CHECK (StudentsLimit > 0),
	CHECK (EntryFee > 0),
	CHECK (LEN(StudyName) <= 30),
    CHECK (StartDate >= '2018-01-01' AND StartDate <= '9999-12-31'),
    CHECK (EndDate >= '2018-01-01' AND EndDate <= '9999-12-31'),
);

CREATE TABLE Apprenticeships (
    ApprenticeshipID INT IDENTITY(1,1) PRIMARY KEY,
    StudyID INT NOT NULL,
    StudentID INT NOT NULL,
    [Date] DATE NOT NULL,
    FOREIGN KEY (StudyID) REFERENCES Studies (StudyID),
    FOREIGN KEY (StudentID) REFERENCES Users (UserID),
    CHECK ([Date] >= '2018-01-01' AND [Date] <= '9999-12-31'),
    CONSTRAINT Unique_StudentID_Date UNIQUE (StudentID, Date)
);

CREATE TABLE Countries (
    CountryID INT IDENTITY(1,1) PRIMARY KEY,
    CountryName NVARCHAR(20) NOT NULL,
    CONSTRAINT Unique_CountryName UNIQUE (CountryName),
    CHECK (LEN(CountryName) <= 20)
);

CREATE TABLE Cities (
    CityID INT IDENTITY(1,1) PRIMARY KEY,
    CityName NVARCHAR(30) NOT NULL,
    CountryID INT NOT NULL,
    FOREIGN KEY(CountryID) REFERENCES dbo.Countries(CountryID),
    CHECK (LEN(CityName) <= 30),
    CONSTRAINT Unique_CityName_CountryID UNIQUE (CityName, CountryID)
);

CREATE TABLE Sessions (
	SessionID INT IDENTITY(1,1) PRIMARY KEY,
	StudyID INT NOT NULL,
	ParticipantPrice MONEY NOT NULL,
	GuestPrice MONEY NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
	FOREIGN KEY(StudyID) REFERENCES Studies(StudyID),
	CHECK (ParticipantPrice > 0),
	CHECK (GuestPrice > 0),
	CHECK (StartDate <= EndDate),
    CHECK (StartDate >= '2018-01-01' AND StartDate <= '9999-12-31'),
    CHECK (EndDate >= '2018-01-01' AND EndDate <= '9999-12-31')
);

CREATE TABLE FieldsOfStudy (
    FieldID INT IDENTITY(1,1) PRIMARY KEY,
    FieldName NVARCHAR(30) NOT NULL,
    CONSTRAINT Unique_FieldName UNIQUE (FieldName),
    CHECK (LEN(FieldName) <= 30)
);

CREATE TABLE Subjects (
	SubjectID INT IDENTITY(1,1) PRIMARY KEY,
	SubjectName NVARCHAR(50) NOT NULL,
	CoordinatorID INT NOT NULL,
	FieldOfStudyID INT NOT NULL,
	Description NVARCHAR(300) NOT NULL,
	CHECK (LEN(SubjectName) <= 50),
	CHECK (LEN(Description) <= 300),
	FOREIGN KEY(FieldOfStudyID) REFERENCES FieldsOfStudy(FieldID),
	FOREIGN KEY(CoordinatorID) REFERENCES Lecturers(LecturerID),
 	CONSTRAINT Unique_SubjectName_CoordinatorID_FieldOfStudyID UNIQUE (SubjectID, CoordinatorID, FieldOfStudyID)
);

CREATE TABLE Classes (
    ClassID INT IDENTITY(1,1) PRIMARY KEY,
    SessionID INT NOT NULL,
    SubjectID INT NOT NULL,
    CONSTRAINT Unique_ClassID_SessionID UNIQUE (ClassID, SessionID),
    FOREIGN KEY(SessionID) REFERENCES Sessions (SessionID),
    FOREIGN KEY(SubjectID) REFERENCES Subjects (SubjectID)
);

CREATE TABLE ClassesAsync (
    ClassID INT PRIMARY KEY,
    RecordingLink NVARCHAR(50) NULL DEFAULT 'Unknown',
    FOREIGN KEY(ClassID) REFERENCES Classes (ClassID),
    CHECK (LEN(RecordingLink) <= 50),
    CHECK (RecordingLink LIKE 'http%'),
    CONSTRAINT Unique_RecordingLink_ClassesAsync UNIQUE (RecordingLink)
);

CREATE TABLE ClassesAttendances (
    ClassID INT NOT NULL,
    StudentID INT NOT NULL,
    Present BIT NOT NULL,
    CONSTRAINT PK_Attendances PRIMARY KEY (ClassID, StudentID),
    FOREIGN KEY(ClassID) REFERENCES Classes (ClassID),
    FOREIGN KEY(StudentID) REFERENCES Users (UserID),
    CHECK (Present IN (0, 1))
);

CREATE TABLE Locations(
      LocationID INT IDENTITY(1,1) PRIMARY KEY,
      CityID INT NOT NULL,
      Street NVARCHAR(30) NOT NULL,
      BuildingNumber INT NOT NULL,
      ParticipantsLimit INT NOT NULL,
      RoomNumber INT NOT NULL,
      Description NVARCHAR(200) NULL,
	  FOREIGN KEY(CityID) REFERENCES Cities(CityID),
	  CONSTRAINT Unique_StreetBuildingRoom UNIQUE (Street, BuildingNumber, RoomNumber),
	  CHECK(LEN(Street)<=30),
	  CHECK(LEN(Description)<=200)
);

CREATE TABLE ClassesInPerson (
    ClassID INT NOT NULL PRIMARY KEY,
    LocationID INT NOT NULL,
    StartTime DATETIME NOT NULL,
    EndTime DATETIME NOT NULL,
    FOREIGN KEY (LocationID) REFERENCES Locations (LocationID),
    FOREIGN KEY (ClassID) REFERENCES Classes (ClassID),
    CHECK (StartTime < EndTime),
    CONSTRAINT Unique_Location_StartTime UNIQUE (LocationID, StartTime),
    CONSTRAINT Check_NoTimeOverlap CHECK (dbo.CheckTimeOverlapClasses(LocationID, StartTime, EndTime, ClassID) = 0)
);

CREATE TABLE ClassesSync (
    ClassID INT NOT NULL PRIMARY KEY,
    StartTime DATETIME NOT NULL,
    EndTime DATETIME NOT NULL,
    MeetingLink NVARCHAR(50) NOT NULL,
    RecordingLink NVARCHAR(50) NULL DEFAULT 'Unknown',
    FOREIGN KEY (ClassID) REFERENCES Classes (ClassID),
    CHECK (StartTime < EndTime),
    CHECK (LEN(MeetingLink) <= 50),
    CHECK (MeetingLink LIKE 'http%'),
    CHECK (LEN(RecordingLink) <= 50),
    CHECK (RecordingLink LIKE 'http%'),
    CONSTRAINT Unique_MeetingLink UNIQUE (MeetingLink),
    CONSTRAINT Unique_RecordingLink_ClassesSync UNIQUE (RecordingLink)
);

CREATE TABLE Courses (
    CourseID INT IDENTITY(1,1) PRIMARY KEY,
    CourseName NVARCHAR(50) NOT NULL,
    ParticipantsLimit INT NOT NULL,
    Advance MONEY NOT NULL,
    Price MONEY NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    CONSTRAINT Unique_CourseName UNIQUE (CourseName),
    CHECK (ParticipantsLimit > 0),
    CHECK (Advance >= 0),
    CHECK (Price >= 0),
    CHECK (LEN(CourseName) <= 50),
    CHECK (StartDate >= '2018-01-01' AND StartDate <= '9999-12-31'),
    CHECK (EndDate >= '2018-01-01' AND EndDate <= '9999-12-31'),
    CONSTRAINT Check_DateRange_Courses CHECK (StartDate <= EndDate)
);

CREATE TABLE CourseParticipants (
    EnrollID INT IDENTITY(1,1) PRIMARY KEY,
    ParticipantID INT NOT NULL,
    CourseID INT NOT NULL,
    [Date] DATE NOT NULL,
    CONSTRAINT Unique_ParticipantCourse UNIQUE (ParticipantID, CourseID),
    CHECK ([Date] >= '2018-01-01' AND [Date] <= '9999-12-31'),
    FOREIGN KEY (CourseID) REFERENCES Courses (CourseID),
    FOREIGN KEY (ParticipantID) REFERENCES Users (UserID)
);

CREATE TABLE CoursePayments (
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,
    CourseID INT NOT NULL,
    StudentID INT NOT NULL,
    DueDate DATE NULL,
    Paid BIT NULL DEFAULT 0,
    CONSTRAINT Unique_CourseStudent UNIQUE (CourseID, StudentID),
    CHECK (Paid IN (0, 1)),
    CHECK (DueDate >= '2018-01-01' AND DueDate <= '9999-12-31'),
    CONSTRAINT FK_CoursePayments_Courses FOREIGN KEY(CourseID) REFERENCES Courses(CourseID),
    CONSTRAINT FK_CoursePayments_Users FOREIGN KEY(StudentID) REFERENCES Users(UserID),
	CONSTRAINT Unique_Course_Student UNIQUE (CourseID, StudentID)
);

CREATE TABLE Translators (
	TranslatorID INT PRIMARY KEY,
	FieldOfStudyID INT NOT NULL,
	FOREIGN KEY(TranslatorID) REFERENCES Users(UserID),
	FOREIGN KEY(FieldOfStudyID) REFERENCES FieldsOfStudy(FieldID)
);

CREATE TABLE KnownLanguages (
    TranslatorID INT NOT NULL,
    LanguageID INT NOT NULL,
	CONSTRAINT PK_KnownLanguages PRIMARY KEY (TranslatorID, LanguageID),
	FOREIGN KEY(LanguageID) REFERENCES Languages(LanguageID),
    FOREIGN KEY(TranslatorID) REFERENCES Translators(TranslatorID)
);

CREATE TABLE Logins(
      UserID INT NOT NULL PRIMARY KEY,
      UserName NVARCHAR(20) NOT NULL,
      Password NVARCHAR(20) NOT NULL,
	  CHECK (LEN(UserName) <= 20),
	  CHECK (LEN(Password) <= 20),
	  CONSTRAINT Unique_UserName UNIQUE (UserName),
      FOREIGN KEY(UserID) REFERENCES Users (UserID)
);

CREATE TABLE Modules(
	ModuleID INT IDENTITY(1,1) PRIMARY KEY,
	CourseID INT NOT NULL,
	LecturerID INT NOT NULL,
	FOREIGN KEY(CourseID) REFERENCES Courses (CourseID),
	FOREIGN KEY(LecturerID) REFERENCES Lecturers (LecturerID)
);

CREATE TABLE ModulesAttendances(
      ModuleID INT NOT NULL,
      StudentID INT NOT NULL,
      Present BIT NOT NULL,
	  CONSTRAINT PK_ModuleAttendances PRIMARY KEY (ModuleID, StudentID),
	  FOREIGN KEY(ModuleID) REFERENCES Modules (ModuleID),
	  FOREIGN KEY(StudentID) REFERENCES Users (UserID),
	  CHECK (Present IN (0, 1))
);

CREATE TABLE ModulesAsync(
 	ModuleID INT NOT NULL PRIMARY KEY,
    RecordingLink NVARCHAR(50) NULL DEFAULT 'Unknown',
    FOREIGN KEY(ModuleID) REFERENCES Modules (ModuleID),
    CONSTRAINT Unique_RecordingLink UNIQUE (RecordingLink),
    CHECK (LEN(RecordingLink) <= 50),
    CHECK (RecordingLink LIKE 'http%')
);

CREATE TABLE ModulesInPerson(
      ModuleID INT NOT NULL PRIMARY KEY,
      LocationID INT NOT NULL,
      StartTime DATETIME NOT NULL,
      EndTime DATETIME NOT NULL,
      FOREIGN KEY(LocationID) REFERENCES Locations (LocationID),
      FOREIGN KEY(ModuleID) REFERENCES Modules (ModuleID),
      CONSTRAINT Unique_Location_StartTime_ModulesInPerson UNIQUE (LocationID, StartTime),
      CONSTRAINT Check_NoTimeOverlapModules CHECK (dbo.CheckTimeOverlapModules(LocationID, StartTime, EndTime, ModuleID) = 0),
      CHECK (StartTime <= EndTime)
);

CREATE TABLE ModulesSync(
      ModuleID INT NOT NULL PRIMARY KEY,
      StartTime DATETIME NOT NULL,
      EndTime DATETIME NOT NULL,
      MeetingLink NVARCHAR(50) NOT NULL,
      RecordingLink NVARCHAR(50) NULL DEFAULT 'Unknown',
      CHECK (LEN(MeetingLink) <= 50),
      CHECK (MeetingLink LIKE 'http%'),
      CHECK (LEN(RecordingLink) <= 50),
      CHECK (RecordingLink LIKE 'http%'),
      CONSTRAINT Unique_RecordingLink_ModulesSync UNIQUE (RecordingLink),
      CONSTRAINT Unique_MeetingLink_ModulesSync UNIQUE (MeetingLink),
	  FOREIGN KEY(ModuleID) REFERENCES Modules (ModuleID),
	  CHECK (StartTime <= EndTime)
);

CREATE TABLE Orders (
OrderID INT IDENTITY(1,1) PRIMARY KEY,
UserID INT NOT NULL,
OrderDate DATETIME NOT NULL,
FOREIGN KEY(UserID) REFERENCES Logins(UserID),
CHECK (OrderDate >= '2018-01-01' AND OrderDate <= '9999-12-31')
);

CREATE TABLE ProductType (
	TypeID INT IDENTITY(1,1) PRIMARY KEY,
 	ProductName NVARCHAR(20) NOT NULL,
	CHECK (LEN(ProductName) <= 20),
	CONSTRAINT Unique_ProductName UNIQUE (ProductName)
);

CREATE TABLE OrderDetails(
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    ProductTypeID INT NOT NULL,
    CONSTRAINT PK_OrderDetails PRIMARY KEY (OrderID, ProductID, ProductTypeID),
    FOREIGN KEY(OrderID) REFERENCES Orders (OrderID),
    FOREIGN KEY(ProductTypeID) REFERENCES ProductType (TypeID),
    CONSTRAINT FK_ProductType CHECK (ProductTypeID IN (1, 2, 3, 4)), 
    CONSTRAINT CHK_ProductID_Courses_Studies_Webinars_Sessions CHECK (dbo.ValidateProductIDForOrders(ProductTypeID, ProductID) = 1)
);

CREATE TABLE PaymentExceptions (
ExceptionID INT IDENTITY(1,1) PRIMARY KEY,
FormID INT NOT NULL,
PaymentID INT NOT NULL,
DueDate DATE NOT NULL,
FOREIGN KEY(FormID) REFERENCES ProductType(TypeID),
CHECK (DueDate >= '2018-01-01' AND DueDate <= '9999-12-31'),
CONSTRAINT FK_FormType CHECK (FormID IN (1, 2, 3)),
      	CONSTRAINT CHK_ProductID_Courses_Studies_Webinars CHECK (
        dbo.ValidateProductIDforPayment(FormID, PaymentID) = 1));


CREATE TABLE Roles (
	RoleID INT IDENTITY(1,1) PRIMARY KEY,
	RoleName NVARCHAR(30) NOT NULL,
	CHECK (LEN(RoleName) <= 30),
	CONSTRAINT Unique_RoleName UNIQUE (RoleName)
);

CREATE TABLE RolesHistory (
	UserID INT NOT NULL,
	RoleID INT NOT NULL,
	StartDate DATE NOT NULL,
	EndDate Date NULL,
	CONSTRAINT PK_RolesHistory PRIMARY KEY (UserID, RoleID, StartDate),
	CONSTRAINT Check_DateRange_RolesHistory CHECK (StartDate <= EndDate),
	FOREIGN KEY(RoleID) REFERENCES Roles(RoleID),
	FOREIGN KEY(UserID) REFERENCES Users(UserID),
	CHECK (StartDate >= '2018-01-01' AND StartDate <= '9999-12-31'),
	CHECK (EndDate >= '2018-01-01' AND EndDate <= '9999-12-31'),
);

CREATE TABLE StudentsAddresses (
	StudentID INT NOT NULL PRIMARY KEY,
	CityID INT NOT NULL,
	Street NVARCHAR(50) NOT NULL,
	BuildingNumber INT NOT NULL,
	FlatNumber INT NULL,
	PostalCode NVARCHAR(10) NOT NULL,
	FOREIGN KEY(CityID) REFERENCES Cities (CityID),
	FOREIGN KEY(StudentID) REFERENCES Users(UserID),
    CONSTRAINT Unique_StreetBuildingFlat UNIQUE (Street, BuildingNumber, FlatNumber),
	CHECK (LEN(Street) <= 50),
	CHECK (LEN(PostalCode) <= 10)
);

CREATE TABLE SessionPayments (
	PaymentID INT IDENTITY(1,1) PRIMARY KEY,
 	SessionID INT NOT NULL,
	StudentID INT NOT NULL,
	DueDate DATE NOT NULL,
	Paid BIT NULL,
	CHECK (Paid IN (0, 1)),
   	CHECK (DueDate >= '2018-01-01' AND DueDate <= '9999-12-31'),
	FOREIGN KEY(SessionID) REFERENCES Sessions(SessionID),
	FOREIGN KEY(StudentID) REFERENCES Users(UserID), 
    CONSTRAINT Unique_Session_Student UNIQUE (SessionID, StudentID)
);


CREATE TABLE Syllabuses (
	SyllabusID INT IDENTITY(1,1) PRIMARY KEY,
	StudyID INT NOT NULL,
	SubjectID INT NOT NULL,
	LecturerID INT NOT NULL,
	FOREIGN KEY(StudyID) REFERENCES Studies(StudyID),
	FOREIGN KEY(LecturerID) REFERENCES Lecturers(LecturerID),
	FOREIGN KEY(SubjectID) REFERENCES Subjects(SubjectID)
);

CREATE TABLE TranslatedModules (
    ModuleID INT NOT NULL PRIMARY KEY,
    TranslatorID INT NOT NULL,
    FOREIGN KEY(ModuleID) REFERENCES Modules(ModuleID),
    FOREIGN KEY(TranslatorID) REFERENCES Translators(TranslatorID)
);

CREATE TABLE Webinars (
	WebinarID INT IDENTITY(1,1) PRIMARY KEY,
	WebinarName NVARCHAR(60) NOT NULL,
	RecordingLink NVARCHAR(50) NOT NULL,
	[Date] DATE NOT NULL,
	Price MONEY NULL DEFAULT 0,
	DurationInMinutes INT NOT NULL,
	CHECK (LEN(WebinarName) <= 60),
 	CHECK (LEN(RecordingLink) <= 50),
    CHECK (RecordingLink LIKE 'http%'),
	CHECK (DurationInMinutes > 0),
    CHECK ([Date] >= '2018-01-01' AND [Date] <= '9999-12-31'),
	CONSTRAINT Unique_RecordingLink_Webinars UNIQUE (RecordingLink)
); 

CREATE TABLE TranslatedWebinars (
	WebinarID INT NOT NULL PRIMARY KEY,
	TranslatorID INT NOT NULL,
	FOREIGN KEY(WebinarID) REFERENCES Webinars(WebinarID),
	FOREIGN KEY(TranslatorID) REFERENCES Translators(TranslatorID)
);

CREATE TABLE WebinarPayments (
	PaymentID INT IDENTITY(1,1) PRIMARY KEY,
	WebinarID INT NOT NULL,
	ParticipantID INT NOT NULL,
	DueDate DATE NOT NULL,
	IsLinkActive BIT NOT NULL,
	Paid BIT NULL,
	CHECK (Paid IN (0, 1)),
            CHECK (DueDate >= '2018-01-01' AND DueDate <= '9999-12-31'),
	FOREIGN KEY(WebinarID) REFERENCES Webinars(WebinarID),
	FOREIGN KEY(ParticipantID) REFERENCES Users(UserID),
	CONSTRAINT Unique_Webinar_Participant UNIQUE (WebinarID, ParticipantID)
);

CREATE TABLE Diplomas (
	DiplomID INT IDENTITY(1,1) PRIMARY KEY,
	ProductID INT,
	TypeID INT,
	StudentID INT,
	SendingDate DATE,
	FOREIGN KEY(StudentID) REFERENCES Users(UserID),
	FOREIGN KEY(TypeID) REFERENCES ProductType(TypeID),
	CONSTRAINT Unique_Study_Student UNIQUE (ProductID, TypeID, StudentID),
	CHECK (SendingDate >= '2018-01-01' AND SendingDate <= '9999-12-31'),
	CONSTRAINT CHK_ProductID_Courses_Studiess CHECK (dbo.ValidateProductIDForDiplomas(TypeID, ProductID) = 1)
);


INSERT INTO Diplomas (ProductID, TypeID, StudentID, SendingDate)
VALUES
(21, 2, 11, '2024-01-01');








