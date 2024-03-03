INSERT INTO Titles(TitleName)
VALUES
('Doctor'),
('Master'),
('Full Professor'),
('Associate Professor'),
('Habilitation Doctor');

INSERT INTO Users (FirstName, LastName, Nationality, Phone, Email)
VALUES
('Jan', 'Kowalski', 'PL', '48123456789', 'jan.kowalski@example.com'),
('Anna', 'Nowak', 'PL', '48234567890', 'anna.nowak@example.com'),
('Piotr', 'Dąbrowski', 'PL', '48345678901', 'piotr.dabrowski@example.com'),
('Agnieszka', 'Wójcik', 'PL', '48456789012', 'agnieszka.wojcik@example.com'),
('Krzysztof', 'Kowalczyk', 'PL', '48567890123', 'krzysztofkowalczyk@example.com'),
('Maria', 'Lewandowska', 'PL', '48678901234', 'maria.lewandowska@example.com'),
('Adam', 'Wiśniewski', 'PL', '48789012345', 'adam.wisniewski@example.com'),
('Karolina', 'Kamińska', 'PL', '48890123456', 'karolina.kaminska@example.com'),
('Mateusz', 'Kowal', 'PL', '48901234567', 'mateusz.kowal@example.com'),
('Zuzanna', 'Zając', 'PL', '48112345678', 'zuzanna.zajac@example.com'),
('Michał', 'Król', 'PL', '48223456789', 'michal.krol@example.com'),
('Natalia', 'Jankowska', 'PL', '48334567890', 'natalia.jankowska@example.com'),
('Jakub', 'Mazur', 'PL', '48445678901', 'jakub.mazur@example.com'),
('Weronika', 'Witkowska', 'PL', '48556789012', 'weronika.witkowska@example.com'),
('Kacper', 'Kaczmarek', 'PL', '48667890123', 'kacper.kaczmarek@example.com'),
('Aleksandra', 'Piotrowska', 'PL', '48778901234', 'apiotrowska@example.com'),
('Jan', 'Zalewski', 'PL', '48889012345', 'jan.zalewski@example.com'),
('Nina', 'Sikorska', 'PL', '48990123456', 'nina.sikorska@example.com'),
('Paweł', 'Wojciechowski', 'PL', '48123456709', 'pawelwojciechowski@example.com'),
('Magdalena', 'Krajewska', 'PL', '48234567590', 'magda.krajewska@example.com'),
('Ana', 'Muller', 'DE', '49234442212', 'a.muller@example.com'),
('Emma', 'Schmidt', 'DE', '49234321127', 'eschmidt@example.com'),
('Gabriel', 'Dubois', 'FR', '48230442212', 'dubois53@example.com'),
('Tom', 'Leroy', 'FR', '33234321127', 'tom.leroy@example.com'),
('Hans', 'Muller', 'DE', '49234442282', 'hmuller@example.com'),
('Aleksandra', 'Buc', 'PL', '4877095334', 'aleksandra.buc@example.com'),
('Wiktoria', 'Lama', 'PL', '48315012345', 'wiktoriaa12@example.com'),
('Jakub', 'Wadzikowski', 'PL', '48447678301', 'jakub.wadzik@example.com'),
('Weronika', 'Rama', 'PL', '48856786012', 'werarama@example.com'),
('Romek', 'Norek', 'PL', '48663890153', 'romerk.norek@example.com'),
('Jakub', 'Mazurek', 'PL', '48773901234', 'jmazurek@example.com');

INSERT INTO Languages (LanguageName)
VALUES
('Polish'),
('English'),
('German'),
('French');

INSERT INTO Lecturers (LecturerID, TitleID, LanguageID)
VALUES
(5, 1, 1),
(7, 2, 2),
(12 ,3, 1),
(26,4,1),
(27,5,1);

INSERT INTO Studies (StudyName, CoordinatorID, StudentsLimit, EntryFee, StartDate, EndDate)
VALUES
('Computer Science', 5, 50, 150.00, '2024-09-01', '2025-06-30'),
('Business Administration', 7, 40, 180.00, '2024-09-01', '2025-07-15'),
('Mechanical Engineering', 5, 60, 130.00, '2024-09-01', '2025-07-01'),
('Psychology', 7, 30, 160.00, '2024-09-01', '2025-07-20'),
('Biotechnology', 5, 45, 170.00, '2024-09-01', '2025-06-28'),
('Finance and Accounting', 7, 35, 190.00, '2024-09-01', '2025-07-10'),
('Environmental Science', 5, 55, 140.00, '2024-09-01', '2025-07-05'),
('Political Science', 7, 25, 150.00, '2024-09-01', '2025-07-25'),
('Electrical Engineering', 5, 50, 120.00, '2024-09-01', '2025-06-25'),
('Marketing', 7, 40, 100.00, '2024-09-01', '2025-07-30'),
('Computer Science', 5, 50, 150.00, '2023-09-01', '2024-06-30'),
('Business Administration', 7, 40, 180.00, '2023-09-01', '2024-07-15'),
('Mechanical Engineering', 5, 60, 130.00, '2023-09-01', '2024-07-01'),
('Psychology', 7, 30, 160.00, '2023-09-01', '2024-07-20'),
('Biotechnology', 5, 45, 170.00, '2023-09-01', '2024-06-28'),
('Finance and Accounting', 7, 35, 190.00, '2023-09-01', '2024-07-10'),
('Environmental Science', 5, 55, 140.00, '2023-09-01', '2024-07-05'),
('Political Science', 7, 25, 150.00, '2023-09-01', '2024-07-25'),
('Electrical Engineering', 5, 50, 120.00, '2023-09-01', '2024-06-25'),
('Marketing', 7, 40, 100.00, '2023-09-01', '2024-07-30'),
('Analiza danych', 5, 10, 200, '2023-01-01', '2023-12-31');

