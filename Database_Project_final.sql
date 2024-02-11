create database Bangladeshi_Scholars_Abroad
go
use Bangladeshi_Scholars_Abroad
create table student (
 Student_id int primary key ,
 full_name varchar(100) ,
 Gender varchar(100) ,
 Address varchar(100) ,
 Email varchar(100),
 Phone_No varchar(100),
 Passport_no varchar(100)
 )
 go
 create table Acamedic_profile(
 program_name varchar(100) primary key ,
 Year_accomplished  varchar(100) ,
 Grade varchar(100) 
 )
 go

 Create table Extra_curricular_activity(
   activity_id int primary key ,
   activity_name varchar(100),
   )
   go

   create table achieves_activity(
   Student_id int primary key ,
   activity_id int ,
   constraint act_fk1 foreign key (Student_id) REFERENCES [dbo].[Student],
   constraint act_fk2 foreign key(activity_id) REFERENCES [dbo].[Extra_curricular_activity]
   )
   go 

   create table International_exam(
   exam_id int primary key,  
   exam_name varchar(100),
   exam_year varchar(100) ,
   score  varchar(100)
   )
   go

   create table give_i_exam(
   Student_id int primary key,
   exam_id int ,
   constraint giv_fk1 foreign key (Student_id) REFERENCES [dbo].[Student],
   constraint giv_fk2 foreign key(exam_id) REFERENCES [dbo].[International_exam]
   )
   go

create table country (
country_name varchar(100) primary key ,
language varchar(100) ,
currency varchar(100) ,
time_zone varchar(100) ,
)
go

create table foreign_institution(
institution_id int primary key,
institution_name varchar(100),
program_of_study varchar(100),
admission_year varchar(100),
country_name varchar(100) ,
constraint ins_fk1 foreign key (country_name) REFERENCES [dbo].[country]
) 
go

create table scholarship(
scholarship_id int primary key,
Student_id int , 
scholarship_name varchar(100),
institution_id int ,
constraint sch_fk1 foreign key (Student_id)REFERENCES [dbo].[Student],
constraint sch_fk2 foreign key (institution_id)REFERENCES [dbo].[foreign_institution]
)
go
create table Abroad_journey(
country_name varchar(100) primary key ,
start_year varchar(100),
end_year varchar(100) ,
constraint jour_fk1 foreign key (country_name)REFERENCES [dbo].[country]
) 
go

create table departure (
Student_id int primary key ,
country_name varchar(100) ,
constraint dep_fk1 foreign key (country_name) REFERENCES [dbo].[country]
)
go 

insert into [dbo].[Student]
VALUES
    (1, 'Md Arafat Kabir', 'Male', '123 Gulshan Avenue, Dhaka', 'arafat@email.com', '123-456-7890', 'AB123456'),
    (2, 'Nishat Tasnim', 'Female', '763 Station Road, Sylhet', 'nishat@email.com', '987-654-3210', 'CD789012'),
    (3, 'Nazneen Nahar', 'Female', '011 GHI Avenue, Feni', 'nazneen.nahar@email.com', '555-123-4567', 'EF345678'),
    (4, 'Suriya Islam Afrin', 'Female', '155 Ghoshpara, Rajshahi', 'suriya.afrin@email.com', '777-888-9999', 'GH901234'),
    (5, 'Mujahid Hasan', 'Male', '768 Duramari, Thakurgaon', 'hasanmujahid@email.com', '111-222-3333', 'IJ567890'),
    (6, 'Mehedi Hasan', 'Male', '12 Hazipara, Sirajganj', 'mehedi238@email.com', '333-444-5555', 'KL123456'),
    (7, 'Foysal Hossain', 'Male', '54 Nabinagar Savar, Dhaka', 'foysal.hossain@email.com', '666-777-8888', 'MN234567'),
    (8, 'Soma Das', 'Female', '234 MNO Lane, Narayanganj', 'das.soma@email.com', '999-000-1111', 'OP345678'),
    (9, 'Sheikh Muhammad Ashik', 'Male', '393 Agrabad C/A, Chittagong', 'muhammadashik2@email.com', '222-333-4444', 'QR456789'),
    (10, 'Naimul Islam', 'Male', '686 Khilgaon, Dhaka', 'naimul@email.com', '444-555-6666', 'ST567890');

go

insert into [dbo].[Extra_curricular_activity]
VALUES
(1, 'Art Club'),
(2, 'Debate Team'),
(3, 'Drama Club'),
(4, 'Environmental Club'),
(5, 'Music Band'),
(6, 'Sports Team'),
(7, 'Student Council'),
(8, 'Coding Club'),
(9, 'Volunteer Program'),
(10, 'Yearbook Committee');

go

insert into [dbo].[International_exam]
VALUES
(1, 'TOEFL', 2022, 95.5),
(2, 'IELTS', 2021, 7.5),
(3, 'SAT', 2023, 1450),
(4, 'GRE', 2022, 320),
(5, 'GMAT', 2021, 680),
(6, 'ACT', 2023, 28),
(7, 'DELE', 2022, 85.0),
(8, 'HSK', 2021, 200),
(9, 'JLPT', 2023, 44),
(10, 'PTE Academic', 2022, 79.5);





