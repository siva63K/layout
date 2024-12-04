-- Create the database
CREATE DATABASE HealthCareDB;
USE HealthCareDB;

-- Create Patients table
CREATE TABLE Patients (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Gender ENUM('Male', 'Female', 'Other'),
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255)
);

-- Create Doctors table
CREATE TABLE Doctors (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialty VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);

-- Create Appointments table
CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    AppointmentDate varchar(20),
    AppointmentTime varchar(20),
    ReasonForVisit VARCHAR(255),
	PatientID INT,
    DoctorID INT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Create Prescriptions table
CREATE TABLE Prescriptions (
    PrescriptionID INT AUTO_INCREMENT PRIMARY KEY,
    Medication VARCHAR(100),
    Dosage VARCHAR(50),
    Duration VARCHAR(50),
	AppointmentID INT,
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);

INSERT INTO Patients VALUES
(1,'John', 'Doe', 29, 'Male', '1234567890', '123 Maple St'),
(2,'Jane', 'Smith', 34, 'Female', '9876543210', '456 Oak St'),
(3,'Alice', 'Brown', 40, 'Female', '5555555555', '789 Pine St'),
(4,'Bob', 'Johnson', 52, 'Male', '4444444444', '321 Cedar St'),
(5,'Charlie', 'Davis', 25, 'Male', '6666666666', '654 Birch St'),
(6,'David', 'Lee', 30, 'Male', '1231231231', '101 Elm St'),
(7,'Eva', 'Martinez', 27, 'Female', '3333333333', '202 Aspen St'),
(8,'Frank', 'Garcia', 45, 'Male', '9999999999', '303 Willow St'),
(9,'Grace', 'Miller', 38, 'Female', '7777777777', '404 Cypress St'),
(10,'Hank', 'Wilson', 50, 'Male', '8888888888', '505 Palm St'),
(11,'Ivy', 'Anderson', 22, 'Female', '2222222222', '606 Redwood St'),
(12,'Jack', 'Thomas', 60, 'Male', '1010101010', '707 Fir St'),
(13,'Kelly', 'White', 33, 'Female', '2020202020', '808 Spruce St'),
(14,'Liam', 'Harris', 44, 'Male', '3030303030', '909 Alder St'),
(15,'Mia', 'Clark', 28, 'Female', '4040404040', '111 Poplar St'),
(16,'Nora', 'Lewis', 36, 'Female', '5050505050', '212 Magnolia St'),
(17,'Owen', 'Walker', 31, 'Male', '6060606060', '313 Sycamore St'),
(18,'Paul', 'Hall', 26, 'Male', '7070707070', '414 Sequoia St'),
(19,'Quinn', 'Young', 39, 'Female', '8080808080', '515 Juniper St'),
(20,'Ruby', 'King', 42, 'Female', '9090909090', '616 Ash St');