INSERT INTO Sessions (StudyID, ParticipantPrice, GuestPrice, StartDate, EndDate)
VALUES
(1, 300.00, 550.00, '2024-10-10', '2024-10-13'),
(1, 200.00, 450.00, '2024-12-03', '2024-12-06'),
(1, 320.00, 570.00, '2025-03-10', '2025-03-13'),
(2, 350.00, 600.00, '2024-09-09', '2024-09-12'),
(2, 320.00, 570.00, '2025-06-16', '2025-06-18'),
(3, 260.00, 500.00, '2024-10-10', '2024-10-13'),
(3, 410.00, 600.00, '2024-11-16', '2024-11-20'),
(3, 350.00, 585.00, '2025-02-21', '2025-02-24'),
(4, 345.00, 500.00, '2025-06-16', '2025-06-18'),
(5, 380.00, 440.00, '2024-09-10', '2024-09-13'),
(5, 200.00, 570.00, '2024-11-16', '2024-11-20'),
(6, 350.00, 585.00, '2025-07-02', '2025-07-07'),
(7, 320.00, 570.00, '2025-06-16', '2025-06-18'),
(7, 260.00, 500.00, '2024-10-25', '2024-10-27'),
(8, 560.00, 740.00, '2024-11-16', '2024-11-20'),
(9, 380.00, 630.00, '2025-02-21', '2025-02-24'),
(10, 360.00, 550.00, '2024-10-10', '2024-10-13'),
(10, 540.00, 730.00, '2024-10-10', '2024-10-13'),
(11, 300.00, 550.00, '2023-10-10', '2023-10-13'),
(11, 200.00, 450.00, '2023-12-03', '2023-12-06'),
(11, 320.00, 570.00, '2024-03-10', '2024-03-13'),
(12, 350.00, 600.00, '2023-09-09', '2023-09-12'),
(12, 320.00, 570.00, '2024-06-16', '2024-06-18'),
(13, 260.00, 500.00, '2023-10-10', '2023-10-13'),
(13, 410.00, 600.00, '2023-11-16', '2023-11-20'),
(13, 350.00, 585.00, '2024-02-21', '2024-02-24'),
(14, 345.00, 500.00, '2024-06-16', '2024-06-18'),
(15, 380.00, 440.00, '2023-09-10', '2023-09-13'),
(14, 200.00, 570.00, '2023-11-16', '2023-11-20'),
(16, 350.00, 585.00, '2024-07-02', '2024-07-07'),
(17, 320.00, 570.00, '2024-06-16', '2024-06-18'),
(17, 260.00, 500.00, '2023-10-25', '2023-10-27'),
(18, 560.00, 740.00, '2023-11-16', '2023-11-20'),
(19, 380.00, 630.00, '2024-02-21', '2024-02-24'),
(20, 360.00, 550.00, '2023-10-10', '2023-10-13'),
(20, 540.00, 730.00, '2023-10-10', '2023-10-13'),
(21, 400, 600, '2023-01-06', '2023-01-07'),
(21, 300, 500, '2023-05-19', '2023-05-21'),
(21, 500, 800, '2023-10-27', '2023-10-29');

INSERT INTO Countries(CountryName) VALUES
('Poland'),
('England'),
('Germany'),
('France');

INSERT INTO Cities (CityName, CountryID)
VALUES
('Warsaw', 1),
('Krakow', 1),
('London', 2),
('Manchester', 2),
('Berlin', 3),
('Munich', 3),
('Paris', 4),
('Lyon', 4),
('Gdansk', 1),
('Liverpool', 2),
('Hamburg', 3),
('Nice', 4),
('Wroclaw', 1),
('Birmingham', 2),
('Frankfurt', 3);

