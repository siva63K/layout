create database EMS;
use EMS;

CREATE TABLE Events (
    event_id int primary key,
    event_name VARCHAR(100),
    event_date varchar(100),
    description varchar(200),
    total_seats INT,
    venue_id int,
    FOREIGN KEY (venue_id) REFERENCES Venues(venue_id)
);

CREATE TABLE Venues (
    venue_id int primary key,
    venue_name VARCHAR(100),
    address varchar(100),
    capacity INT
);

CREATE TABLE Attendees (
    attendee_id INT primary key,
    name VARCHAR(100),
    contact_number VARCHAR(15),
    email VARCHAR(100),
    organization VARCHAR(100)
);

CREATE TABLE Registrations (
    registration_id INT primary key,
    registration_date varchar(100),
    registration_time varchar(100),
    status VARCHAR(20),
    event_id int,
    attendee_id int,
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (attendee_id) REFERENCES Attendees(attendee_id)
);

CREATE TABLE Speakers (
    speaker_id int primary key,
    name VARCHAR(100),
    bio varchar(200),
    contact_number VARCHAR(15),
    email VARCHAR(100),
    event_id int,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

INSERT INTO Events VALUES
(1, 'Chennai Music Festival', '2024-01-05', 'A classical music festival featuring Carnatic music performances.', 500, 1),
(2, 'Chennai Book Fair', '2024-01-15', 'Annual book fair showcasing publishers and authors.', 1000, 2),
(3, 'Chennai Dance Festival', '2024-01-25', 'A showcase of Bharatanatyam and other traditional dance forms.', 750, 3),
(4, 'IPL Cricket Match', '2024-02-10', 'Chennai Super Kings match at Chepauk stadium.', 45000, 4),
(5, 'Chennai Food Festival', '2024-02-20', 'Food festival featuring local and international cuisines.', 2000, 5),
(6, 'Marina Beach Marathon', '2024-03-05', 'A marathon along the scenic Marina Beach.', 5000, 6),
(7, 'Tamil Nadu Science Exhibition', '2024-03-15', 'Exhibition showcasing science and technology projects.', 1000, 7),
(8, 'Madras Day Celebrations', '2024-04-10', 'Cultural events to celebrate the founding of Madras (Chennai).', 1500, 8),
(9, 'Chennai Auto Expo', '2024-04-20', 'Automobile exhibition featuring new cars and bikes.', 3000, 9),
(10, 'Chennai International Film Festival', '2024-05-05', 'Screening of international and regional films.', 2000, 10),
(11, 'Chennai Tech Summit', '2024-05-20', 'Technology summit featuring speakers from tech industries.', 1000, 11),
(12, 'Chennai Street Food Festival', '2024-06-10', 'Food festival featuring street food from different regions.', 5000, 12),
(13, 'Chennai Photography Expo', '2024-06-25', 'Exhibition featuring photography from professional and amateur artists.', 800, 13),
(14, 'Chennai International Marathon', '2024-07-10', 'A marathon open to participants from around the world.', 6000, 14),
(15, 'Chennai Art Exhibition', '2024-07-25', 'Exhibition featuring works from contemporary Indian artists.', 1200, 15),
(16, 'Chennai Start-up Expo', '2024-08-10', 'Exhibition featuring start-up companies and investors.', 1000, 16),
(17, 'Chennai Literature Festival', '2024-08-25', 'Festival celebrating literature and poetry from Tamil and world literature.', 1500, 17),
(18, 'Chennai Fashion Week', '2024-09-10', 'Fashion week featuring local and international designers.', 2500, 18),
(19, 'Chennai Music Awards', '2024-09-25', 'Annual awards for excellence in the music industry.', 1200, 19),
(20, 'Chennai Theater Festival', '2024-10-10', 'Festival featuring performances of regional and international theater.', 1000, 20);

INSERT INTO Venues VALUES
(1, 'Chennai Trade Centre', 'Mount Poonamalle High Road, Nandambakkam', 10000),
(2, 'Music Academy', 'TTK Road, Alwarpet', 2000),
(3, 'Jawaharlal Nehru Indoor Stadium', 'Periamet, Chennai', 8000),
(4, 'Nehru Stadium', 'Sydenhams Road, Park Town', 40000),
(5, 'Madras Race Club', 'Guindy, Chennai', 5000),
(6, 'Kamarajar Arangam', 'Anna Salai, Chennai', 1500),
(7, 'Chinmaya Heritage Centre', 'Harrington Road, Chetpet', 1200),
(8, 'Phoenix MarketCity', 'Velachery Main Road', 10000),
(9, 'Express Avenue', 'Whites Road, Royapettah', 5000),
(10, 'VGP Universal Kingdom', 'East Coast Road, Injambakkam', 6000),
(11, 'Forum Vijaya Mall', 'Arcot Road, Vadapalani', 7000),
(12, 'Sri Mutha Venkatasubba Rao Concert Hall', 'Chetpet', 1800),
(13, 'Chennai International Airport T3', 'GST Road, Meenambakkam', 2000),
(14, 'SPIC Conference Hall', 'Guindy Industrial Estate', 1000),
(15, 'Hotel Green Park', 'Vadapalani, Chennai', 800),
(16, 'ITC Grand Chola', 'Anna Salai, Guindy', 1500),
(17, 'Vivanta Chennai', 'Tharamani, Chennai', 1200),
(18, 'Hyatt Regency Chennai', 'Anna Salai, Teynampet', 1500),
(19, 'Radisson Blu Hotel GRT', 'GST Road, Meenambakkam', 1000),
(20, 'The Leela Palace', 'MRC Nagar, Raja Annamalai Puram', 1500);

INSERT INTO Attendees VALUES
(1, 'Rajesh Kumar', '9876543210', 'rajesh.kumar@gmail.com', 'Tata Consultancy Services'),
(2, 'Priya Raman', '9845123456', 'priya.raman@wipro.com', 'Wipro Ltd'),
(3, 'Vijay Narayanan', '9965231470', 'vijay.narayanan@infosys.com', 'Infosys'),
(4, 'Anita Devi', '9845012345', 'anita.devi@zoho.com', 'Zoho Corporation'),
(5, 'Suresh Reddy', '9876043210', 'suresh.reddy@cts.com', 'Cognizant Technology Solutions'),
(6, 'Meena Iyer', '9988776655', 'meena.iyer@hcl.com', 'HCL Technologies'),
(7, 'Arun Prasad', '9876098765', 'arun.prasad@accenture.com', 'Accenture'),
(8, 'Divya Ramesh', '9845098765', 'divya.ramesh@amazon.com', 'Amazon India'),
(9, 'Gopal Krishnan', '9876567890', 'gopal.krishnan@ibm.com', 'IBM India'),
(10, 'Ravi Varma', '9998899988', 'ravi.varma@techmahindra.com', 'Tech Mahindra'),
(11, 'Shruti Shankar', '9876123456', 'shruti.shankar@freshworks.com', 'Freshworks'),
(12, 'Karthik Nair', '9825098765', 'karthik.nair@flipkart.com', 'Flipkart'),
(13, 'Lakshmi Narayan', '9844012345', 'lakshmi.narayan@oracle.com', 'Oracle India'),
(14, 'Deepak S', '9912345678', 'deepak.s@mindtree.com', 'Mindtree Ltd'),
(15, 'Neha Srivastava', '9898076543', 'neha.srivastava@lnt.com', 'Larsen & Toubro'),
(16, 'Srinivas Rao', '9878901234', 'srinivas.rao@tvs.com', 'TVS Motor Company'),
(17, 'Vimal Kumar', '9888098765', 'vimal.kumar@ashokleyland.com', 'Ashok Leyland'),
(18, 'Jaya Balakrishnan', '9845098765', 'jaya.balakrishnan@rbs.com', 'Royal Bank of Scotland'),
(19, 'Manoj Menon', '9876123450', 'manoj.menon@sundaram.com', 'Sundaram Finance'),
(20, 'Pooja Deshmukh', '9988776650', 'pooja.deshmukh@hdfc.com', 'HDFC Bank');

INSERT INTO Registrations VALUES 
(1, '2023-10-01', '10:00 AM', 'Confirmed', 20, 3),
(2, '2023-10-02', '11:30 AM', 'Pending', 19, 5),
(3, '2023-10-03', '09:15 AM', 'Confirmed', 18, 7),
(4, '2023-10-03', '12:00 PM', 'Cancelled', 17, 10),
(5, '2023-10-04', '10:30 AM', 'Confirmed', 16, 4),
(6, '2023-10-04', '03:00 PM', 'Pending', 15, 1),
(7, '2023-10-05', '11:45 AM', 'Confirmed', 14, 6),
(8, '2023-10-05', '01:30 PM', 'Confirmed', 13, 12),
(9, '2023-10-06', '10:15 AM', 'Cancelled', 12, 15),
(10, '2023-10-06', '02:45 PM', 'Confirmed', 11, 18),
(11, '2023-10-07', '09:45 AM', 'Confirmed', 10, 8),
(12, '2023-10-07', '11:00 AM', 'Pending', 9, 19),
(13, '2023-10-08', '12:30 PM', 'Confirmed', 8, 9),
(14, '2024-10-08', '02:00 PM', 'Cancelled', 7, 2),
(15, '2023-10-09', '10:45 AM', 'Confirmed', 6, 11),
(16, '2023-10-09', '01:15 PM', 'Confirmed', 5, 17),
(17, '2023-10-10', '11:30 AM', 'Pending', 3,14),
(18, '2023-10-10', '03:45 PM', 'Confirmed', 1, 20),
(19, '2023-10-11', '09:00 AM', 'Cancelled', 2, 13),
(20, '2023-10-11', '12:15 PM', 'Confirmed', 4, 16);

INSERT INTO Speakers VALUES
(1, 'Ravi Kumar', 'Tech evangelist in AI', '9876543210', 'ravi.kumar@gmail.com', 10),
(2, 'Anitha Raj', 'Cloud Computing expert', '8765432109', 'anitha.raj@yahoo.com', 9),
(3, 'Suresh Babu', 'Cybersecurity specialist', '7654321098', 'suresh.babu@outlook.com', 15),
(4, 'Priya Nair', 'Data Scientist and AI mentor', '6543210987', 'priya.nair@gmail.com', 7),
(5, 'Vikram Sharma', 'Blockchain enthusiast', '5432109876', 'vikram.sharma@blockchain.com', 6),
(6, 'Meena Iyer', 'DevOps lead', '4321098765', 'meena.iyer@techmail.com', 11),
(7, 'Arjun Varma', 'IoT solutions architect', '3210987654', 'arjun.varma@gmail.com', 12),
(8, 'Kavya Menon', 'Big Data analyst', '2109876543', 'kavya.menon@yahoo.com', 13),
(9, 'Mohan Krishnan', 'Full Stack Developer', '1987654321', 'mohan.krishnan@gmail.com', 14),
(10, 'Preethi Ramesh', 'Machine Learning researcher', '1234567890', 'preethi.ramesh@gmail.com', 20),
(11, 'Karthik Srinivas', 'Software Architect in Cloud', '2233445566', 'karthik.srinivas@tech.com', 19),
(12, 'Janani Bala', 'Expert in Edge Computing', '3344556677', 'janani.bala@outlook.com', 18),
(13, 'Gautam Desai', 'Mobile App Development Specialist', '4455667788', 'gautam.desai@gmail.com', 17),
(14, 'Swetha Narayan', 'Product Manager in Fintech', '5566778899', 'swetha.narayan@fintech.com', 16),
(15, 'Ashok Reddy', 'AI and Deep Learning Researcher', '6677889900', 'ashok.reddy@deeplearn.com', 8),
(16, 'Divya Shankar', 'Quantum Computing Advocate', '7788990011', 'divya.shankar@gmail.com', 5),
(17, 'Rahul Jain', 'Startup Mentor and Tech Entrepreneur', '8899001122', 'rahul.jain@startup.com', 4),
(18, 'Neha Deshpande', 'Business Intelligence Consultant', '9900112233', 'neha.deshpande@gmail.com', 3),
(19, 'Abhishek Mehra', 'Robotics Innovator', '1020304050', 'abhishek.mehra@gmail.com', 2),
(20, 'Nisha Kapoor', 'AI Ethics Researcher', '2030405060', 'nisha.kapoor@yahoo.com', 1);

select * from events;
select * from venues;
select * from Attendees;
select * from Registrations;
select * from Speakers;
------------------------------------------------

JOINS

DELIMITER $$
CREATE PROCEDURE GETJOIN()
BEGIN
select events.event_id,events.event_name,events.event_date,venues.venue_id,venues.venue_name
from events
join venues
on events.venue_id = venues.venue_id ;
END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE GETJOIN1()
BEGIN
select registrations.registration_id,registrations.registration_date,registrations.registration_time,attendees.attendee_id,attendees.name,attendees.contact_number
from registrations
right join attendees
on registrations.attendee_id = attendees.attendee_id ;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GETwhere_use()
BEGIN
select events.event_id,events.event_name,events.event_date,venues.venue_id,venues.venue_name
from events,venues
where events.venue_id = venues.venue_id ;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GETUNION()
BEGIN
select e.event_id,e.event_name,e.event_date,e.total_seats,v.venue_id,v.venue_name,v.address
from events as e
left join venues as v
on e.event_id = v.venue_id 
UNION
select r.registration_id,r.registration_date,r.registration_time,a.attendee_id,a.name,a.contact_number
from registrations as r
right join attendees as a
on r.attendee_id = a.attendee_id ;
END $$
DELIMITER ;

-------------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE GETAGGREGATE()
BEGIN
select sum(total_seats) as seats from events;
select max(total_seats) as seats from events;
select min(total_seats) as seats from events;
select avg(total_seats) as seats from events;
select count(total_seats) as seats from events;

select count(status) from registrations where status = 'confirmed';
select count(status) from registrations where status = 'cancelled';
select count(status) from registrations where status = 'pending';
END $$
DELIMITER ;
---------------------------------------------------------


DELIMITER $$
CREATE PROCEDURE GETLOGICAL()
BEGIN
select * from events where (event_name) = 'chennai book fair' AND (total_seats) = '1000';    
select * from events where (event_name) = 'chennai book fair' OR (total_seats) = '2000' ;    
select * from events where NOT (event_name) = 'chennai book fair' OR (total_seats) = '1000' ;
END $$
DELIMITER ;
--------------------------------------------------------


DELIMITER $$
CREATE PROCEDURE GETORDERBY_GROUPBY()
BEGIN
select (total_seats) from events order by total_seats asc;
select (total_seats) from events order by total_seats desc;

select event_date from events group by event_date;

select count(registration_date),(status) from registrations group by status;
END $$
DELIMITER ;

-------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE GETLIKE_LIMIT_DISTINCT()
BEGIN
select * from attendees where organization like "HDFC Bank%";

select * from events where total_seats like "1000%";

select * from attendees where attendee_id like "3%";

select * from events limit  16 ;

select * from registrations limit  11 ;

select distinct * from events ;
END $$
DELIMITER ;

-----------------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE GETHAVING_COUNT()
BEGIN
SELECT attendee_id, COUNT(DISTINCT event_id) AS events_attended 
FROM Registrations 
GROUP BY attendee_id 
HAVING COUNT(DISTINCT event_id) > 0;
END $$
DELIMITER ;

---------------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE GETSUB_QUERIES()
BEGIN

SELECT * FROM Venues 
WHERE venue_id IN(
  SELECT venue_id 
  FROM Events 
  WHERE event_date = '2024-02-10'
);
SELECT * FROM Venues 
WHERE venue_id > ANY(
  SELECT venue_id 
  FROM Events 
  WHERE event_date = '2024-02-10'
);
SELECT * FROM Venues 
WHERE venue_id <ALL(
  SELECT venue_id 
  FROM Events 
  WHERE event_date = '2024-02-10'
);
END $$
DELIMITER ;

-------------------------------------------------

CREATE VIEW TABLE ;

create view values1 as 
(select event_id,event_name,event_date from events) ;

create view values2 as (select * from events where event_date ='2024-02-05') ;

select * from (values2) where event_date is null ;
select * from (values2) where event_date is not null

-----------------------------------------------------

  
 select event_id,total_seats,
 case
 when total_seats > 5000 then " total_seats is greater then 5000"
 when total_seats = 5000 then "total_seats is 5000"
 else "total_seats is under 5000"
 end as result from events ;

DELIMITER $$
CREATE PROCEDURE GETUPDATE()
BEGIN
 UPDATE Venues
SET Capacity = 600
WHERE Venue_name = 'Convention Center';
 END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE GETRetrieve_all_events_with_venue_details()
BEGIN
SELECT e.Event_name, e.Event_Date, v.Venue_name, v.address
FROM Events as e
JOIN Venues as v ON e.Venue_id = v.Venue_id;
END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE GETspecific_event()
BEGIN
SELECT a.name, a.Email, r.Registration_Date
FROM Attendees as a
JOIN Registrations as r ON a.Attendee_id = r.Attendee_id
WHERE r.Event_id = 1;
END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE GETspeakers_with_specific_expertise()
BEGIN
SELECT Name
FROM Speakers
WHERE name = ('Suresh Babu') ;
END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE GETEventDetails()
BEGIN
CREATE VIEW EventDetails AS
SELECT e.Event_name, e.Event_date, v.venue_name
FROM Events as e
JOIN Venues as v ON e.Venue_iD = v.Venue_iD ;

SELECT * FROM EventDetails;
END $$
DELIMITER ;


call GETJOIN() ;
call GETJOIN1() ;
call GETwhere_use() ;
call GETUNION() ;
call GETAGGREGATE() ;
call GETLOGICAL() ;
call GETORDERBY_GROUPBY() ;
call GETLIKE_LIMIT_DISTINCT() ;
call GETHAVING_COUNT() ;
call GETSUB_QUERIES() ;
call GETUPDATE();
call GETRetrieve_all_events_with_venue_details();
call GETspecific_event();
call GETspeakers_with_specific_expertise();
call GETEventDetails();