INSERT INTO Doctors VALUES 
(1, 'John', 'Doe', 'Cardiologist', '555-1234', 'johndoe@example.com'),
(2, 'Jane', 'Smith', 'Dermatologist', '555-2345', 'janesmith@example.com'),
(3, 'Michael', 'Brown', 'Neurologist', '555-3456', 'michaelbrown@example.com'),
(4, 'Emily', 'Johnson', 'Pediatrician', '555-4567', 'emilyjohnson@example.com'),
(5, 'William', 'Davis', 'Orthopedist', '555-5678', 'williamdavis@example.com'),
(6, 'Linda', 'Martinez', 'Oncologist', '555-6789', 'lindamartinez@example.com'),
(7, 'Richard', 'Wilson', 'Psychiatrist', '555-7890', 'richardwilson@example.com'),
(8, 'Barbara', 'Garcia', 'Gastroenterologist', '555-8901', 'barbaragarcia@example.com'),
(9, 'James', 'Lopez', 'Urologist', '555-9012', 'jameslopez@example.com'),
(10, 'Elizabeth', 'Clark', 'Pulmonologist', '555-0123', 'elizabethclark@example.com'),
(11, 'Thomas', 'Hall', 'Endocrinologist', '555-3457', 'thomashall@example.com'),
(12, 'Susan', 'Harris', 'Ophthalmologist', '555-4568', 'susanharris@example.com'),
(13, 'Charles', 'Walker', 'Radiologist', '555-5679', 'charleswalker@example.com'),
(14, 'Nancy', 'Allen', 'Rheumatologist', '555-6780', 'nancyallen@example.com'),
(15, 'Daniel', 'Young', 'Surgeon', '555-7891', 'danielyoung@example.com'),
(16, 'Sandra', 'King', 'Allergist', '555-8902', 'sandranking@example.com'),
(17, 'Matthew', 'Wright', 'Anesthesiologist', '555-9013', 'matthewwright@example.com'),
(18, 'Jennifer', 'Scott', 'Hematologist', '555-0124', 'jenniferscott@example.com'),
(19, 'Christopher', 'Torres', 'Nephrologist', '555-3458', 'christophertorres@example.com'),
(20, 'Patricia', 'Nguyen', 'Plastic Surgeon', '555-4569', 'patricianguyen@example.com');

INSERT INTO Appointments VALUES
(1, '2024-12-01', '09:00:00', 'General Checkup', 1, 1),
(2, '2024-12-01', '09:30:00', 'Flu Symptoms', 2, 2),
(3, '2024-12-01', '10:00:00', 'Follow-up', 3, 3),
(4, '2024-12-02', '11:00:00', 'Back Pain', 4, 4),
(5, '2024-12-02', '11:30:00', 'Skin Rash', 5, 5),
(6, '2024-12-02', '14:00:00', 'Headache', 6, 1),
(7, '2024-12-03', '15:00:00', 'Diabetes Consultation', 7, 2),
(8, '2024-12-03', '16:00:00', 'Eye Checkup', 8, 3),
(9, '2024-12-04', '09:00:00', 'Dental Pain', 9,4),
(10, '2024-12-04', '09:30:00', 'Annual Physical', 10, 5),
(11, '2024-12-05', '10:00:00', 'Blood Pressure', 11, 1),
(12, '2024-12-05', '10:30:00', 'Chronic Fatigue', 12, 2),
(13, '2024-12-06', '11:00:00', 'Stomach Ache', 13, 3),
(14, '2024-12-06', '13:00:00', 'Surgery Follow-up', 14, 4),
(15, '2024-12-06', '14:30:00', 'Injury Check', 15, 5),
(16, '2024-12-07', '15:00:00', 'Throat Infection', 16, 1),
(17, '2024-12-07', '16:30:00', 'Postnatal Care', 17, 2),
(18, '2024-12-08', '09:00:00', 'Allergy Symptoms', 18, 3),
(19, '2024-12-08', '09:45:00', 'Fever and Chills', 19, 4),
(20, '2024-12-08', '10:30:00', 'Vaccination', 20, 5);

INSERT INTO Prescriptions VALUES 
(1,'Paracetamol', '500mg', '7 days', 1),
(2,'Ibuprofen', '200mg', '5 days', 2),
(3,'Amoxicillin', '250mg', '10 days', 3),
(4,'Cetirizine', '10mg', '3 days', 4),
(5,'Metformin', '500mg', '30 days', 5),
(6,'Lisinopril', '10mg', '15 days', 6),
(7,'Amlodipine', '5mg', '20 days', 7),
(8,'Azithromycin', '500mg', '3 days', 8),
(9,'Omeprazole', '20mg', '14 days', 9),
(10,'Simvastatin', '10mg', '30 days', 10),
(11,'Losartan', '50mg', '30 days', 11),
(12,'Furosemide', '40mg', '5 days', 12),
(13,'Levothyroxine', '75mcg', '60 days', 13),
(14,'Prednisone', '10mg', '7 days', 14),
(15,'Albuterol', '90mcg', '10 days', 15),
(16,'Gabapentin', '300mg', '20 days', 16),
(17,'Clopidogrel', '75mg', '30 days', 17),
(18,'Warfarin', '5mg', '30 days', 18),
(19,'Doxycycline', '100mg', '10 days', 19),
(20,'Ciprofloxacin', '500mg', '7 days', 20);