INSERT INTO Logins(UserID, UserName, Password) 
VALUES
(1, 'JanKowalski', 'JanPass123'),
(2, 'AnnaNowak', 'AnnaSecret456'),
(3, 'PiotrDabrowski', 'PiotrSecure789'),
(4, 'AgnieszkaWojcik', 'AgnieszkaPass'),
(5, 'KrzysztofKowalczyk', 'Krzysztof123'),
(6, 'MariaLewandowska', 'MariaSecure'),
(7, 'AdamWisniewski', 'AdamPass123'),
(8, 'KarolinaKaminska', 'KarolinaSecure'), 
(9, 'MateuszKowal', 'Mateusz123'), 
(10, 'ZuzannaZajac', 'ZuzannaSecure'), 
(11, 'MichalKrol', 'MichalPass123'), 
(12, 'NataliaJankowska', 'NataliaSecure'),
(13, 'JakubMazur', 'JakubPass123'),
(14, 'WeronikaWitkowska', 'WeronikaPass'),
(15, 'KacperKaczmarek', 'Kacper123'),
(16, 'AleksandraPiotrowska', 'AleksandraSecure'),
(17, 'JZalewski', 'JZalewskiSecure'),
(18, 'NInasKiroska', 'NinaSikorslkSecure'),
(19, 'PWojciechowski', 'PWojciechowskiSecure'),
(20, 'MagKRaj', 'MagKrajSecure'),
(21, 'Amuller', 'AmullerSecure'),
(22, 'Schmidt12', 'EmmaSecure'),
(23, 'GabrielDubois', 'DuboisSecure'),
(24, 'TomLeroy', 'TomTomSecure'),
(25, 'HansMuller', 'MullerHansSecure'),
(26, 'AleksandraKorona', 'ASecure'),
(27, 'JanZawadzki', 'JZawadzkiSecure');

--na podstawie tego orders a nawet więcej - bo ktos mogl byc studentem ale nie zrobic praktyk
INSERT INTO Apprenticeships (StudyID, StudentID, [Date])
VALUES
(11, 11, '2023-10-21'),
(11, 15, '2023-10-15'),
(11, 13, '2023-11-27'),
(11, 16, '2023-12-30'),
(12, 14, '2023-11-09'),
(12, 15, '2023-10-10'),
(12, 21, '2023-10-12'),
(13, 23, '2023-11-15'),
(13, 11, '2023-11-16'),
(13, 22, '2023-12-16'),
(14, 16, '2023-12-21'),
(14, 22, '2024-01-11'),
(14, 25, '2024-01-09'),
(14, 21, '2023-09-30');

INSERT INTO FieldsOfStudy (FieldName)
VALUES
('Computer Science'),
('Business Administration'),
('Mechanical Engineering'),
('Psychology'),
('Biotechnology');

INSERT INTO Locations (CityID, Street, BuildingNumber, ParticipantsLimit, RoomNumber, Description)
VALUES
(1, 'Main Street', 123, 50, 101, 'Description 1'),
(2, 'High Street', 456, 40, 202, 'Description 2'),
(3, 'Broadway', 789, 60, 303, 'Description 3'),
(4, 'Champs-Élysées', 101, 30, 44, 'Description 4'),
(1, 'Market Square', 222, 55, 505, 'Description 5'),
(2, 'Queen Street', 333, 45, 606, 'Description 6'),
(3, 'Alexanderplatz', 444, 35, 707, 'Description 7'),
(4, 'Rivoli Street', 555, 65, 808, 'Description 8'),
(1, 'Old Town', 666, 50, 909, 'Description 9'),
(2, 'Victoria Street', 777, 40, 1010, 'Description 10');

INSERT INTO Courses (CourseName, ParticipantsLimit, Advance, Price, StartDate, EndDate)
VALUES
('Programming Basics', 30, 50.00, 250.00, '2023-03-01', '2023-03-05'),
('Data Science Fundamentals', 25, 100.00, 350.00, '2023-03-15', '2023-03-25'),
('Graphic Design Workshop', 20, 30.00, 150.00, '2023-04-01', '2023-04-05'),
('Business Analytics Bootcamp', 35, 120.00, 400.00, '2023-04-15', '2023-04-25'),
('Language Learning Intensive', 40, 80.00, 300.00, '2023-05-01', '2023-05-10'),
('Photography Masterclass', 25, 60.00, 250.00, '2024-05-15', '2024-05-25'),
('Fitness Training Program', 30, 40.00, 200.00, '2024-06-01', '2024-06-10'),
('Web Development Bootcamp', 20, 150.00, 500.00, '2024-06-15', '2024-06-25'),
('Financial Planning Seminar', 15, 20.00, 100.00, '2024-07-01', '2024-07-05'),
('Artificial Intelligence Workshop', 25, 200.00, 600.00, '2024-07-15', '2024-07-25'),
('Creative Writing Course', 30, 70.00, 300.00, '2023-08-01', '2023-08-10'),
('Marketing Strategy Summit', 40, 90.00, 350.00, '2023-08-15', '2023-08-25'),
('Culinary Arts Masterclass', 20, 50.00, 250.00, '2023-09-01', '2023-09-10'),
('Mobile App Development Course', 25, 120.00, 400.00, '2023-09-15', '2023-09-25'),
('Public Speaking Workshop', 30, 30.00, 150.00, '2024-10-01', '2024-10-05'),
('Leadership Training Program', 35, 100.00, 350.00, '2024-10-15', '2024-10-25'),
('E-commerce Business Bootcamp', 20, 80.00, 300.00, '2024-11-01', '2024-11-10'),
('Interior Design Masterclass', 15, 40.00, 200.00, '2024-11-15', '2024-11-25'),
('Health and Wellness Retreat', 25, 150.00, 500.00, '2024-12-01', '2024-12-10'),
('Networking and Security Workshop', 30, 70.00, 300.00, '2024-06-01', '2024-06-25');


