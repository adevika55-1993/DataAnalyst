 -- Daily Challenge - Day 28

create database hospital;

-- Write a SQL command to create a table named Patients with fields (PatientID, PatientName, Age, Gender, AdmissionDate).
create table patients ( PatientID int primary key, PatientName varchar(50), Age int, Gender varchar(10), AdmissionDate date);

-- Write a SQL command to add a new column DoctorAssigned VARCHAR(50) to the Patients table.
alter table patients add column DoctorAssigned varchar(50);

-- Write a SQL command to modify the column PatientName from VARCHAR(50) to VARCHAR(100).
alter table patients modify column PatientName varchar(100);

-- Write a SQL command to rename the table.
alter table patients rename Patient_Info;

-- Write SQL commands for TRUNCATE and DROP operations.
truncate table patient_info;
DROP TABLE patient_info;