select * from patients;
select * from doctors;
select * from appointments;
select * from prescriptions;

 -- Here are some queries run on the database--
 
-- 1.List all patients over 40 years old --
DELIMITER $$
CREATE PROCEDURE GET1()
BEGIN
SELECT * FROM Patients WHERE Age > 40 ;
END $$
DELIMITER ;

-- 2.Find all appointments scheduled with the Cardiologist---
DELIMITER $$
CREATE PROCEDURE GET2()
BEGIN
SELECT A.AppointmentID, P.FirstName AS Patient, D.FirstName AS Doctor, A.AppointmentDate 
FROM Appointments A
JOIN Patients P ON A.PatientID = P.PatientID
JOIN Doctors D ON A.DoctorID = D.DoctorID
WHERE D.Specialty = 'Cardiologist';
END $$
DELIMITER ;

-- 3.Get prescription details for a specific patient --
DELIMITER $$
CREATE PROCEDURE GET3()
BEGIN
SELECT P.FirstName, P.LastName, PR.Medication, PR.Dosage, PR.Duration
FROM Prescriptions PR
JOIN Appointments A ON PR.AppointmentID = A.AppointmentID
JOIN Patients P ON A.PatientID = P.PatientID
WHERE P.FirstName = 'John' AND P.LastName = 'Doe';
END $$
DELIMITER ;

-- 4.Upcoming Appointments ---
DELIMITER $$
CREATE PROCEDURE GET4()
BEGIN
SELECT A.AppointmentID, P.FirstName AS Patient, D.FirstName AS Doctor, A.AppointmentDate 
FROM Appointments A
JOIN Patients P ON A.PatientID = P.PatientID
JOIN Doctors D ON A.DoctorID = D.DoctorID
WHERE A.AppointmentDate BETWEEN NOW() AND DATE_ADD(NOW(), INTERVAL 7 DAY)
ORDER BY A.AppointmentDate;
END $$
DELIMITER ;

-- 5.  Doctor's Patient Load --
DELIMITER $$
CREATE PROCEDURE GET5()
BEGIN
SELECT D.DoctorID, D.FirstName, D.LastName, COUNT(A.PatientID) AS TotalPatients
FROM Doctors D
LEFT JOIN Appointments A ON D.DoctorID = A.DoctorID
GROUP BY D.DoctorID, D.FirstName, D.LastName
ORDER BY TotalPatients DESC;
END $$
DELIMITER ;

-- 6.Patient’s Medical History --
DELIMITER $$
CREATE PROCEDURE GET6()
BEGIN
SELECT P.FirstName, P.LastName, A.AppointmentDate, A.ReasonForVisit, PR.Medication, PR.Dosage, PR.Duration
FROM Patients P
LEFT JOIN Appointments A ON P.PatientID = A.PatientID
LEFT JOIN Prescriptions PR ON A.AppointmentID = PR.AppointmentID
WHERE P.FirstName = 'Alice' AND P.LastName = 'Brown'
ORDER BY A.AppointmentDate DESC;
END $$
DELIMITER ;

-- 7.Frequent Visitors --
DELIMITER $$
CREATE PROCEDURE GET7()
BEGIN
SELECT P.PatientID, P.FirstName, P.LastName, COUNT(A.AppointmentID) AS TotalAppointments
FROM Patients P
JOIN Appointments A ON P.PatientID = A.PatientID
GROUP BY P.PatientID, P.FirstName, P.LastName
HAVING TotalAppointments > 3
ORDER BY TotalAppointments DESC;
END $$
DELIMITER ;