INSERT INTO CourseParticipants (ParticipantID, CourseID, [Date])
VALUES
(1, 3, '2023-02-26'),
(8, 3, '2023-02-28'),
(3, 3, '2023-02-28'),
(4, 3, '2023-03-01'),
(3, 8, '2024-01-11'),
(6, 8, '2023-10-08'),
(11, 8, '2024-01-10'),
(10, 8, '2024-02-08'),
(2, 7, '2024-05-18'),
(9, 7, '2024-01-10'),
(8, 7, '2024-05-08'),
(10, 1, '2023-02-26'),
(2, 1, '2023-02-28'),
(9, 1, '2023-02-28'),
(4, 1, '2023-01-02'),
(11,18,'2024-11-05'),
(4,18,'2024-11-05'),
(2,20,'2024-01-05'),
(11,20,'2024-01-08');


INSERT INTO CoursePayments (CourseID, StudentID, DueDate, Paid)
VALUES
(3, 1, '2023-03-29',1),
(3, 8, '2023-03-29',1),
(3, 3, '2023-03-29',0),
(3, 4, '2023-03-29',1),
(8, 3, '2024-06-12',0),
(8, 6, '2024-06-12',1),
(8, 11, '2024-06-12',1),
(8, 10, '2024-06-12',1),
(7, 2, '2024-05-29',1),
(7, 9, '2024-05-29',0),
(7, 8, '2024-05-29',0),
(1, 10, '2023-02-26',1),
(1, 2, '2023-02-26',1),
(1, 9, '2023-02-26',1),
(1, 4, '2023-02-26',0),
(11, 3, '2023-08-29',0),
(18, 6, '2024-11-12',1),
(12, 11, '2023-08-12',1),
(13, 10, '2023-09-29',1),
(1, 1, '2023-02-26', 1);


INSERT INTO Modules(CourseID, LecturerID) VALUES
(1, 27),
(1, 12),
(2, 5),
(2, 7),
(3, 26),
(3, 12),
(3, 5),
(7, 27),
(7, 5),
(7, 7),
(8, 12),
(8, 5),
(8, 7),
(9, 12),
(10, 7),
(11, 26),
(12, 26),
(7, 12),
(7, 5),
(7, 27),
(8, 7),
(14, 26),
(18, 5),
(14, 12),
(20, 5),
(20, 5),
(20, 12);

INSERT INTO ModulesAsync(ModuleID, RecordingLink) VALUES
(2, 'http://recording2.com'),
(3, 'http://recording3.com'),
(4, 'http://recording4.com'),
(5, 'http://recording5.com'),
(24, 'http://recording24.com'),
(13,'http://recording13.com'),
(23,'http://recording23.com');

INSERT INTO ModulesInPerson(ModuleID, LocationID, StartTime, EndTime) VALUES
(1, 6, '2023-03-01 09:00:00', '2023-03-01 12:00:00'),
(6, 1, '2023-04-02 16:00:00', '2023-04-02 19:00:00'),
(7, 2, '2023-04-03 11:30:00', '2023-04-03 14:30:00'),
(8, 3, '2024-06-06 09:15:00', '2024-06-06 12:15:00'),
(9, 4, '2024-06-07 16:30:00', '2024-06-07 18:45:00'),
(22, 5, '2024-09-15 13:00:00', '2024-09-15 16:00:00'),
(25, 4, '2024-06-07 10:30:00', '2024-06-07 14:00:00'),
(26, 5, '2024-06-17 11:30:00', '2024-06-17 13:00:00');


INSERT INTO ModulesSync(ModuleID, StartTime, EndTime, MeetingLink, RecordingLink) VALUES
(11, '2024-06-17 09:00:00', '2024-06-17 12:00:00', 'http://meetinglink11.com', 'http://recordinglink11.com'),
(12, '2024-06-15 14:00:00', '2024-06-15 17:00:00', 'http://meetinglink12.com', 'http://recordinglink12.com'),
(14, '2024-07-04 13:30:00', '2024-07-04 16:30:00', 'http://meetinglink14.com', 'http://recordinglink14.com'),
(15, '2024-07-18 08:45:00', '2024-07-18 11:45:00', 'http://meetinglink15.com', 'http://recordinglink15.com'),
(16, '2023-08-06 16:00:00', '2023-08-06 19:00:00', 'http://meetinglink16.com', 'http://recordinglink16.com'),
(17, '2023-08-12 11:30:00', '2023-08-12 14:30:00', 'http://meetinglink17.com', 'http://recordinglink17.com'),
(18, '2024-06-06 14:30:00', '2024-06-06 17:10:00', 'http://meetinglink18.com', 'http://recordinglink18.com'),
(19, '2024-06-01 15:45:00', '2024-06-01 18:45:00', 'http://meetinglink19.com', 'http://recordinglink19.com'),
(20, '2024-06-07 13:00:00', '2024-06-07 16:00:00', 'http://meetinglink20.com', 'http://recordinglink20.com'),
(27, '2024-06-13 13:00:00', '2024-06-13 16:00:00', 'http://meetinglink30.com', 'http://recordinglink30.com');


INSERT INTO Translators(TranslatorID, FieldOfStudyID)
VALUES
(5, 3),
(7, 4),
(24,2),
(15,1);