-- 8.List the top 5 most commonly prescribed medications --
DELIMITER $$
CREATE PROCEDURE GET8()
BEGIN
SELECT Medication, COUNT(PrescriptionID) AS PrescriptionCount
FROM Prescriptions
GROUP BY Medication
ORDER BY PrescriptionCount DESC
LIMIT 5;
END $$
DELIMITER ;

-- 9.Inactive Patients --
DELIMITER $$
CREATE PROCEDURE GET9()
BEGIN
SELECT P.PatientID, P.FirstName, P.LastName, MAX(A.AppointmentDate) AS LastAppointmentDate
FROM Patients P
LEFT JOIN Appointments A ON P.PatientID = A.PatientID
GROUP BY P.PatientID, P.FirstName, P.LastName
HAVING LastAppointmentDate < DATE_SUB(NOW(), INTERVAL 1 YEAR) OR LastAppointmentDate IS NULL;
END $$
DELIMITER ;

-- 10.Find which specialties are treating the most patients --
DELIMITER $$
CREATE PROCEDURE GET10()
BEGIN
SELECT D.Specialty, COUNT(A.AppointmentID) AS TotalAppointments
FROM Doctors D
JOIN Appointments A ON D.DoctorID = A.DoctorID
GROUP BY D.Specialty
ORDER BY TotalAppointments DESC;
END $$
DELIMITER ;

-- 11.Overbooked Doctors --
DELIMITER $$
CREATE PROCEDURE GET11()
BEGIN
SELECT D.DoctorID, D.FirstName, D.LastName, A.AppointmentDate, COUNT(A.AppointmentID) AS AppointmentsOnDay
FROM Doctors D
JOIN Appointments A ON D.DoctorID = A.DoctorID
GROUP BY D.DoctorID, D.FirstName, D.LastName, A.AppointmentDate
HAVING AppointmentsOnDay > 5
ORDER BY AppointmentsOnDay DESC;
END $$
DELIMITER ;

-- 12.Patient Gender Distribution --
DELIMITER $$
CREATE PROCEDURE GET12()
BEGIN
SELECT Gender, COUNT(PatientID) AS TotalPatients
FROM Patients
GROUP BY Gender;
END $$
DELIMITER ;

-- 13.Doctors Without Appointments --
DELIMITER $$
CREATE PROCEDURE GET13()
SELECT D.DoctorID, D.FirstName, D.LastName, D.Specialty
FROM Doctors D
LEFT JOIN Appointments A ON D.DoctorID = A.DoctorID
WHERE A.AppointmentID = "1" ;
END $$
DELIMITER ;

-- 14.Most Common Reasons for Visits --
DELIMITER $$
CREATE PROCEDURE GET14()
SELECT ReasonForVisit, COUNT(AppointmentID) AS VisitCount
FROM Appointments
GROUP BY ReasonForVisit
ORDER BY VisitCount DESC
LIMIT 3;
END $$
DELIMITER ;

-- 15 searching the like operators --
DELIMITER $$
CREATE PROCEDURE GET15()
SELECT PatientID, FirstName, LastName, Age, Gender
FROM Patients
WHERE FirstName LIKE 'A%';

SELECT DoctorID, FirstName, LastName, Specialty
FROM Doctors
WHERE Specialty LIKE '%cardio%';

SELECT PatientID, FirstName, LastName, Address
FROM Patients
WHERE Address LIKE '%Maple%';

SELECT AppointmentID, PatientID, DoctorID, AppointmentDate, ReasonForVisit
FROM Appointments
WHERE ReasonForVisit LIKE '%pain%'; 

END $$
DELIMITER ;

CALL GET1();
CALL GET2();
CALL GET3();
CALL GET4();
CALL GET5();
CALL GET6();
CALL GET7();
CALL GET8();
CALL GET9();
CALL GET10();
CALL GET11();
CALL GET12();
CALL GET13();
CALL GET14();
CALL GET15();