INSERT INTO KnownLanguages(TranslatorID, LanguageID)
VALUES
(5, 2),
(5, 3),
(7, 2),
(7, 4),
(24, 2),
(15, 3);

INSERT INTO StudentsAddresses(StudentID, CityID, Street, BuildingNumber, FlatNumber, PostalCode)
VALUES
(11,9,'Piaskowa', 31, 102, '13-412'),
(13,1,'Borsucza', 5, 55, '31-555'),
(14,2,'Grodzka', 12, 32, '15-721'),
(15,1,'Józefa', 321, NULL, '31-555'),
(16,6,'AugenStrasse',41,4, '42-422'),
(21,1,'Marszalkowska', 1, 41, '31-555'),
(22,2,'Szkolna', 48, NULL, '15-721'),
(23,1,'Lipowa', 53, 41, '31-532'),
(25,2,'Brzozowa', 11, 11, '15-722'),
(1,1,'Bukowa',1,2,'31-554'),
(2,1,'Bukowa',5,4,'31-554'),
(3,1,'Bukowa',6,1,'31-554'),
(10,1,'Lipowa',1,2,'31-532');


INSERT INTO SessionPayments (SessionID, StudentID, DueDate, Paid)
VALUES
(7,13,'2024-11-13', 1),
(7,11, '2024-11-13', 1),
(7,16, '2024-11-13', 1),
(7,19, '2024-11-13', 1),
(7,18, '2024-11-13', 1),
(8,13, '2025-02-18', 1),
(8,11, '2025-02-18', 1),
(8,16, '2025-02-18', 1),
(8,18, '2025-02-18', 1),

(13,22, '2025-06-13', 1),
(14,22, '2024-10-22', 1),
(13,23, '2025-06-13', 1),
(14,25, '2024-10-22', 1),

(24,23, '2023-10-07', 1),
(24,11, '2023-10-07', 0),
(24,22, '2023-10-07', 1),
(27,16, '2024-06-13', 1),
(27,22, '2024-06-13', 1),
(27,25, '2024-06-13', 1),
(27,21,'2024-06-13', 0),
(37, 11, '2023-01-03', 1),
(37, 12, '2023-01-03', 1),
(37, 13, '2023-01-03', 1),
(38, 11, '2023-05-16', 1),
(38, 12, '2023-05-16', 1),
(38, 13, '2023-05-16', 1),
(39, 11, '2023-10-24', 1),
(39, 12, '2023-10-24', 1),
(39, 13, '2023-10-24', 1),
(1,25,'2024-10-07', 1),
(17,25,'2024-10-07', 1),
(18,13,'2024-10-07', 1),
(1,13,'2024-10-07', 1),
(1,16,'2024-10-07', 1),
(17,16,'2024-10-07', 1),
(18,16,'2024-10-07', 1);

INSERT INTO ProductType(ProductName) VALUES
('Course'),
('Study'),
('Webinar'),
('Session');

INSERT INTO Roles(RoleName) VALUES
('Admin'),
('Principal'),
('Lecturer'),
('Participant'),
('Accountant'),
('System'),
('Student');

INSERT INTO Subjects (SubjectName, CoordinatorID, FieldOfStudyID, [Description])
VALUES
('Algorithms and Data Structures',5, 1, 'Zajęcia obejmują algorytmy oraz struktury danych, ucząc skutecznego projektowania i analizy algorytmów.'),
('Business Strategy',26, 2, 'Kurs koncentruje się na strategiach biznesowych, planowaniu działań marketingowych i zarządzaniu zasobami w firmie.'),
('Mechanical Design',7, 3, 'Przedmiot obejmuje projektowanie mechaniczne, techniki modelowania oraz praktyczne zastosowania w inżynierii mechanicznej.'),
('Cognitive Psychology',5, 4, 'Zajęcia z zakresu psychologii poznawczej, badające procesy myślowe, percepcję i pamięć człowieka.'),
('Genetic Engineering',12, 5, 'Kurs skupia się na inżynierii genetycznej, manipulacji DNA oraz zastosowaniach w dziedzinie biotechnologii.'),
('Database Management',26, 1, 'Zajęcia dotyczą zarządzania bazami danych, projektowania relacyjnych baz danych i języków zapytań SQL.'),
('Financial Accounting',27, 2, 'Przedmiot obejmuje zagadnienia związane z rachunkowością finansową, analizą finansową i sprawozdawczością.'), 
('Thermodynamics',12, 3, 'Kurs skupia się na termodynamice, prawach fizyki związanych z energią oraz zastosowaniach w inżynierii mechanicznej.'),
('Clinical Psychology',5, 4,'Zajęcia z zakresu psychologii klinicznej, obejmujące diagnostykę i terapię zaburzeń psychicznych.'),
('Bioinformatics',7, 5, 'Przedmiot poświęcony analizie danych genetycznych, bioinformatyce i zastosowaniach w badaniach genetycznych.'),
('Artificial Intelligence',5, 1, 'Kurs skupia się na sztucznej inteligencji, algorytmach uczenia maszynowego i zastosowaniach w informatyce.'),
('Marketing Management',12, 2, 'Zajęcia obejmują planowanie i strategie marketingowe, badanie rynku oraz techniki promocji.'),
('Automobile Engineering',7, 3, 'Przedmiot dotyczy inżynierii samochodowej, konstrukcji pojazdów oraz nowoczesnych technologii w motoryzacji.'),
('Behavioral Neuroscience',5, 4, 'Zajęcia z zakresu neurobiologii behawioralnej, analiza zachowań i ich podstaw neurofizjologicznych.'),
('Genomic Medicine',26, 5, 'Kurs skupia się na zastosowaniach genetyki w medycynie, terapii genowej i badaniach nad genomem.');

INSERT INTO Syllabuses (StudyID, SubjectID, LecturerID)
VALUES
(1, 1, 5), (1, 12, 12), (1, 5, 26),
(2, 11, 26), (2, 6, 7), (2, 7, 12),
(3, 3, 27), (3, 13, 5), (3, 9, 12),
(4, 4, 7), (4, 14, 5), (4, 8, 27),
(5, 5, 26), (5, 15, 5), (5, 10, 12),
(6, 13, 5), (6, 7, 27), (6, 14, 26),
(7, 7, 7), (7, 1, 12), (7, 15, 26),
(8, 15, 12), (8, 9, 5), (8, 2, 26),
(9, 3, 26), (9, 8, 27), (9, 10, 5),
(10, 11, 26), (10, 14, 12), (10, 6, 7),
(11, 2, 7), (11, 13, 27), (11, 5, 12),
(12, 12, 26), (12, 6, 5), (12, 8, 7),
(13, 1, 12), (13, 9, 5), (13, 10, 26),
(14, 2, 26), (14, 7, 27), (14, 14, 12),
(15, 11, 12), (15, 13, 7), (15, 5, 26),
(16, 3, 27), (16, 12, 26), (16, 9, 7),
(17, 4, 12), (17, 14, 5), (17, 8, 26),
(18, 5, 5), (18, 15, 12), (18, 10, 27),
(19, 13, 26), (19, 7, 5), (19, 14, 7),
(20, 7, 27), (20, 1, 5), (20, 15, 12);

INSERT INTO TranslatedModules(ModuleID, TranslatorID)
VALUES
(1,5),
(6,15),
(8,7),
(19,24),
(20,5);

INSERT INTO Webinars (WebinarName, RecordingLink, [Date], Price, DurationInMinutes)
VALUES
('Programowanie w Pythonie dla poczatkujacych', 'http://example.com/webinar1', '2024-02-15', 0, 90),
('Zarzadzanie projektami IT', 'http://example.com/webinar2', '2024-03-10', 25.99, 120),
('Psychologia zdrowia psychicznego', 'http://example.com/webinar3', '2023-04-05', 0, 60),
('Nowoczesne technologie w inzynierii mechanicznej', 'http://example.com/webinar4', '2024-04-20', 19.99, 90),
('Bioinformatyka w praktyce', 'http://example.com/webinar5', '2024-05-12', 15.50, 75),
('Strategie marketingowe dla malych firm', 'http://example.com/webinar6', '2023-06-01', 9.99, 60),
('Sztuczna inteligencja i jej zastosowania', 'http://example.com/webinar7', '2023-06-18', 29.99, 120),
('Finanse osobiste: Jak oszczedzac i inwestowac', 'http://example.com/webinar8', '2023-07-05', 0, 90),
('Etyka w badaniach psychologicznych', 'http://example.com/webinar9', '2023-08-10', 0, 75),
('Inzynieria genetyczna i terapie genowe', 'http://example.com/webinar10', '2023-09-02', 12.50, 90),
('Nowosci w technologii samochodowej', 'http://example.com/webinar11', '2023-09-20', 14.99, 75),
('Wprowadzenie do rachunkowosci finansowej', 'http://example.com/webinar12', '2023-10-15', 0, 60),
('Budowanie skutecznego zespolu projektowego', 'http://example.com/webinar13', '2023-11-05', 19.99, 120),
('Zakres praktyki psychologa klinicznego', 'http://example.com/webinar14', '2023-11-18', 0, 90),
('Analiza danych genetycznych w badaniach naukowych', 'http://example.com/webinar15', '2023-12-08', 25.50, 75),
('Podstawy programowania obiektowego', 'http://example.com/webinar16', '2024-01-10', 0, 60),
('Biznesowy aspekt rozwoju oprogramowania', 'http://example.com/webinar17', '2024-02-05', 15.99, 90),
('Terapie behawioralne w psychologii', 'http://example.com/webinar18', '2024-03-03', 0, 75),
('Nowoczesne metody badan neurologicznych', 'http://example.com/webinar19', '2024-03-20', 18.50, 120),
('Etyka w biotechnologii', 'http://example.com/webinar20', '2024-04-12', 0, 90);

INSERT INTO WebinarPayments(WebinarID, ParticipantID, DueDate, IsLinkActive, Paid)
VALUES
(2,13,'2024-03-07',1, 1),
(2,14,'2024-03-07',1, 1),
(2,15,'2024-03-07',0, 0),
(2,17,'2024-03-07',1, 1),
(4,14,'2024-04-17',1, 1),
(4,13,'2024-04-17',1, 1),
(4,18,'2024-04-17',1, 1),
(4,16,'2024-04-17',0, 0),
(5,17,'2024-05-09',1, 1),
(5,18,'2024-05-09',1, 1),
(5,13,'2024-05-09',1, 1),
(5,15,'2024-05-09',1, 1),
(17,14,'2024-02-03',1, 1),
(17,18,'2024-02-03',0, 0),
(13,15,'2023-11-02',1, 1),
(13,13,'2023-11-02',1, 1),
(13,18,'2023-11-02',1, 1);

INSERT INTO ModulesAttendances (ModuleID, StudentID, Present)
VALUES
(15, 1, 1), (15, 2, 1), (15, 3, 1), (15, 4, 0),
(1, 1, 1), (1, 2, 1), (6, 3, 1), (6, 4, 0),
(16, 6, 1), (16, 8, 1), (16, 9, 0), (16, 10, 1),
(17, 11, 1), (17, 1, 1), (17, 2, 0), (17, 3, 1),
(22, 4, 1), (22, 6, 1), (22, 8, 0), (22, 9, 1),
(23, 10, 1), (23, 11, 1), (23, 1, 1), (23, 2, 0),
(24, 3, 1), (24, 4, 0), (24, 6, 1), (24, 8, 1),
(2, 1, 1), (2, 2, 1);

INSERT INTO Classes (SessionID, SubjectID)
VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 5), (3, 6),
(4, 7), (4, 8),
(5, 9), (5, 10),
(6, 11), (6, 12),
(7, 13), (7, 14),
(8, 15), (8, 1),
(9, 2), (9, 3),
(10, 4), (10, 5),
(11, 6), (11, 7),
(12, 8), (12, 9),
(13, 10), (13, 11),
(14, 12), (14, 13),
(15, 14), (15, 15),
(16, 1), (16, 2),
(17, 3), (17, 4),
(18, 5), (18, 6),
(19, 7), (19, 8),
(23, 9), (24, 10),
(29, 1), (24, 13),
(32, 14), (28, 15),
(32, 1), (25, 2),
(35, 3), (35, 4),
(35, 5), (36, 6),
(37, 1), (37, 2),
(38, 1), (38, 2),
(39, 1), (39, 2);


INSERT INTO ClassesAsync (ClassID, RecordingLink)
VALUES
(14,'http://example.com/class14'),
(15,'http://example.com/class15'),
(24,'http://example.com/class24'),
(25,'http://example.com/class25'),
(37,'http://example.com/class37'),
(39,'http://example.com/class39'),
(40,'http://example.com/class40');

INSERT INTO ClassesInPerson (ClassID, LocationID, StartTime, EndTime)
VALUES
(2, 1, '2024-10-11 10:00', '2024-10-11 12:00'),
(4, 2, '2024-12-04 14:00', '2024-12-04 16:00'),
(6, 3, '2025-03-12 09:00', '2025-03-12 11:00'),
(43,4, '2023-10-11 09:00', '2023-10-11 11:00'),
(44,5, '2023-10-11 09:00', '2023-10-11 10:00'),
(49,6, '2023-10-12 09:00', '2023-10-12 11:00'),
(50,7, '2023-10-12 09:00', '2023-10-12 11:00'),
(27,2, '2024-10-25 09:00', '2024-10-25 11:00'),
(28,4, '2024-10-26 09:00', '2024-10-26 11:00'),
(51, 1, '2023-01-07 10:00', '2023-01-07 12:00'),
(52, 1, '2023-01-08 10:00', '2023-01-08 12:00'),
(53, 1, '2023-05-19 10:00', '2023-05-19 12:00'),
(54, 1, '2023-05-20 10:00', '2023-05-20 12:00'),
(55, 2, '2023-10-28 10:00', '2023-10-28 12:00'),
(56, 2, '2023-10-29 10:00', '2023-10-29 12:00'),
(33, 2 , '2024-10-11 11:30', '2024-10-11 13:00'),
(35, 3 , '2024-10-11 12:45', '2024-10-11 15:00');

INSERT INTO ClassesSync (ClassID, StartTime, EndTime, MeetingLink, RecordingLink)
VALUES
(1, '2024-10-10 10:00:00', '2024-10-10 12:00:00', 'https://meetinglink1.com', 'https://recordinglink1.com'),
(16, '2025-02-22 10:00:00', '2025-02-22 12:00:00', 'https://meetinglink16.com', 'https://recordinglink16.com'),
(17, '2025-06-17 14:00:00', '2025-06-17 16:00:00', 'https://meetinglink17.com', 'https://recordinglink17.com'),
(45, '2023-10-26 10:00:00', '2023-10-26 12:00:00', 'https://meetinglink45.com', 'https://recordinglink45.com'),
(46, '2023-11-18 14:00:00', '2023-11-18 16:00:00', 'https://meetinglink46.com', 'https://recordinglink46.com'),
(38, '2023-10-11 10:00:00', '2023-10-11 12:00:00', 'https://meetinglink38.com', 'https://recordinglink38.com');

INSERT INTO ClassesAttendances (ClassID, StudentID, Present)
VALUES
-- Klasy z przedziału (11-16)
(11, 11, 1), (11, 13, 0), (11, 16, 1), (11, 18, 1),
(12, 11, 1), (12, 13, 1), (12, 16, 1), (12, 18, 0),
(13, 11, 0), (13, 13, 1), (13, 16, 0), (13, 18, 1),
(14, 11, 1), (14, 13, 0), (14, 16, 1), (14, 18, 1),
(15, 11, 0), (15, 13, 1), (15, 16, 1), (15, 18, 0),
(16, 11, 1), (16, 13, 1), (16, 16, 0), (16, 18, 1),
-- Klasy z przedziału (37-42)
(37, 11, 1), (37, 15, 0), (37, 13, 1), (37, 16, 1),
(38, 11, 0), (38, 15, 1), (38, 13, 1), (38, 16, 0),
(39, 14, 1), (39, 15, 1), (39, 21, 0),
(40, 23, 1), (40, 11, 0), (40, 22, 1),
(41, 16, 0), (41, 22, 1), (41, 25, 1), (41, 21, 0),
(42, 23, 1), (42, 11, 0), (42, 22, 1),(44, 22, 1),(44, 25, 1),
-- klasy do studiów zakończonych
(51, 11, 1), (52, 11, 1),
(53, 11, 1), (54, 11, 1),
(55, 11, 1), (56, 11, 1),
(51, 12, 1), (52, 12, 1),
(53, 12, 1), (54, 12, 0),
(55, 12, 1), (56, 12, 1),
(51, 13, 1), (52, 13, 1),
(53, 13, 0), (54, 13, 1),
(55, 13, 0), (56, 13, 1)
 ;

INSERT INTO RolesHistory(UserID, RoleID, StartDate, EndDate)
VALUES
(1,4,'2022-04-20', NULL),
(2,4,'2021-06-01', NULL),
(3,4,'2022-12-01', NULL),
(4,4,'2022-10-01', NULL),
(5,3,'2022-10-01', NULL),
(6,4,'2021-10-01', NULL),
(7,3,'2021-11-01', NULL),
(8,4,'2021-10-01', NULL),
(9,4,'2022-12-01', NULL),
(10,4,'2020-10-01', NULL),
(11,4,'2021-10-01', NULL),
(11,7,'2023-09-01', NULL),
(12,3,'2023-09-01', NULL),
(13,7,'2023-09-01', NULL),
(14,7,'2023-09-01', NULL),
(15,7,'2023-09-01', NULL),
(13,4,'2023-10-01', NULL),
(14,4,'2023-11-01', NULL),
(15,4,'2023-10-01', NULL),
(16,7,'2023-09-01', NULL),
(16,4,'2022-11-01', NULL),
(17,4,'2022-10-01', NULL),
(18,4,'2021-10-01', NULL),
(21,7,'2023-09-01', NULL),
(22,7,'2023-09-01', NULL),
(23,7,'2023-09-01', NULL),
(24,2,'2023-09-01', NULL),
(25,7,'2023-09-01', NULL),
(26,3,'2021-11-01', NULL),
(27,3,'2020-10-01', NULL);

INSERT INTO Orders (UserID, OrderDate)
VALUES
(1,'2022-08-01'),
(2,'2022-01-08'),
(3,'2021-03-02'),
(4,'2022-02-26'),
(6,'2021-01-26'),
(8,'2022-02-26'),
(9,'2021-02-25'),
(10,'2022-05-08'),
(11,'2021-08-01'),
(13,'2021-01-08'),
(14,'2022-03-02'),
(15,'2021-02-26'),
(16,'2022-01-26'),
(21,'2022-02-26'),
(22,'2022-02-25'),
(23,'2022-05-08'),
(25,'2021-08-01'),
(20,'2021-01-08'),
(17,'2022-03-02'),
(18,'2022-02-26'),
(19,'2022-01-26');


INSERT INTO OrderDetails (OrderID, ProductID, ProductTypeID)
VALUES
(1,3,1),
(2,7,1),
(2,1,1),
(3,8,1),
(3,3,1),
(4,3,1),
(4,1,1),
(5,8,1),
(6,3,1),
(6,7,1),
(7,1,1),
(7,7,1),
(8,1,1),
(8,8,1),
(9,8,1),
(11,18,1),
(11,12,1),
(10,11,1),
(10,18,1),
(9,3,2),
(9,13,2),
(10,3,2),
(13,3,2),
(13,14,2),
(20,3,2),
(21,3,2),
(14,14,2),
(15,14,4),
(15,13,4),
(16,13,4),
(17,14,4),
(10,2,3),
(10,4,3),
(10,5,3),
(10,13,3),
(11,4,3),
(11,17,3),
(11,2,3),
(12,2,3),
(12,5,3),
(12,13,3),
(13,4,3),
(19,5,3),
(19,2,3),
(20,5,3),
(20,4,3),
(20,13,3),
(20,17,3);

INSERT INTO Diplomas (ProductID, TypeID, StudentID, SendingDate)
VALUES
(21, 2, 11, '2024-01-01');

INSERT INTO Cart (UserID, ProductID, ProductTypeID)
VALUES
(28,10,4),
(28,2,3),
(29,10,1),
(30,7,2);





